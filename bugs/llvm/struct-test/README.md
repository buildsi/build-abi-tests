# Breaking ABI

The following test cases will break ABI. First, here are a library
and executable to compile. Here is the executable [v.c](v.c), and
the library [libv.c](libv.c)

## Testing without Fix

Testing without the fix, we can compare the output for gcc and clang.

```bash
$ docker run -it -v $PWD:/data vanessa/llvm-project:latest bash

# Add compilers to the path
# export PATH=/opt/software/linux-ubuntu18.04-skylake/gcc-11.0.1/llvm-main-m22s4pslanvkggagt4kz3n4ae7precgl/bin/:$PATH
```

Just to know what we are working with:

```bsah
# gcc --version
gcc (Ubuntu 11-20210417-1ubuntu1) 11.0.1 20210417 (experimental) [master revision c1c86ab96c2:b6fb0ccbb48:8ae884c09fbba91e9cec391290ee4a2859e7ff41]
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

root@cbff1ddeab83:/code# clang --version
clang version 14.0.0 (https://github.com/llvm/llvm-project 05ea321f716390abda1632cca71dc9441662cf62)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /opt/software/linux-ubuntu18.04-skylake/gcc-11.0.1/llvm-main-m22s4pslanvkggagt4kz3n4ae7precgl/bin
```

### Build both with clang


This command will compile and save assembly.

```bash
$ cd /data
$ make
```

Running the "library":

```bash
# ./v
1 2 3 4 5 0x67
```
And view the assembly for the library:

```asm
libv.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 3ff0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d d1 2f 00 00 	lea    0x2fd1(%rip),%rdi        # 4028 <completed.0>
    1057:	48 8d 05 ca 2f 00 00 	lea    0x2fca(%rip),%rax        # 4028 <completed.0>
    105e:	48 39 f8             	cmp    %rdi,%rax
    1061:	74 15                	je     1078 <deregister_tm_clones+0x28>
    1063:	48 8b 05 7e 2f 00 00 	mov    0x2f7e(%rip),%rax        # 3fe8 <_ITM_deregisterTMCloneTable>
    106a:	48 85 c0             	test   %rax,%rax
    106d:	74 09                	je     1078 <deregister_tm_clones+0x28>
    106f:	ff e0                	jmp    *%rax
    1071:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1078:	c3                   	ret    
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d a1 2f 00 00 	lea    0x2fa1(%rip),%rdi        # 4028 <completed.0>
    1087:	48 8d 35 9a 2f 00 00 	lea    0x2f9a(%rip),%rsi        # 4028 <completed.0>
    108e:	48 29 fe             	sub    %rdi,%rsi
    1091:	48 89 f0             	mov    %rsi,%rax
    1094:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1098:	48 c1 f8 03          	sar    $0x3,%rax
    109c:	48 01 c6             	add    %rax,%rsi
    109f:	48 d1 fe             	sar    %rsi
    10a2:	74 14                	je     10b8 <register_tm_clones+0x38>
    10a4:	48 8b 05 4d 2f 00 00 	mov    0x2f4d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable>
    10ab:	48 85 c0             	test   %rax,%rax
    10ae:	74 08                	je     10b8 <register_tm_clones+0x38>
    10b0:	ff e0                	jmp    *%rax
    10b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <__do_global_dtors_aux>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	80 3d 5d 2f 00 00 00 	cmpb   $0x0,0x2f5d(%rip)        # 4028 <completed.0>
    10cb:	75 2b                	jne    10f8 <__do_global_dtors_aux+0x38>
    10cd:	55                   	push   %rbp
    10ce:	48 83 3d 0a 2f 00 00 	cmpq   $0x0,0x2f0a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    10d5:	00 
    10d6:	48 89 e5             	mov    %rsp,%rbp
    10d9:	74 0c                	je     10e7 <__do_global_dtors_aux+0x27>
    10db:	48 8b 3d 3e 2f 00 00 	mov    0x2f3e(%rip),%rdi        # 4020 <__dso_handle>
    10e2:	e8 59 ff ff ff       	call   1040 <__cxa_finalize@plt>
    10e7:	e8 64 ff ff ff       	call   1050 <deregister_tm_clones>
    10ec:	c6 05 35 2f 00 00 01 	movb   $0x1,0x2f35(%rip)        # 4028 <completed.0>
    10f3:	5d                   	pop    %rbp
    10f4:	c3                   	ret    
    10f5:	0f 1f 00             	nopl   (%rax)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <frame_dummy>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	e9 77 ff ff ff       	jmp    1080 <register_tm_clones>
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <_Z7bigcalllllll9bigstruct>:
    1110:	50                   	push   %rax
    1111:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    1116:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    111b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    1120:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    1125:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    112a:	48 8d 3d cf 0e 00 00 	lea    0xecf(%rip),%rdi        # 2000 <_fini+0xeb8>
    1131:	31 c0                	xor    %eax,%eax
    1133:	ff 74 24 40          	push   0x40(%rsp)
    1137:	ff 74 24 50          	push   0x50(%rsp)
    113b:	e8 f0 fe ff ff       	call   1030 <printf@plt>
    1140:	48 83 c4 10          	add    $0x10,%rsp
    1144:	58                   	pop    %rax
    1145:	c3                   	ret    

Disassembly of section .fini:

0000000000001148 <_fini>:
    1148:	f3 0f 1e fa          	endbr64 
    114c:	48 83 ec 08          	sub    $0x8,%rsp
    1150:	48 83 c4 08          	add    $0x8,%rsp
    1154:	c3   
```

