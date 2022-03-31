This is a repo of little tests and snippets which I wrote to test particular
Features of abi compatibility programs like libabigail.

# Tests
## libabigail consistency tests

To be able to throw away the binary and be able to use the ABIXML as
the representation of th ABI, it has to be an accurate representation
of the binary's ABI.  By comparing the file to the ABIXML generated
from itself, we can see if anything has changed. Libabigail has one
such identity test which has found many problems over the years.

```
$ abidw --abidiff
```

Any change represents a problem with the internal reprentation of the
ABI. A new element means that something has not been captured or
wasn't saved. A deleted element means that something new was found. A
change means that somewhere between the reading of the information and
the saving of it, something was not captured faithfully. Even harmless
changes while theoretically harmless do represent that the infomration
was not faithfully captured.

There are several scripts which run tests against all installed
binaries in a specified directory. They use flux to schedule these
tests and so flux must be running. Several of the tests require
substantial amounts of memory and so if overcommitting processors is
not reccomended unless the machine has a lot of memory. libabigail
cannot do much without DWARF information. So either the debuginfo
packages must be installed or they must be accessible through
debuginfod. To run these tests on fedora I do:
```
$ DEBUGINFOD_PROGRESS=1
$ DEBUGINFOD_URLS=https://debuginfod.fedoraproject.org
$ flux start -s 2
$ scripts/abidw-abidiff.sh /usr/lib64
```

This can also be run on other directories such as a spack
directory. Currently, this test is only run on actual files (not
symlinks) that match the "*.so.*".

When that test run is done, then all the failing cases can be
collected using:

```
$ scripts/abidw-gen-bts.sh
```

In most cases all the `*.out` files can be ignored and
deleted. `scripts/abidw-kinds-of-fails.sh` goes through the backtraces
and tries to sort them. Of course asserts and crashes are
important. Hopefully all of those can be resolved. Then any
consistency errors will need to be worked through for this test to
work.

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

The main() calls libcall which is in the underlinked libraries and has
the same API and ABI but the libraries call a function back in the
app and which has a different ABI therefore the libraries are not
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

## libabigail overlooks exceptions

Libabigail doesn't parse the LSDA pointed to by the GNU_EH_FRAME program header
and therefore doesn't note that the library throws a type which may be caught
beyond the library boundary. Therefore it is part of the ABI for the library.
Instead libabigail considers the type of the exception which is thrown to be a
private class which it doesn't bother comparing. Libabigail should point out
this difference.

```
$ abidiff ../tests/librttiexcep_v1.so ../tests/librttiexcep_v2.so
$ echo $?
0
$
```

Once it can pass that test then the abicompat-exception test will become more
relevant. We only need to ensure that types that are used by the application
are considered when doing an abicompat check.
