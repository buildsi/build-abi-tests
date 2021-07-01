# Exceptions

Now that we've seen that the assembly code has useful tidbits in [0-can-i-make-assembly](0-can-i-make-assembly),
let's use gdb to walk through this and see if we can figure out if exceptions have any sort
of naming standard.

## 1. Looking through original dinosaur program

If we compile an actual executable in [0-can-i-make-assembly](0-can-i-make-assembly), e.g.,

```bash
cd ./0-can-i-make-assembly
g++ -g -W -Wall -save-temps -o exception-program exception.cpp
```

We can then walk through the program with gdb and observe the following:

```bash
# start the debugger
$ gdb ./exception-program

# list line numbers (note that you likely need to remove optimizations for this to work!)
(gdb) list
23	}
24	
25	void catch_the_exception() {
26	    log(0);
27	    try {
28	        log(1);
29	        hello_dinosaur();
30	        throw_the_exception(true);
31	        log(2);
32	    } catch (const DinosaurException& e) { 
```

First let's set a breakpoint at throw_the_exception, shown above. We can do this with a line number OR the name of the function (or a `filename:<number>` which isn't relevant here because we only have one file.

```bash
(gdb) break throw_the_exception
Breakpoint 1 at 0x1269: file exception.cpp, line 10.
```

And then "r" to run!

```bash
(gdb) r
Starting program: /home/vanessa/Desktop/Code/build-abi-tests/exceptions/0-can-i-make-assembly/exception-program 
0
1
Hello Dinosaur!
Breakpoint 1, throw_the_exception (throwit=255) at exception.cpp:10
10	
```

Now we can use "disass" to diss the assembly (just kidding it means disassemble). I am going to 
comment a few lines to say what is going on.

```bash
Dump of assembler code for function throw_the_exception(bool):

# This looks like a common entrypoint to help make a jump to a valid address on an older machine.
=> 0x0000555555555269 <+0>:	endbr64 

# Push old base pointer onto stack to save for later
   0x000055555555526d <+4>:	push   %rbp

# Store the value of rsp into rbp
# I think rbp points to the base of the current stack frame
# rsp points to the top of the current stack frame
   0x000055555555526e <+5>:	mov    %rsp,%rbp

# Save rbx
   0x0000555555555271 <+8>:	push   %rbx

# Reserve some space on the stack?
   0x0000555555555272 <+9>:	sub    $0x18,%rsp

# Load something? Are these function params?
   0x0000555555555276 <+13>:	mov    %edi,%eax
   0x0000555555555278 <+15>:	mov    %al,-0x14(%rbp)

# Compare 0 to this address
   0x000055555555527b <+18>:	cmpb   $0x0,-0x14(%rbp)

# If above is 0 (NO exception) jump to +67
   0x000055555555527f <+22>:	je     0x5555555552ac <throw_the_exception(bool)+67>

# But if it's not true we keep going, and we are moving a constant of 1 into edi
# This is where we hypothesize the 1 is some kind of identifier for the exception, we
# are going to pass to cxa_allocation_exception
   0x0000555555555281 <+24>:	mov    $0x1,%edi
   0x0000555555555286 <+29>:	callq  0x5555555550f0 <__cxa_allocate_exception@plt>
   0x000055555555528b <+34>:	mov    %rax,%rbx
   0x000055555555528e <+37>:	mov    %rbx,%rdi
   0x0000555555555291 <+40>:	callq  0x55555555542c <DinosaurException::DinosaurException()>
   0x0000555555555296 <+45>:	lea    0x19f(%rip),%rdx        # 0x55555555543c <DinosaurException::~DinosaurException()>
   0x000055555555529d <+52>:	lea    0x2a9c(%rip),%rsi        # 0x555555557d40 <_ZTI17DinosaurException>
   0x00005555555552a4 <+59>:	mov    %rbx,%rdi
   0x00005555555552a7 <+62>:	callq  0x555555555160 <__cxa_throw@plt>
   0x00005555555552ac <+67>:	nop
--Type <RET> for more, q to quit, c to continue without paging--
   0x00005555555552ad <+68>:	add    $0x18,%rsp
   0x00005555555552b1 <+72>:	pop    %rbx
   0x00005555555552b2 <+73>:	pop    %rbp
   0x00005555555552b3 <+74>:	retq   
End of assembler dump.
```