And for the "executable" that uses it

```
0000000000401020 <_Z7bigcalllllll9bigstruct@plt-0x10>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <_Z7bigcalllllll9bigstruct@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 404018 <_Z7bigcalllllll9bigstruct>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401040 <_start>:
  401040:	f3 0f 1e fa          	endbr64 
  401044:	31 ed                	xor    %ebp,%ebp
  401046:	49 89 d1             	mov    %rdx,%r9
  401049:	5e                   	pop    %rsi
  40104a:	48 89 e2             	mov    %rsp,%rdx
  40104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401051:	50                   	push   %rax
  401052:	54                   	push   %rsp
  401053:	49 c7 c0 30 12 40 00 	mov    $0x401230,%r8
  40105a:	48 c7 c1 c0 11 40 00 	mov    $0x4011c0,%rcx
  401061:	48 c7 c7 30 11 40 00 	mov    $0x401130,%rdi
  401068:	ff 15 82 2f 00 00    	call   *0x2f82(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40106e:	f4                   	hlt    
  40106f:	90                   	nop

0000000000401070 <_dl_relocate_static_pie>:
  401070:	f3 0f 1e fa          	endbr64 
  401074:	c3                   	ret    
  401075:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40107c:	00 00 00 
  40107f:	90                   	nop

0000000000401080 <deregister_tm_clones>:
  401080:	b8 30 40 40 00       	mov    $0x404030,%eax
  401085:	48 3d 30 40 40 00    	cmp    $0x404030,%rax
  40108b:	74 13                	je     4010a0 <deregister_tm_clones+0x20>
  40108d:	b8 00 00 00 00       	mov    $0x0,%eax
  401092:	48 85 c0             	test   %rax,%rax
  401095:	74 09                	je     4010a0 <deregister_tm_clones+0x20>
  401097:	bf 30 40 40 00       	mov    $0x404030,%edi
  40109c:	ff e0                	jmp    *%rax
  40109e:	66 90                	xchg   %ax,%ax
  4010a0:	c3                   	ret    
  4010a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010a8:	00 00 00 00 
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010b0 <register_tm_clones>:
  4010b0:	be 30 40 40 00       	mov    $0x404030,%esi
  4010b5:	48 81 ee 30 40 40 00 	sub    $0x404030,%rsi
  4010bc:	48 89 f0             	mov    %rsi,%rax
  4010bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010c3:	48 c1 f8 03          	sar    $0x3,%rax
  4010c7:	48 01 c6             	add    %rax,%rsi
  4010ca:	48 d1 fe             	sar    %rsi
  4010cd:	74 11                	je     4010e0 <register_tm_clones+0x30>
  4010cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4010d4:	48 85 c0             	test   %rax,%rax
  4010d7:	74 07                	je     4010e0 <register_tm_clones+0x30>
  4010d9:	bf 30 40 40 00       	mov    $0x404030,%edi
  4010de:	ff e0                	jmp    *%rax
  4010e0:	c3                   	ret    
  4010e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010e8:	00 00 00 00 
  4010ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010f0 <__do_global_dtors_aux>:
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	80 3d 35 2f 00 00 00 	cmpb   $0x0,0x2f35(%rip)        # 404030 <__TMC_END__>
  4010fb:	75 13                	jne    401110 <__do_global_dtors_aux+0x20>
  4010fd:	55                   	push   %rbp
  4010fe:	48 89 e5             	mov    %rsp,%rbp
  401101:	e8 7a ff ff ff       	call   401080 <deregister_tm_clones>
  401106:	c6 05 23 2f 00 00 01 	movb   $0x1,0x2f23(%rip)        # 404030 <__TMC_END__>
  40110d:	5d                   	pop    %rbp
  40110e:	c3                   	ret    
  40110f:	90                   	nop
  401110:	c3                   	ret    
  401111:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401118:	00 00 00 00 
  40111c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401120 <frame_dummy>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	eb 8a                	jmp    4010b0 <register_tm_clones>
  401126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <main>:
  401130:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401137:	0f 28 05 d2 0e 00 00 	movaps 0xed2(%rip),%xmm0        # 402010 <_IO_stdin_used+0x10>
  40113e:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
  401143:	0f 28 05 d6 0e 00 00 	movaps 0xed6(%rip),%xmm0        # 402020 <_IO_stdin_used+0x20>
  40114a:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  40114f:	48 c7 44 24 60 05 00 	movq   $0x5,0x60(%rsp)
  401156:	00 00 
  401158:	48 c7 44 24 78 06 00 	movq   $0x6,0x78(%rsp)
  40115f:	00 00 
  401161:	48 c7 44 24 70 07 00 	movq   $0x7,0x70(%rsp)
  401168:	00 00 
  40116a:	0f 28 44 24 40       	movaps 0x40(%rsp),%xmm0
  40116f:	0f 28 4c 24 50       	movaps 0x50(%rsp),%xmm1
  401174:	0f 28 54 24 60       	movaps 0x60(%rsp),%xmm2
  401179:	0f 28 5c 24 70       	movaps 0x70(%rsp),%xmm3
  40117e:	0f 29 5c 24 30       	movaps %xmm3,0x30(%rsp)
  401183:	0f 29 54 24 20       	movaps %xmm2,0x20(%rsp)
  401188:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
  40118d:	0f 29 04 24          	movaps %xmm0,(%rsp)
  401191:	bf 01 00 00 00       	mov    $0x1,%edi
  401196:	be 02 00 00 00       	mov    $0x2,%esi
  40119b:	ba 03 00 00 00       	mov    $0x3,%edx
  4011a0:	b9 04 00 00 00       	mov    $0x4,%ecx
  4011a5:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4011ab:	e8 80 fe ff ff       	call   401030 <_Z7bigcalllllll9bigstruct@plt>
  4011b0:	31 c0                	xor    %eax,%eax
  4011b2:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  4011b9:	c3                   	ret    
  4011ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
```

