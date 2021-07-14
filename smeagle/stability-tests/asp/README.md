# Smeagle Asp Stability Tests

This is an equivalent version of the same stability tests, but written in ASP. 
This means that we start with facts (logic programs, or *.lp extension files)
instead of yaml.

## Usage

To make it easy to use clingo, you can use the container from autamus:

```bash
$ docker run -it -v $PWD/:/code ghcr.io/autamus/clingo bash
```

Where is clingo?

```bash
/# which clingo
/opt/view/bin/clingo
```

You can see the contents of the repository here in `/code`:

```bash
# ls
README.md  libmath-v1.so.lp  libmath-v2.so.lp  stability.lp
```

And run the program as follows:

```bash
root@b02571d443be:/code# clingo --out-ifs=\\n stability.lp libmath-v1.so.lp libmath-v2.so.lp
clingo version 5.5.0
Reading from stability.lp ...
Solving...
Answer: 1
is_direction("import")
is_register("%xmm0")
is_register("%xmm1")
is_register("%rdi")
is_register("%rsi")
is_symbol("_ZN11MathLibrary10Arithmetic8SubtractEdd")
is_symbol("_ZN11MathLibrary10Arithmetic3AddEii")
is_symbol("_ZN11MathLibrary10Arithmetic6DivideEdd")
is_symbol("_ZN11MathLibrary10Arithmetic8MultiplyEdd")
is_symbol("_ZN11MathLibrary10Arithmetic3AddEdd")
is_type("Float64")
is_type("Integer32")
imported_A("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm0")
imported_A("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm1")
imported_A("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm0")
imported_A("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm1")
imported_A("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm0")
imported_A("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm1")
imported_A("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm0")
imported_A("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm1")
imported_B("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm0")
imported_B("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm1")
imported_B("_ZN11MathLibrary10Arithmetic3AddEii","Integer32","%rdi")
imported_B("_ZN11MathLibrary10Arithmetic3AddEii","Integer32","%rsi")
imported_B("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm0")
imported_B("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm1")
imported_B("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm0")
imported_B("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm1")
missing_imports("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm0")
missing_imports("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm1")
is_a("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm0","import")
is_a("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm1","import")
is_a("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm0","import")
is_a("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm1","import")
is_a("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm0","import")
is_a("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm1","import")
is_a("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm0","import")
is_a("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm1","import")
is_b("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm0","import")
is_b("_ZN11MathLibrary10Arithmetic8SubtractEdd","Float64","%xmm1","import")
is_b("_ZN11MathLibrary10Arithmetic3AddEii","Integer32","%rdi","import")
is_b("_ZN11MathLibrary10Arithmetic3AddEii","Integer32","%rsi","import")
is_b("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm0","import")
is_b("_ZN11MathLibrary10Arithmetic6DivideEdd","Float64","%xmm1","import")
is_b("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm0","import")
is_b("_ZN11MathLibrary10Arithmetic8MultiplyEdd","Float64","%xmm1","import")
SATISFIABLE

Models       : 1
Calls        : 1
Time         : 0.002s (Solving: 0.00s 1st Model: 0.00s Unsat: 0.00s)
CPU Time     : 0.002s
```

The facts that we care about (for now) are the missing imports and exports:

```bash
missing_imports("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm0")
missing_imports("_ZN11MathLibrary10Arithmetic3AddEdd","Float64","%xmm1")
```
The model assumes that the metadata (symbol, type, register) must match.