Let's look at the [actual function](https://github.com/llvm-mirror/libcxxabi/blob/ce3db128f9e4d6d19d1cdbe39bb45fcc64a5adb0/src/cxa_exception.cpp#L178) and see the parameters that it accepts.

```cpp
//  Allocate a __cxa_exception object, and zero-fill it.
//  Reserve "thrown_size" bytes on the end for the user's exception
//  object. Zero-fill the object. If memory can't be allocated, call
//  std::terminate. Return a pointer to the memory to be used for the
//  user's exception object.
void *__cxa_allocate_exception(size_t thrown_size) throw() {
    size_t actual_size = cxa_exception_size_from_exception_thrown_size(thrown_size);

    // Allocate extra space before the __cxa_exception header to ensure the
    // start of the thrown object is sufficiently aligned.
    size_t header_offset = get_cxa_exception_offset();
    char *raw_buffer =
        (char *)__aligned_malloc_with_fallback(header_offset + actual_size);
    if (NULL == raw_buffer)
        std::terminate();
    __cxa_exception *exception_header =
        static_cast<__cxa_exception *>((void *)(raw_buffer + header_offset));
    ::memset(exception_header, 0, actual_size);
    return thrown_object_from_cxa_exception(exception_header);
}
```

Okay - so this looks like the size of the exception (which is not what we expected).
Let's return again to the assembly:

```cpp
   0x0000555555555291 <+40>:	callq  0x55555555542c <DinosaurException::DinosaurException()>
   0x0000555555555296 <+45>:	lea    0x19f(%rip),%rdx        # 0x55555555543c <DinosaurException::~DinosaurException()>
   0x000055555555529d <+52>:	lea    0x2a9c(%rip),%rsi        # 0x555555557d40 <_ZTI17DinosaurException>
   0x00005555555552a4 <+59>:	mov    %rbx,%rdi
   0x00005555555552a7 <+62>:	callq  0x555555555160 <__cxa_throw@plt>
   0x00005555555552ac <+67>:	nop
--Type <RET> for more, q to quit, c to continue without paging--
   0x00005555555552ad <+68>:	add    $0x18,%rsp
   0x00005555555552b1 <+72>:	pop    %rbx
   0x00005555555552b2 <+73>:	pop    %rbp
   0x00005555555552b3 <+74>:	retq   
End of assembler dump.
```

"lea" means "load effective address" so maybe these addresses are important?
Let's see what happens in `__cxa_throw`

```cpp
(gdb) break __cxa_throw
Breakpoint 3 at 0x7ffff7e77660
(gdb) c
Continuing.

Breakpoint 3, 0x00007ffff7e77660 in __cxa_throw () from /usr/lib/x86_64-linux-gnu/libstdc++.so.6
(gdb) disass
Dump of assembler code for function __cxa_throw:
=> 0x00007ffff7e77660 <+0>:	endbr64 
   0x00007ffff7e77664 <+4>:	push   %r13
   0x00007ffff7e77666 <+6>:	mov    %rdx,%r13
   0x00007ffff7e77669 <+9>:	push   %r12
   0x00007ffff7e7766b <+11>:	mov    %rsi,%r12
   0x00007ffff7e7766e <+14>:	push   %rbp
   0x00007ffff7e7766f <+15>:	mov    %rdi,%rbp
   0x00007ffff7e77672 <+18>:	nop
   0x00007ffff7e77673 <+19>:	callq  0x7ffff7e69a70 <__cxa_get_globals@plt>
   0x00007ffff7e77678 <+24>:	mov    %r13,%rdx
   0x00007ffff7e7767b <+27>:	mov    %r12,%rsi
   0x00007ffff7e7767e <+30>:	mov    %rbp,%rdi

# The reason we were looking at the constant 1 is because we see it again here.
   0x00007ffff7e77681 <+33>:	addl   $0x1,0x8(%rax)
   0x00007ffff7e77685 <+37>:	callq  0x7ffff7e69ae0 <__cxa_init_primary_exception@plt>
   0x00007ffff7e7768a <+42>:	movl   $0x1,(%rax)
   0x00007ffff7e77690 <+48>:	lea    0x60(%rax),%rbp
   0x00007ffff7e77694 <+52>:	mov    %rbp,%rdi
   0x00007ffff7e77697 <+55>:	callq  0x7ffff7e68bb0 <_Unwind_RaiseException@plt>
   0x00007ffff7e7769c <+60>:	mov    %rbp,%rdi
   0x00007ffff7e7769f <+63>:	callq  0x7ffff7e67690 <__cxa_begin_catch@plt>
   0x00007ffff7e776a4 <+68>:	callq  0x7ffff7e67180 <_ZSt9terminatev@plt>
```