## Testing with Fix

Now let's do the same procedure with the container with the "fix" to clang.

```bash
$ docker run -it -v $PWD:/data vanessa/llvm-project-fix:latest bash

# Add compilers to the path
# export PATH=/opt/spack/opt/spack/linux-ubuntu18.04-skylake/gcc-11.0.1/llvm-main-m22s4pslanvkggagt4kz3n4ae7precgl/bin:$PATH
```

Another sanity check

```bash
# clang --version
clang version 14.0.0 (https://github.com/llvm/llvm-project 05ea321f716390abda1632cca71dc9441662cf62)
Target: x86_64-unknown-linux-gnu
Thread model: posix
InstalledDir: /opt/spack/opt/spack/linux-ubuntu18.04-skylake/gcc-11.0.1/llvm-main-m22s4pslanvkggagt4kz3n4ae7precgl/bin

root@01dc579f46a0:/code# gcc --version
gcc (Ubuntu 11-20210417-1ubuntu1) 11.0.1 20210417 (experimental) [master revision c1c86ab96c2:b6fb0ccbb48:8ae884c09fbba91e9cec391290ee4a2859e7ff41]
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

### Build both with clang


```bash
$ cd /data
$ make
```

Running the library, I think this is the correct print (with 67)

```bash
# ./v
1 2 3 4 5 0x67
```

And the assembly for the library:

```asm
libv.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 e1 2f 00 00 	mov    0x2fe1(%rip),%rax        # 3ff0 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 4018 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <deregister_tm_clones>:
    1050:	48 8d 3d d1 2f 00 00 	lea    0x2fd1(%rip),%rdi        # 4028 <completed.0>
    1057:	48 8d 05 ca 2f 00 00 	lea    0x2fca(%rip),%rax        # 4028 <completed.0>
    105e:	48 39 f8             	cmp    %rdi,%rax
    1061:	74 15                	je     1078 <deregister_tm_clones+0x28>
    1063:	48 8b 05 7e 2f 00 00 	mov    0x2f7e(%rip),%rax        # 3fe8 <_ITM_deregisterTMCloneTable>
    106a:	48 85 c0             	test   %rax,%rax
    106d:	74 09                	je     1078 <deregister_tm_clones+0x28>
    106f:	ff e0                	jmp    *%rax
    1071:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1078:	c3                   	ret    
    1079:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001080 <register_tm_clones>:
    1080:	48 8d 3d a1 2f 00 00 	lea    0x2fa1(%rip),%rdi        # 4028 <completed.0>
    1087:	48 8d 35 9a 2f 00 00 	lea    0x2f9a(%rip),%rsi        # 4028 <completed.0>
    108e:	48 29 fe             	sub    %rdi,%rsi
    1091:	48 89 f0             	mov    %rsi,%rax
    1094:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1098:	48 c1 f8 03          	sar    $0x3,%rax
    109c:	48 01 c6             	add    %rax,%rsi
    109f:	48 d1 fe             	sar    %rsi
    10a2:	74 14                	je     10b8 <register_tm_clones+0x38>
    10a4:	48 8b 05 4d 2f 00 00 	mov    0x2f4d(%rip),%rax        # 3ff8 <_ITM_registerTMCloneTable>
    10ab:	48 85 c0             	test   %rax,%rax
    10ae:	74 08                	je     10b8 <register_tm_clones+0x38>
    10b0:	ff e0                	jmp    *%rax
    10b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <__do_global_dtors_aux>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	80 3d 5d 2f 00 00 00 	cmpb   $0x0,0x2f5d(%rip)        # 4028 <completed.0>
    10cb:	75 2b                	jne    10f8 <__do_global_dtors_aux+0x38>
    10cd:	55                   	push   %rbp
    10ce:	48 83 3d 0a 2f 00 00 	cmpq   $0x0,0x2f0a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    10d5:	00 
    10d6:	48 89 e5             	mov    %rsp,%rbp
    10d9:	74 0c                	je     10e7 <__do_global_dtors_aux+0x27>
    10db:	48 8b 3d 3e 2f 00 00 	mov    0x2f3e(%rip),%rdi        # 4020 <__dso_handle>
    10e2:	e8 59 ff ff ff       	call   1040 <__cxa_finalize@plt>
    10e7:	e8 64 ff ff ff       	call   1050 <deregister_tm_clones>
    10ec:	c6 05 35 2f 00 00 01 	movb   $0x1,0x2f35(%rip)        # 4028 <completed.0>
    10f3:	5d                   	pop    %rbp
    10f4:	c3                   	ret    
    10f5:	0f 1f 00             	nopl   (%rax)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <frame_dummy>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	e9 77 ff ff ff       	jmp    1080 <register_tm_clones>
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <_Z7bigcalllllll9bigstruct>:
    1110:	50                   	push   %rax
    1111:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    1116:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    111b:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    1120:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    1125:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    112a:	48 8d 3d cf 0e 00 00 	lea    0xecf(%rip),%rdi        # 2000 <_fini+0xeb8>
    1131:	31 c0                	xor    %eax,%eax
    1133:	ff 74 24 40          	push   0x40(%rsp)
    1137:	ff 74 24 50          	push   0x50(%rsp)
    113b:	e8 f0 fe ff ff       	call   1030 <printf@plt>
    1140:	48 83 c4 10          	add    $0x10,%rsp
    1144:	58                   	pop    %rax
    1145:	c3                   	ret    

