This is a repo of little tests and snippets which I wrote to test particular
Features of abi compatibility programs like libabigail.

# Tools
## swap-libs-audit

This is a very simple ld_audit library that looks for a environment
variable called SWAP_LIB_FILENAME that points to a file which has a
list of libraries that should be replaced. The file format is
extremely simple each line should have the name of a library and the
one that should replace it.

The point of this utility is to allow a user to actually test false
positives and false negatives and see what happens when you run them.

# Tests
## libabigail sees all undefined symbols
```
$ abicompat -u libunderlink1.so
__cxa_finalize@@GLIBC_2.2.5
```
is currently wrong. It should also list backcall just like nm does
```
$ nm libunderlink1.so | grep "U "
                U _Z8backcallPc
```
The problem is that underlinked symbols are not considered by libabigail.

## abicompat overlooks backcalls

the main() calls libcall which is in the underlinked libraries and has
the same API and ABI but the libraries call a function back in the
main app and which has a different ABI therefore the libraries are not
compatible and libabigail fails to detect this. In the case of
libunderlink1.C the function is `char *backcall( char *arg);` but in
libunderlink2.C the function is `int backcall( char *arg);` In this
case the only thing that was changed was the return value of the
function so that in C++ linkage mode the name of the function wouldn't
change due to mangling.

```
$ abicompat underlinktest libunderlink1.so libunderlink2.so
$ echo $?
0
$
```
The problem is that ABI compatibility needs to be verified both ways. Not
just calls from the application to the library but calls from the library back
to the main application.

### swap-underlink

Swapping the two underlink libraries demonstrations that the ABI
compatibility that abicompat professed is in fact a false positive.
It shows that the two libraries are in fact not ABI compatible due the
fact that their return value is not the same size. This causes the the
stack to become corrupted.