So a simple exercise would be to add other kinds of exceptions, and then see
if the number stays the same (if it's a size) or if it changes (if it's an identifier).

This might be important?

```
Breakpoint 5, 0x00007ffff7e77610 in __cxa_init_primary_exception () from /usr/lib/x86_64-linux-gnu/libstdc++.so.6
(gdb) disass
Dump of assembler code for function __cxa_init_primary_exception:
=> 0x00007ffff7e77610 <+0>:	endbr64 
   0x00007ffff7e77614 <+4>:	push   %rbx
   0x00007ffff7e77615 <+5>:	mov    %rdi,%rbx
   0x00007ffff7e77618 <+8>:	movl   $0x0,-0x80(%rdi)
   0x00007ffff7e7761f <+15>:	mov    %rsi,-0x70(%rdi)
   0x00007ffff7e77623 <+19>:	mov    %rdx,-0x68(%rdi)
   0x00007ffff7e77627 <+23>:	callq  0x7ffff7e6ad50 <_ZSt14get_unexpectedv@plt>
   0x00007ffff7e7762c <+28>:	mov    %rax,-0x60(%rbx)
   0x00007ffff7e77630 <+32>:	callq  0x7ffff7e6a7f0 <_ZSt13get_terminatev@plt>
   0x00007ffff7e77635 <+37>:	mov    %rax,-0x58(%rbx)
   0x00007ffff7e77639 <+41>:	movabs $0x474e5543432b2b00,%rax
   0x00007ffff7e77643 <+51>:	mov    %rax,-0x20(%rbx)
   0x00007ffff7e77647 <+55>:	lea    -0x7e(%rip),%rax        # 0x7ffff7e775d0
   0x00007ffff7e7764e <+62>:	mov    %rax,-0x18(%rbx)
   0x00007ffff7e77652 <+66>:	lea    -0x80(%rbx),%rax
   0x00007ffff7e77656 <+70>:	pop    %rbx
   0x00007ffff7e77657 <+71>:	retq   
End of assembler dump.
```