Disassembly of section .fini:

0000000000001148 <_fini>:
    1148:	f3 0f 1e fa          	endbr64 
    114c:	48 83 ec 08          	sub    $0x8,%rsp
    1150:	48 83 c4 08          	add    $0x8,%rsp
    1154:	c3                   	ret 
```

And the "executable" that uses it:

```asm
0000000000401020 <_Z7bigcalllllll9bigstruct@plt-0x10>:
  401020:	ff 35 e2 2f 00 00    	push   0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	ff 25 e4 2f 00 00    	jmp    *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401030 <_Z7bigcalllllll9bigstruct@plt>:
  401030:	ff 25 e2 2f 00 00    	jmp    *0x2fe2(%rip)        # 404018 <_Z7bigcalllllll9bigstruct>
  401036:	68 00 00 00 00       	push   $0x0
  40103b:	e9 e0 ff ff ff       	jmp    401020 <_init+0x20>

Disassembly of section .text:

0000000000401040 <_start>:
  401040:	f3 0f 1e fa          	endbr64 
  401044:	31 ed                	xor    %ebp,%ebp
  401046:	49 89 d1             	mov    %rdx,%r9
  401049:	5e                   	pop    %rsi
  40104a:	48 89 e2             	mov    %rsp,%rdx
  40104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401051:	50                   	push   %rax
  401052:	54                   	push   %rsp
  401053:	49 c7 c0 30 12 40 00 	mov    $0x401230,%r8
  40105a:	48 c7 c1 c0 11 40 00 	mov    $0x4011c0,%rcx
  401061:	48 c7 c7 30 11 40 00 	mov    $0x401130,%rdi
  401068:	ff 15 82 2f 00 00    	call   *0x2f82(%rip)        # 403ff0 <__libc_start_main@GLIBC_2.2.5>
  40106e:	f4                   	hlt    
  40106f:	90                   	nop

0000000000401070 <_dl_relocate_static_pie>:
  401070:	f3 0f 1e fa          	endbr64 
  401074:	c3                   	ret    
  401075:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40107c:	00 00 00 
  40107f:	90                   	nop

0000000000401080 <deregister_tm_clones>:
  401080:	b8 30 40 40 00       	mov    $0x404030,%eax
  401085:	48 3d 30 40 40 00    	cmp    $0x404030,%rax
  40108b:	74 13                	je     4010a0 <deregister_tm_clones+0x20>
  40108d:	b8 00 00 00 00       	mov    $0x0,%eax
  401092:	48 85 c0             	test   %rax,%rax
  401095:	74 09                	je     4010a0 <deregister_tm_clones+0x20>
  401097:	bf 30 40 40 00       	mov    $0x404030,%edi
  40109c:	ff e0                	jmp    *%rax
  40109e:	66 90                	xchg   %ax,%ax
  4010a0:	c3                   	ret    
  4010a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010a8:	00 00 00 00 
  4010ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010b0 <register_tm_clones>:
  4010b0:	be 30 40 40 00       	mov    $0x404030,%esi
  4010b5:	48 81 ee 30 40 40 00 	sub    $0x404030,%rsi
  4010bc:	48 89 f0             	mov    %rsi,%rax
  4010bf:	48 c1 ee 3f          	shr    $0x3f,%rsi
  4010c3:	48 c1 f8 03          	sar    $0x3,%rax
  4010c7:	48 01 c6             	add    %rax,%rsi
  4010ca:	48 d1 fe             	sar    %rsi
  4010cd:	74 11                	je     4010e0 <register_tm_clones+0x30>
  4010cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4010d4:	48 85 c0             	test   %rax,%rax
  4010d7:	74 07                	je     4010e0 <register_tm_clones+0x30>
  4010d9:	bf 30 40 40 00       	mov    $0x404030,%edi
  4010de:	ff e0                	jmp    *%rax
  4010e0:	c3                   	ret    
  4010e1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  4010e8:	00 00 00 00 
  4010ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004010f0 <__do_global_dtors_aux>:
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	80 3d 35 2f 00 00 00 	cmpb   $0x0,0x2f35(%rip)        # 404030 <__TMC_END__>
  4010fb:	75 13                	jne    401110 <__do_global_dtors_aux+0x20>
  4010fd:	55                   	push   %rbp
  4010fe:	48 89 e5             	mov    %rsp,%rbp
  401101:	e8 7a ff ff ff       	call   401080 <deregister_tm_clones>
  401106:	c6 05 23 2f 00 00 01 	movb   $0x1,0x2f23(%rip)        # 404030 <__TMC_END__>
  40110d:	5d                   	pop    %rbp
  40110e:	c3                   	ret    
  40110f:	90                   	nop
  401110:	c3                   	ret    
  401111:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
  401118:	00 00 00 00 
  40111c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401120 <frame_dummy>:
  401120:	f3 0f 1e fa          	endbr64 
  401124:	eb 8a                	jmp    4010b0 <register_tm_clones>
  401126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40112d:	00 00 00 