It looks like it takes an object and type info [here](https://github.com/gcc-mirror/gcc/blob/58b735b70b03884052c80ac032df90eed7059f8d/libstdc%2B%2B-v3/libsupc%2B%2B/cxxabi_init_exception.h#L70).

If we add other exception types (here are two) it does look like the values increase?

```
Dump of assembler code for function catch_the_exception():
=> 0x000055555555531f <+0>:	endbr64 
   0x0000555555555323 <+4>:	push   %rbp
   0x0000555555555324 <+5>:	mov    %rsp,%rbp
   0x0000555555555327 <+8>:	push   %rbx
   0x0000555555555328 <+9>:	sub    $0x18,%rsp
   0x000055555555532c <+13>:	mov    $0x0,%edi
   0x0000555555555331 <+18>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555336 <+23>:	mov    $0x1,%edi
   0x000055555555533b <+28>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555340 <+33>:	callq  0x5555555552b4 <hello_dinosaur()>
   0x0000555555555345 <+38>:	mov    $0x1,%edi
   0x000055555555534a <+43>:	callq  0x555555555269 <throw_the_exception(bool)>
   0x000055555555534f <+48>:	mov    $0x2,%edi
   0x0000555555555354 <+53>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555359 <+58>:	mov    $0x5,%edi
   0x000055555555535e <+63>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555363 <+68>:	jmpq   0x5555555553e8 <catch_the_exception()+201>
   0x0000555555555368 <+73>:	endbr64 

# Here we again are comparing the constant 1 to what is in rdx
   0x000055555555536c <+77>:	cmp    $0x1,%rdx

# If true we jump to 97
   0x0000555555555370 <+81>:	je     0x555555555380 <catch_the_exception()+97>

# Compare 2 to rdx, if true jump to 126 (why is there no 126?)
   0x0000555555555372 <+83>:	cmp    $0x2,%rdx
   0x0000555555555376 <+87>:	je     0x55555555539d <catch_the_exception()+126>
   0x0000555555555378 <+89>:	mov    %rax,%rdi
   0x000055555555537b <+92>:	callq  0x555555555170 <_Unwind_Resume@plt>
   0x0000555555555380 <+97>:	mov    %rax,%rdi
   0x0000555555555383 <+100>:	callq  0x5555555550e0 <__cxa_begin_catch@plt>
   0x0000555555555388 <+105>:	mov    %rax,-0x18(%rbp)
   0x000055555555538c <+109>:	mov    $0x3,%edi
   0x0000555555555391 <+114>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555396 <+119>:	callq  0x555555555150 <__cxa_end_catch@plt>
```

And adding another exception type!

```
Dump of assembler code for function catch_the_exception():
=> 0x000055555555531f <+0>:	endbr64 
   0x0000555555555323 <+4>:	push   %rbp
   0x0000555555555324 <+5>:	mov    %rsp,%rbp
   0x0000555555555327 <+8>:	push   %rbx
   0x0000555555555328 <+9>:	sub    $0x28,%rsp
   0x000055555555532c <+13>:	mov    $0x0,%edi
   0x0000555555555331 <+18>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555336 <+23>:	mov    $0x1,%edi
   0x000055555555533b <+28>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555340 <+33>:	callq  0x5555555552b4 <hello_dinosaur()>
   0x0000555555555345 <+38>:	mov    $0x1,%edi
   0x000055555555534a <+43>:	callq  0x555555555269 <throw_the_exception(bool)>
   0x000055555555534f <+48>:	mov    $0x2,%edi
   0x0000555555555354 <+53>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555359 <+58>:	mov    $0x6,%edi
   0x000055555555535e <+63>:	callq  0x5555555552e7 <log(unsigned int)>
   0x0000555555555363 <+68>:	jmpq   0x55555555542b <catch_the_exception()+268>
   0x0000555555555368 <+73>:	endbr64 
# Now it looks like the first comparison has a value of 3?
   0x000055555555536c <+77>:	cmp    $0x3,%rdx
   0x0000555555555370 <+81>:	je     0x5555555553c6 <catch_the_exception()+167>

# Huh another value of three! But where are there FOUR references to catch the exception?
# The code only has three (for Dinosaur, Alligator, and Moose respectively)
   0x0000555555555372 <+83>:	cmp    $0x3,%rdx

# jg means "Jump if greater" so maybe this is an optimiziation to not check so many?
   0x0000555555555376 <+87>:	jg     0x555555555384 <catch_the_exception()+101>

# Now 1 looks like it's referencing AlligatorException
   0x0000555555555378 <+89>:	cmp    $0x1,%rdx
   0x000055555555537c <+93>:	je     0x55555555538c <catch_the_exception()+109>

# And 2 is referencing MooseException
   0x000055555555537e <+95>:	cmp    $0x2,%rdx
   0x0000555555555382 <+99>:	je     0x5555555553a9 <catch_the_exception()+138>
   0x0000555555555384 <+101>:	mov    %rax,%rdi
   0x0000555555555387 <+104>:	callq  0x555555555170 <_Unwind_Resume@plt>
   0x000055555555538c <+109>:	mov    %rax,%rdi
   0x000055555555538f <+112>:	callq  0x5555555550e0 <__cxa_begin_catch@plt>
```

From Ben, we can try these commands to see the exception type tables:

```
$ eu-readelf -l exception-animals | grep GNU_EH_FRAME
GNU_EH_FRAME   0x002074 0x0000000000002074 0x0000000000002074 0x000084 0x000084 R   0x4
```

Here is full output for the smaller program (with one DinosaurException)

```
$ eu-readelf --debug-dump=frame exception-program 

Call frame search table section [19] '.eh_frame_hdr':
 version:          1
 eh_frame_ptr_enc: 0x1b (sdata4 pcrel)
 fde_count_enc:    0x3 (udata4)
 table_enc:        0x3b (sdata4 datarel)
 eh_frame_ptr:     0x80 (offset: 0x20b8)
 fde_count:        15
 Table:
  0xffffefec (offset: 0x1020) -> 0xb4 fde=[    30]
  0xfffff09c (offset: 0x10d0) -> 0xdc fde=[    58]
  0xfffff0ac (offset: 0x10e0) -> 0xf4 fde=[    70]
  0xfffff14c (offset: 0x1180) -> 0x9c fde=[    18]
  0xfffff235 (offset: 0x1269) -> 0x14c fde=[    c8]
  0xfffff280 (offset: 0x12b4) -> 0x16c fde=[    e8]
  0xfffff2b3 (offset: 0x12e7) -> 0x18c fde=[   108]
  0xfffff2eb (offset: 0x131f) -> 0x1cc fde=[   148]
  0xfffff37e (offset: 0x13b2) -> 0x1f4 fde=[   170]
  0xfffff392 (offset: 0x13c6) -> 0x214 fde=[   190]
  0xfffff3df (offset: 0x1413) -> 0x234 fde=[   1b0]
  0xfffff3f8 (offset: 0x142c) -> 0x10c fde=[    88]
  0xfffff408 (offset: 0x143c) -> 0x12c fde=[    a8]
  0xfffff41c (offset: 0x1450) -> 0x254 fde=[   1d0]
  0xfffff48c (offset: 0x14c0) -> 0x29c fde=[   218]

Call frame information section [20] '.eh_frame' at offset 0x20b8:

 [     0] CIE length=20
   CIE_id:                   0
   version:                  1
   augmentation:             "zR"
   code_alignment_factor:    1
   data_alignment_factor:    -8
   return_address_register:  16
   Augmentation data:        0x1b (FDE address encoding: sdata4 pcrel)

   Program:
     def_cfa r7 (rsp) at offset 8
     offset r16 (rip) at cfa-8
     nop
     nop

 [    18] FDE length=20 cie=[     0]
   CIE_pointer:              28
   initial_location:         +0x0000000000001180 <_start> (offset: 0x1180)
   address_range:            0x2f (end offset: 0x11af)

   Program:
     advance_loc 4 to 0x1184
     undefined r16 (rip)
     nop
     nop
     nop
     nop

 [    30] FDE length=36 cie=[     0]
   CIE_pointer:              52
   initial_location:         +0x0000000000001020 (offset: 0x1020)
   address_range:            0xb0 (end offset: 0x10d0)

   Program:
     def_cfa_offset 16
     advance_loc 6 to 0x1026
     def_cfa_offset 24
     advance_loc 10 to 0x1030
     def_cfa_expression 11
          [ 0] breg7 8
          [ 2] breg16 0
          [ 4] lit15
          [ 5] and
          [ 6] lit10
          [ 7] ge
          [ 8] lit3
          [ 9] shl
          [10] plus
     nop
     nop
     nop
     nop

 [    58] FDE length=20 cie=[     0]
   CIE_pointer:              92
   initial_location:         +0x00000000000010d0 (offset: 0x10d0)
   address_range:            0x10 (end offset: 0x10e0)

   Program:
     nop
     nop
     nop
     nop
     nop
     nop
     nop

 [    70] FDE length=20 cie=[     0]
   CIE_pointer:              116
   initial_location:         +0x00000000000010e0 (offset: 0x10e0)
   address_range:            0xa0 (end offset: 0x1180)

   Program:
     nop
     nop
     nop
     nop
     nop
     nop
     nop

 [    88] FDE length=28 cie=[     0]
   CIE_pointer:              140
   initial_location:         +0x000000000000142c <_ZN17DinosaurExceptionC1Ev> (offset: 0x142c)
   address_range:            0xf (end offset: 0x143b)

   Program:
     advance_loc 5 to 0x1431
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x1434
     def_cfa_register r6 (rbp)
     advance_loc 6 to 0x143a
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [    a8] FDE length=28 cie=[     0]
   CIE_pointer:              172
   initial_location:         +0x000000000000143c <_ZN17DinosaurExceptionD1Ev> (offset: 0x143c)
   address_range:            0xf (end offset: 0x144b)

   Program:
     advance_loc 5 to 0x1441
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x1444
     def_cfa_register r6 (rbp)
     advance_loc 6 to 0x144a
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [    c8] FDE length=28 cie=[     0]
   CIE_pointer:              204
   initial_location:         +0x0000000000001269 <_Z19throw_the_exceptionb> (offset: 0x1269)
   address_range:            0x4b (end offset: 0x12b4)

   Program:
     advance_loc 5 to 0x126e
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x1271
     def_cfa_register r6 (rbp)
     advance_loc 5 to 0x1276
     offset r3 (rbx) at cfa-24
     advance_loc 61 to 0x12b3
     def_cfa r7 (rsp) at offset 8

 [    e8] FDE length=28 cie=[     0]
   CIE_pointer:              236
   initial_location:         +0x00000000000012b4 <_Z14hello_dinosaurv> (offset: 0x12b4)
   address_range:            0x33 (end offset: 0x12e7)

   Program:
     advance_loc 5 to 0x12b9
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x12bc
     def_cfa_register r6 (rbp)
     advance_loc 42 to 0x12e6
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [   108] FDE length=28 cie=[     0]
   CIE_pointer:              268
   initial_location:         +0x00000000000012e7 <_Z3logj> (offset: 0x12e7)
   address_range:            0x38 (end offset: 0x131f)

   Program:
     advance_loc 5 to 0x12ec
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x12ef
     def_cfa_register r6 (rbp)
     advance_loc 47 to 0x131e
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [   128] CIE length=28
   CIE_id:                   0
   version:                  1
   augmentation:             "zPLR"
   code_alignment_factor:    1
   data_alignment_factor:    -8
   return_address_register:  16
   Augmentation data:        0x9b 0x25 0x1e 0 0 (sdata4 7717)
                             0x1b (LSDA pointer encoding: sdata4 pcrel)
                             0x1b (FDE address encoding: sdata4 pcrel)

   Program:
     def_cfa r7 (rsp) at offset 8
     offset r16 (rip) at cfa-8
     nop
     nop

 [   148] FDE length=36 cie=[   128]
   CIE_pointer:              36
   initial_location:         +0x000000000000131f <_Z19catch_the_exceptionv> (offset: 0x131f)
   address_range:            0x93 (end offset: 0x13b2)
   Augmentation data:        LSDA pointer: 0xd7

   Program:
     advance_loc 5 to 0x1324
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x1327
     def_cfa_register r6 (rbp)
     advance_loc 5 to 0x132c
     offset r3 (rbx) at cfa-24
     advance_loc1 133 to 0x13b1
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [   170] FDE length=28 cie=[     0]
   CIE_pointer:              372
   initial_location:         +0x00000000000013b2 <main> (offset: 0x13b2)
   address_range:            0x14 (end offset: 0x13c6)

   Program:
     advance_loc 5 to 0x13b7
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x13ba
     def_cfa_register r6 (rbp)
     advance_loc 11 to 0x13c5
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [   190] FDE length=28 cie=[     0]
   CIE_pointer:              404
   initial_location:         +0x00000000000013c6 <_Z41__static_initialization_and_destruction_0ii> (offset: 0x13c6)
   address_range:            0x4d (end offset: 0x1413)

   Program:
     advance_loc 5 to 0x13cb
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x13ce
     def_cfa_register r6 (rbp)
     advance_loc1 68 to 0x1412
     def_cfa r7 (rsp) at offset 8
     nop
     nop

 [   1b0] FDE length=28 cie=[     0]
   CIE_pointer:              436
   initial_location:         +0x0000000000001413 <_GLOBAL__sub_I__Z19throw_the_exceptionb> (offset: 0x1413)
   address_range:            0x19 (end offset: 0x142c)

   Program:
     advance_loc 5 to 0x1418
     def_cfa_offset 16
     offset r6 (rbp) at cfa-16
     advance_loc 3 to 0x141b
     def_cfa_register r6 (rbp)
     advance_loc 16 to 0x142b
     def_cfa r7 (rsp) at offset 8
     nop
     nop
     nop

 [   1d0] FDE length=68 cie=[     0]
   CIE_pointer:              468
   initial_location:         +0x0000000000001450 <__libc_csu_init> (offset: 0x1450)
   address_range:            0x65 (end offset: 0x14b5)

   Program:
     advance_loc 6 to 0x1456
     def_cfa_offset 16
     offset r15 (r15) at cfa-16
     advance_loc 9 to 0x145f
     def_cfa_offset 24
     offset r14 (r14) at cfa-24
     advance_loc 5 to 0x1464
     def_cfa_offset 32
     offset r13 (r13) at cfa-32
     advance_loc 5 to 0x1469
     def_cfa_offset 40
     offset r12 (r12) at cfa-40
     advance_loc 4 to 0x146d
     def_cfa_offset 48
     offset r6 (rbp) at cfa-48
     advance_loc 8 to 0x1475
     def_cfa_offset 56
     offset r3 (rbx) at cfa-56
     advance_loc 7 to 0x147c
     def_cfa_offset 64
     advance_loc 46 to 0x14aa
     def_cfa_offset 56
     advance_loc 1 to 0x14ab
     def_cfa_offset 48
     advance_loc 1 to 0x14ac
     def_cfa_offset 40
     advance_loc 2 to 0x14ae
     def_cfa_offset 32
     advance_loc 2 to 0x14b0
     def_cfa_offset 24
     advance_loc 2 to 0x14b2
     def_cfa_offset 16
     advance_loc 2 to 0x14b4
     def_cfa_offset 8
     nop

 [   218] FDE length=16 cie=[     0]
   CIE_pointer:              540
   initial_location:         +0x00000000000014c0 <__libc_csu_fini> (offset: 0x14c0)
   address_range:            0x5 (end offset: 0x14c5)

   Program:
     nop
     nop
     nop

 [   22c] Zero terminator

Exception handling table section [21] '.gcc_except_table':
 LPStart encoding:    0xff (omit)
 TType encoding:      0x9b (sdata4 pcrel 80)
 TType base offset:   0x1d
 Call site encoding:  0x1 (uleb128)

 Call site table:
 [   0] Call site start:   0x12
        Call site length:  5
        Landing pad:       0
        Action:            0
 [   1] Call site start:   0x1c
        Call site length:  30
        Landing pad:       0x46
        Action:            1
 [   2] Call site start:   0x3f
        Call site length:  25
        Landing pad:       0
        Action:            0
 [   3] Call site start:   0x69
        Call site length:  5
        Landing pad:       0x75
        Action:            0
 [   4] Call site start:   0x87
        Call site length:  5
        Landing pad:       0
        Action:            0

 Action table:
 [   0] ar_filter:   1
        ar_disp:     0 
```

I guess there might be something we could parse here with dyninst? 

```
// gdb ./program
// list --> shows source code
// break line number |function | file:number
// r --> runs (add command line params here)
// c --> continue
// disass

// Dinosaur exception has two different layouts
// look at first param of __cxa_allocate_exception (that's the 1!)
// how does the throw pass to the catch block.
// gdb tutorial
```