0000000000401130 <main>:
  401130:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
  401137:	0f 28 05 d2 0e 00 00 	movaps 0xed2(%rip),%xmm0        # 402010 <_IO_stdin_used+0x10>
  40113e:	0f 29 44 24 40       	movaps %xmm0,0x40(%rsp)
  401143:	0f 28 05 d6 0e 00 00 	movaps 0xed6(%rip),%xmm0        # 402020 <_IO_stdin_used+0x20>
  40114a:	0f 29 44 24 50       	movaps %xmm0,0x50(%rsp)
  40114f:	48 c7 44 24 60 05 00 	movq   $0x5,0x60(%rsp)
  401156:	00 00 
  401158:	48 c7 44 24 78 06 00 	movq   $0x6,0x78(%rsp)
  40115f:	00 00 
  401161:	48 c7 44 24 70 07 00 	movq   $0x7,0x70(%rsp)
  401168:	00 00 
  40116a:	0f 28 44 24 40       	movaps 0x40(%rsp),%xmm0
  40116f:	0f 28 4c 24 50       	movaps 0x50(%rsp),%xmm1
  401174:	0f 28 54 24 60       	movaps 0x60(%rsp),%xmm2
  401179:	0f 28 5c 24 70       	movaps 0x70(%rsp),%xmm3
  40117e:	0f 29 5c 24 30       	movaps %xmm3,0x30(%rsp)
  401183:	0f 29 54 24 20       	movaps %xmm2,0x20(%rsp)
  401188:	0f 29 4c 24 10       	movaps %xmm1,0x10(%rsp)
  40118d:	0f 29 04 24          	movaps %xmm0,(%rsp)
  401191:	bf 01 00 00 00       	mov    $0x1,%edi
  401196:	be 02 00 00 00       	mov    $0x2,%esi
  40119b:	ba 03 00 00 00       	mov    $0x3,%edx
  4011a0:	b9 04 00 00 00       	mov    $0x4,%ecx
  4011a5:	41 b8 05 00 00 00    	mov    $0x5,%r8d
  4011ab:	e8 80 fe ff ff       	call   401030 <_Z7bigcalllllll9bigstruct@plt>
  4011b0:	31 c0                	xor    %eax,%eax
  4011b2:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
  4011b9:	c3                   	ret    
  4011ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
```

Question - if the library shows moving from rsp to xmm0 and the binary shows all moving from rsp - is 
that an ABI break?
