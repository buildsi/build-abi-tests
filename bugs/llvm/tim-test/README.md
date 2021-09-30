# Breaking ABI

The following test cases will break ABI. First, here are a library
and executable to compile. Here is the executable [test.c](test.c), and
the library [foo.c](foo.c)

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
$ make run
```

Running the "library", and here is the assembly from `test`:

```asm
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f4d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <getlongdouble@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fa0 <getlongdouble>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <getdouble@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fa8 <getdouble>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <getint@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fb0 <getint>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <getm512@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fb8 <getm512>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <getstructparm@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fc0 <getstructparm>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <func@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fc8 <func>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <getm256@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fd0 <getm256>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	4c 8d 54 24 08       	lea    r10,[rsp+0x8]
    1129:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    112d:	31 c0                	xor    eax,eax
    112f:	41 ff 72 f8          	push   QWORD PTR [r10-0x8]
    1133:	55                   	push   rbp
    1134:	48 89 e5             	mov    rbp,rsp
    1137:	41 57                	push   r15
    1139:	41 56                	push   r14
    113b:	41 55                	push   r13
    113d:	41 54                	push   r12
    113f:	41 52                	push   r10
    1141:	53                   	push   rbx
    1142:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1146:	e8 85 ff ff ff       	call   10d0 <getint@plt>
    114b:	41 89 c4             	mov    r12d,eax
    114e:	31 c0                	xor    eax,eax
    1150:	e8 7b ff ff ff       	call   10d0 <getint@plt>
    1155:	41 89 c5             	mov    r13d,eax
    1158:	31 c0                	xor    eax,eax
    115a:	e8 91 ff ff ff       	call   10f0 <getstructparm@plt>
    115f:	49 89 c6             	mov    r14,rax
    1162:	31 c0                	xor    eax,eax
    1164:	c5 fb 11 45 80       	vmovsd QWORD PTR [rbp-0x80],xmm0
    1169:	e8 62 ff ff ff       	call   10d0 <getint@plt>
    116e:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
    1171:	31 c0                	xor    eax,eax
    1173:	e8 38 ff ff ff       	call   10b0 <getlongdouble@plt>
    1178:	31 c0                	xor    eax,eax
    117a:	db 7d 90             	fstp   TBYTE PTR [rbp-0x70]
    117d:	e8 3e ff ff ff       	call   10c0 <getdouble@plt>
    1182:	31 c0                	xor    eax,eax
    1184:	c5 fb 11 45 a0       	vmovsd QWORD PTR [rbp-0x60],xmm0
    1189:	e8 32 ff ff ff       	call   10c0 <getdouble@plt>
    118e:	31 c0                	xor    eax,eax
    1190:	c5 fb 11 45 a8       	vmovsd QWORD PTR [rbp-0x58],xmm0
    1195:	e8 36 ff ff ff       	call   10d0 <getint@plt>
    119a:	89 c3                	mov    ebx,eax
    119c:	31 c0                	xor    eax,eax
    119e:	e8 6d 01 00 00       	call   1310 <getint_local_noinline>
    11a3:	41 89 c7             	mov    r15d,eax
    11a6:	31 c0                	xor    eax,eax
    11a8:	e8 63 ff ff ff       	call   1110 <getm256@plt>
    11ad:	31 c0                	xor    eax,eax
    11af:	c5 fc 29 45 b0       	vmovaps YMMWORD PTR [rbp-0x50],ymm0
    11b4:	c5 f8 77             	vzeroupper 
    11b7:	e8 24 ff ff ff       	call   10e0 <getm512@plt>
    11bc:	41 57                	push   r15
    11be:	db 6d 90             	fld    TBYTE PTR [rbp-0x70]
    11c1:	4c 89 f2             	mov    rdx,r14
    11c4:	53                   	push   rbx
    11c5:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
    11cb:	44 89 ee             	mov    esi,r13d
    11ce:	44 89 e7             	mov    edi,r12d
    11d1:	c5 fb 10 6d 80       	vmovsd xmm5,QWORD PTR [rbp-0x80]
    11d6:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
    11da:	b9 11 00 00 00       	mov    ecx,0x11
    11df:	41 b9 0b 00 00 00    	mov    r9d,0xb
    11e5:	c5 fb 10 65 a8       	vmovsd xmm4,QWORD PTR [rbp-0x58]
    11ea:	c5 fc 28 55 b0       	vmovaps ymm2,YMMWORD PTR [rbp-0x50]
    11ef:	c5 fb 10 4d a0       	vmovsd xmm1,QWORD PTR [rbp-0x60]
    11f4:	48 83 ec 10          	sub    rsp,0x10
    11f8:	c5 d3 10 c5          	vmovsd xmm0,xmm5,xmm5
    11fc:	db 3c 24             	fstp   TBYTE PTR [rsp]
    11ff:	e8 fc fe ff ff       	call   1100 <func@plt>
    1204:	48 83 c4 20          	add    rsp,0x20
    1208:	48 8d 65 d0          	lea    rsp,[rbp-0x30]
    120c:	31 c0                	xor    eax,eax
    120e:	5b                   	pop    rbx
    120f:	41 5a                	pop    r10
    1211:	41 5c                	pop    r12
    1213:	41 5d                	pop    r13
    1215:	41 5e                	pop    r14
    1217:	41 5f                	pop    r15
    1219:	5d                   	pop    rbp
    121a:	49 8d 62 f8          	lea    rsp,[r10-0x8]
    121e:	c3                   	ret    
    121f:	90                   	nop

0000000000001220 <_start>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	31 ed                	xor    ebp,ebp
    1226:	49 89 d1             	mov    r9,rdx
    1229:	5e                   	pop    rsi
    122a:	48 89 e2             	mov    rdx,rsp
    122d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1231:	50                   	push   rax
    1232:	54                   	push   rsp
    1233:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 1390 <__libc_csu_fini>
    123a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1320 <__libc_csu_init>
    1241:	48 8d 3d d8 fe ff ff 	lea    rdi,[rip+0xfffffffffffffed8]        # 1120 <main>
    1248:	ff 15 92 2d 00 00    	call   QWORD PTR [rip+0x2d92]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    124e:	f4                   	hlt    
    124f:	90                   	nop

0000000000001250 <deregister_tm_clones>:
    1250:	48 8d 3d b9 2d 00 00 	lea    rdi,[rip+0x2db9]        # 4010 <__TMC_END__>
    1257:	48 8d 05 b2 2d 00 00 	lea    rax,[rip+0x2db2]        # 4010 <__TMC_END__>
    125e:	48 39 f8             	cmp    rax,rdi
    1261:	74 15                	je     1278 <deregister_tm_clones+0x28>
    1263:	48 8b 05 6e 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d6e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    126a:	48 85 c0             	test   rax,rax
    126d:	74 09                	je     1278 <deregister_tm_clones+0x28>
    126f:	ff e0                	jmp    rax
    1271:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1278:	c3                   	ret    
    1279:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001280 <register_tm_clones>:
    1280:	48 8d 3d 89 2d 00 00 	lea    rdi,[rip+0x2d89]        # 4010 <__TMC_END__>
    1287:	48 8d 35 82 2d 00 00 	lea    rsi,[rip+0x2d82]        # 4010 <__TMC_END__>
    128e:	48 29 fe             	sub    rsi,rdi
    1291:	48 89 f0             	mov    rax,rsi
    1294:	48 c1 ee 3f          	shr    rsi,0x3f
    1298:	48 c1 f8 03          	sar    rax,0x3
    129c:	48 01 c6             	add    rsi,rax
    129f:	48 d1 fe             	sar    rsi,1
    12a2:	74 14                	je     12b8 <register_tm_clones+0x38>
    12a4:	48 8b 05 45 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d45]        # 3ff0 <_ITM_registerTMCloneTable>
    12ab:	48 85 c0             	test   rax,rax
    12ae:	74 08                	je     12b8 <register_tm_clones+0x38>
    12b0:	ff e0                	jmp    rax
    12b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    12b8:	c3                   	ret    
    12b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012c0 <__do_global_dtors_aux>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	80 3d 45 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d45],0x0        # 4010 <__TMC_END__>
    12cb:	75 2b                	jne    12f8 <__do_global_dtors_aux+0x38>
    12cd:	55                   	push   rbp
    12ce:	48 83 3d 22 2d 00 00 	cmp    QWORD PTR [rip+0x2d22],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d5:	00 
    12d6:	48 89 e5             	mov    rbp,rsp
    12d9:	74 0c                	je     12e7 <__do_global_dtors_aux+0x27>
    12db:	48 8b 3d 26 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d26]        # 4008 <__dso_handle>
    12e2:	e8 b9 fd ff ff       	call   10a0 <__cxa_finalize@plt>
    12e7:	e8 64 ff ff ff       	call   1250 <deregister_tm_clones>
    12ec:	c6 05 1d 2d 00 00 01 	mov    BYTE PTR [rip+0x2d1d],0x1        # 4010 <__TMC_END__>
    12f3:	5d                   	pop    rbp
    12f4:	c3                   	ret    
    12f5:	0f 1f 00             	nop    DWORD PTR [rax]
    12f8:	c3                   	ret    
    12f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	e9 77 ff ff ff       	jmp    1280 <register_tm_clones>
    1309:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001310 <getint_local_noinline>:
    1310:	b8 0d 00 00 00       	mov    eax,0xd
    1315:	c3                   	ret    
    1316:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    131d:	00 00 00 

0000000000001320 <__libc_csu_init>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	41 57                	push   r15
    1326:	4c 8d 3d 4b 2a 00 00 	lea    r15,[rip+0x2a4b]        # 3d78 <__frame_dummy_init_array_entry>
    132d:	41 56                	push   r14
    132f:	49 89 d6             	mov    r14,rdx
    1332:	41 55                	push   r13
    1334:	49 89 f5             	mov    r13,rsi
    1337:	41 54                	push   r12
    1339:	41 89 fc             	mov    r12d,edi
    133c:	55                   	push   rbp
    133d:	48 8d 2d 3c 2a 00 00 	lea    rbp,[rip+0x2a3c]        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1344:	53                   	push   rbx
    1345:	4c 29 fd             	sub    rbp,r15
    1348:	48 83 ec 08          	sub    rsp,0x8
    134c:	e8 af fc ff ff       	call   1000 <_init>
    1351:	48 c1 fd 03          	sar    rbp,0x3
    1355:	74 1f                	je     1376 <__libc_csu_init+0x56>
    1357:	31 db                	xor    ebx,ebx
    1359:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1360:	4c 89 f2             	mov    rdx,r14
    1363:	4c 89 ee             	mov    rsi,r13
    1366:	44 89 e7             	mov    edi,r12d
    1369:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    136d:	48 83 c3 01          	add    rbx,0x1
    1371:	48 39 dd             	cmp    rbp,rbx
    1374:	75 ea                	jne    1360 <__libc_csu_init+0x40>
    1376:	48 83 c4 08          	add    rsp,0x8
    137a:	5b                   	pop    rbx
    137b:	5d                   	pop    rbp
    137c:	41 5c                	pop    r12
    137e:	41 5d                	pop    r13
    1380:	41 5e                	pop    r14
    1382:	41 5f                	pop    r15
    1384:	c3                   	ret    
    1385:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    138c:	00 00 00 00 

0000000000001390 <__libc_csu_fini>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	c3                   	ret    

Disassembly of section .fini:

0000000000001398 <_fini>:
    1398:	f3 0f 1e fa          	endbr64 
    139c:	48 83 ec 08          	sub    rsp,0x8
    13a0:	48 83 c4 08          	add    rsp,0x8
    13a4:	c3                   	ret 
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

And the libfoo.so

```
libfoo.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 e9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe9]        # 3ff8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 e3 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fe3]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	f3 0f 1e fa          	endbr64 
    1034:	f2 ff 25 a5 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fa5]        # 3fe0 <__cxa_finalize>
    103b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001040 <deregister_tm_clones>:
    1040:	48 8d 3d d9 2f 00 00 	lea    rdi,[rip+0x2fd9]        # 4020 <completed.0>
    1047:	48 8d 05 d2 2f 00 00 	lea    rax,[rip+0x2fd2]        # 4020 <completed.0>
    104e:	48 39 f8             	cmp    rax,rdi
    1051:	74 15                	je     1068 <deregister_tm_clones+0x28>
    1053:	48 8b 05 96 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f96]        # 3ff0 <_ITM_deregisterTMCloneTable>
    105a:	48 85 c0             	test   rax,rax
    105d:	74 09                	je     1068 <deregister_tm_clones+0x28>
    105f:	ff e0                	jmp    rax
    1061:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1068:	c3                   	ret    
    1069:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001070 <register_tm_clones>:
    1070:	48 8d 3d a9 2f 00 00 	lea    rdi,[rip+0x2fa9]        # 4020 <completed.0>
    1077:	48 8d 35 a2 2f 00 00 	lea    rsi,[rip+0x2fa2]        # 4020 <completed.0>
    107e:	48 29 fe             	sub    rsi,rdi
    1081:	48 89 f0             	mov    rax,rsi
    1084:	48 c1 ee 3f          	shr    rsi,0x3f
    1088:	48 c1 f8 03          	sar    rax,0x3
    108c:	48 01 c6             	add    rsi,rax
    108f:	48 d1 fe             	sar    rsi,1
    1092:	74 14                	je     10a8 <register_tm_clones+0x38>
    1094:	48 8b 05 4d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f4d]        # 3fe8 <_ITM_registerTMCloneTable>
    109b:	48 85 c0             	test   rax,rax
    109e:	74 08                	je     10a8 <register_tm_clones+0x38>
    10a0:	ff e0                	jmp    rax
    10a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010b0 <__do_global_dtors_aux>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	80 3d 65 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f65],0x0        # 4020 <completed.0>
    10bb:	75 2b                	jne    10e8 <__do_global_dtors_aux+0x38>
    10bd:	55                   	push   rbp
    10be:	48 83 3d 1a 2f 00 00 	cmp    QWORD PTR [rip+0x2f1a],0x0        # 3fe0 <__cxa_finalize>
    10c5:	00 
    10c6:	48 89 e5             	mov    rbp,rsp
    10c9:	74 0c                	je     10d7 <__do_global_dtors_aux+0x27>
    10cb:	48 8b 3d 46 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f46]        # 4018 <__dso_handle>
    10d2:	e8 59 ff ff ff       	call   1030 <__cxa_finalize@plt>
    10d7:	e8 64 ff ff ff       	call   1040 <deregister_tm_clones>
    10dc:	c6 05 3d 2f 00 00 01 	mov    BYTE PTR [rip+0x2f3d],0x1        # 4020 <completed.0>
    10e3:	5d                   	pop    rbp
    10e4:	c3                   	ret    
    10e5:	0f 1f 00             	nop    DWORD PTR [rax]
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010f0 <frame_dummy>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	e9 77 ff ff ff       	jmp    1070 <register_tm_clones>
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <func>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	c3                   	ret    
    1105:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    110c:	00 00 00 00 

0000000000001110 <getint>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	b8 07 00 00 00       	mov    eax,0x7
    1119:	c3                   	ret    
    111a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001120 <getdouble>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	c5 fb 10 05 d4 0e 00 	vmovsd xmm0,QWORD PTR [rip+0xed4]        # 2000 <_fini+0xe80>
    112b:	00 
    112c:	c3                   	ret    
    112d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001130 <getlongdouble>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	d9 05 ce 0e 00 00    	fld    DWORD PTR [rip+0xece]        # 2008 <_fini+0xe88>
    113a:	c3                   	ret    
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001140 <getstructparm>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	c5 fb 10 05 b4 0e 00 	vmovsd xmm0,QWORD PTR [rip+0xeb4]        # 2000 <_fini+0xe80>
    114b:	00 
    114c:	b8 07 00 00 00       	mov    eax,0x7
    1151:	c3                   	ret    
    1152:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1159:	00 00 00 00 
    115d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001160 <getm256>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	c4 e2 7d 18 05 9b 0e 	vbroadcastss ymm0,DWORD PTR [rip+0xe9b]        # 2008 <_fini+0xe88>
    116b:	00 00 
    116d:	c3                   	ret    
    116e:	66 90                	xchg   ax,ax

0000000000001170 <getm512>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	62 f2 7d 48 18 05 8a 	vbroadcastss zmm0,DWORD PTR [rip+0xe8a]        # 2008 <_fini+0xe88>
    117b:	0e 00 00 
    117e:	c3                   	ret    

Disassembly of section .fini:

0000000000001180 <_fini>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	48 83 ec 08          	sub    rsp,0x8
    1188:	48 83 c4 08          	add    rsp,0x8
    118c:	c3                   	ret 
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
$ make run
```


And the assembly for the library:

```asm

test:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f4d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <getlongdouble@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fa0 <getlongdouble>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <getdouble@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fa8 <getdouble>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <getint@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fb0 <getint>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <getm512@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fb8 <getm512>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <getstructparm@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fc0 <getstructparm>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <func@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fc8 <func>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <getm256@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fd0 <getm256>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	4c 8d 54 24 08       	lea    r10,[rsp+0x8]
    1129:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    112d:	31 c0                	xor    eax,eax
    112f:	41 ff 72 f8          	push   QWORD PTR [r10-0x8]
    1133:	55                   	push   rbp
    1134:	48 89 e5             	mov    rbp,rsp
    1137:	41 57                	push   r15
    1139:	41 56                	push   r14
    113b:	41 55                	push   r13
    113d:	41 54                	push   r12
    113f:	41 52                	push   r10
    1141:	53                   	push   rbx
    1142:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1146:	e8 85 ff ff ff       	call   10d0 <getint@plt>
    114b:	41 89 c4             	mov    r12d,eax
    114e:	31 c0                	xor    eax,eax
    1150:	e8 7b ff ff ff       	call   10d0 <getint@plt>
    1155:	41 89 c5             	mov    r13d,eax
    1158:	31 c0                	xor    eax,eax
    115a:	e8 91 ff ff ff       	call   10f0 <getstructparm@plt>
    115f:	49 89 c6             	mov    r14,rax
    1162:	31 c0                	xor    eax,eax
    1164:	c5 fb 11 45 80       	vmovsd QWORD PTR [rbp-0x80],xmm0
    1169:	e8 62 ff ff ff       	call   10d0 <getint@plt>
    116e:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
    1171:	31 c0                	xor    eax,eax
    1173:	e8 38 ff ff ff       	call   10b0 <getlongdouble@plt>
    1178:	31 c0                	xor    eax,eax
    117a:	db 7d 90             	fstp   TBYTE PTR [rbp-0x70]
    117d:	e8 3e ff ff ff       	call   10c0 <getdouble@plt>
    1182:	31 c0                	xor    eax,eax
    1184:	c5 fb 11 45 a0       	vmovsd QWORD PTR [rbp-0x60],xmm0
    1189:	e8 32 ff ff ff       	call   10c0 <getdouble@plt>
    118e:	31 c0                	xor    eax,eax
    1190:	c5 fb 11 45 a8       	vmovsd QWORD PTR [rbp-0x58],xmm0
    1195:	e8 36 ff ff ff       	call   10d0 <getint@plt>
    119a:	89 c3                	mov    ebx,eax
    119c:	31 c0                	xor    eax,eax
    119e:	e8 6d 01 00 00       	call   1310 <getint_local_noinline>
    11a3:	41 89 c7             	mov    r15d,eax
    11a6:	31 c0                	xor    eax,eax
    11a8:	e8 63 ff ff ff       	call   1110 <getm256@plt>
    11ad:	31 c0                	xor    eax,eax
    11af:	c5 fc 29 45 b0       	vmovaps YMMWORD PTR [rbp-0x50],ymm0
    11b4:	c5 f8 77             	vzeroupper 
    11b7:	e8 24 ff ff ff       	call   10e0 <getm512@plt>
    11bc:	41 57                	push   r15
    11be:	db 6d 90             	fld    TBYTE PTR [rbp-0x70]
    11c1:	4c 89 f2             	mov    rdx,r14
    11c4:	53                   	push   rbx
    11c5:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
    11cb:	44 89 ee             	mov    esi,r13d
    11ce:	44 89 e7             	mov    edi,r12d
    11d1:	c5 fb 10 6d 80       	vmovsd xmm5,QWORD PTR [rbp-0x80]
    11d6:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
    11da:	b9 11 00 00 00       	mov    ecx,0x11
    11df:	41 b9 0b 00 00 00    	mov    r9d,0xb
    11e5:	c5 fb 10 65 a8       	vmovsd xmm4,QWORD PTR [rbp-0x58]
    11ea:	c5 fc 28 55 b0       	vmovaps ymm2,YMMWORD PTR [rbp-0x50]
    11ef:	c5 fb 10 4d a0       	vmovsd xmm1,QWORD PTR [rbp-0x60]
    11f4:	48 83 ec 10          	sub    rsp,0x10
    11f8:	c5 d3 10 c5          	vmovsd xmm0,xmm5,xmm5
    11fc:	db 3c 24             	fstp   TBYTE PTR [rsp]
    11ff:	e8 fc fe ff ff       	call   1100 <func@plt>
    1204:	48 83 c4 20          	add    rsp,0x20
    1208:	48 8d 65 d0          	lea    rsp,[rbp-0x30]
    120c:	31 c0                	xor    eax,eax
    120e:	5b                   	pop    rbx
    120f:	41 5a                	pop    r10
    1211:	41 5c                	pop    r12
    1213:	41 5d                	pop    r13
    1215:	41 5e                	pop    r14
    1217:	41 5f                	pop    r15
    1219:	5d                   	pop    rbp
    121a:	49 8d 62 f8          	lea    rsp,[r10-0x8]
    121e:	c3                   	ret    
    121f:	90                   	nop

0000000000001220 <_start>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	31 ed                	xor    ebp,ebp
    1226:	49 89 d1             	mov    r9,rdx
    1229:	5e                   	pop    rsi
    122a:	48 89 e2             	mov    rdx,rsp
    122d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1231:	50                   	push   rax
    1232:	54                   	push   rsp
    1233:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 1390 <__libc_csu_fini>
    123a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1320 <__libc_csu_init>
    1241:	48 8d 3d d8 fe ff ff 	lea    rdi,[rip+0xfffffffffffffed8]        # 1120 <main>
    1248:	ff 15 92 2d 00 00    	call   QWORD PTR [rip+0x2d92]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    124e:	f4                   	hlt    
    124f:	90                   	nop

0000000000001250 <deregister_tm_clones>:
    1250:	48 8d 3d b9 2d 00 00 	lea    rdi,[rip+0x2db9]        # 4010 <__TMC_END__>
    1257:	48 8d 05 b2 2d 00 00 	lea    rax,[rip+0x2db2]        # 4010 <__TMC_END__>
    125e:	48 39 f8             	cmp    rax,rdi
    1261:	74 15                	je     1278 <deregister_tm_clones+0x28>
    1263:	48 8b 05 6e 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d6e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    126a:	48 85 c0             	test   rax,rax
    126d:	74 09                	je     1278 <deregister_tm_clones+0x28>
    126f:	ff e0                	jmp    rax
    1271:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1278:	c3                   	ret    
    1279:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001280 <register_tm_clones>:
    1280:	48 8d 3d 89 2d 00 00 	lea    rdi,[rip+0x2d89]        # 4010 <__TMC_END__>
    1287:	48 8d 35 82 2d 00 00 	lea    rsi,[rip+0x2d82]        # 4010 <__TMC_END__>
    128e:	48 29 fe             	sub    rsi,rdi
    1291:	48 89 f0             	mov    rax,rsi
    1294:	48 c1 ee 3f          	shr    rsi,0x3f
    1298:	48 c1 f8 03          	sar    rax,0x3
    129c:	48 01 c6             	add    rsi,rax
    129f:	48 d1 fe             	sar    rsi,1
    12a2:	74 14                	je     12b8 <register_tm_clones+0x38>
    12a4:	48 8b 05 45 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d45]        # 3ff0 <_ITM_registerTMCloneTable>
    12ab:	48 85 c0             	test   rax,rax
    12ae:	74 08                	je     12b8 <register_tm_clones+0x38>
    12b0:	ff e0                	jmp    rax
    12b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    12b8:	c3                   	ret    
    12b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012c0 <__do_global_dtors_aux>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	80 3d 45 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d45],0x0        # 4010 <__TMC_END__>
    12cb:	75 2b                	jne    12f8 <__do_global_dtors_aux+0x38>
    12cd:	55                   	push   rbp
    12ce:	48 83 3d 22 2d 00 00 	cmp    QWORD PTR [rip+0x2d22],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d5:	00 
    12d6:	48 89 e5             	mov    rbp,rsp
    12d9:	74 0c                	je     12e7 <__do_global_dtors_aux+0x27>
    12db:	48 8b 3d 26 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d26]        # 4008 <__dso_handle>
    12e2:	e8 b9 fd ff ff       	call   10a0 <__cxa_finalize@plt>
    12e7:	e8 64 ff ff ff       	call   1250 <deregister_tm_clones>
    12ec:	c6 05 1d 2d 00 00 01 	mov    BYTE PTR [rip+0x2d1d],0x1        # 4010 <__TMC_END__>
    12f3:	5d                   	pop    rbp
    12f4:	c3                   	ret    
    12f5:	0f 1f 00             	nop    DWORD PTR [rax]
    12f8:	c3                   	ret    
    12f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	e9 77 ff ff ff       	jmp    1280 <register_tm_clones>
    1309:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001310 <getint_local_noinline>:
    1310:	b8 0d 00 00 00       	mov    eax,0xd
    1315:	c3                   	ret    
    1316:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    131d:	00 00 00 

0000000000001320 <__libc_csu_init>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	41 57                	push   r15
    1326:	4c 8d 3d 4b 2a 00 00 	lea    r15,[rip+0x2a4b]        # 3d78 <__frame_dummy_init_array_entry>
    132d:	41 56                	push   r14
    132f:	49 89 d6             	mov    r14,rdx
    1332:	41 55                	push   r13
    1334:	49 89 f5             	mov    r13,rsi
    1337:	41 54                	push   r12
    1339:	41 89 fc             	mov    r12d,edi
    133c:	55                   	push   rbp
    133d:	48 8d 2d 3c 2a 00 00 	lea    rbp,[rip+0x2a3c]        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1344:	53                   	push   rbx
    1345:	4c 29 fd             	sub    rbp,r15
    1348:	48 83 ec 08          	sub    rsp,0x8
    134c:	e8 af fc ff ff       	call   1000 <_init>
    1351:	48 c1 fd 03          	sar    rbp,0x3
    1355:	74 1f                	je     1376 <__libc_csu_init+0x56>
    1357:	31 db                	xor    ebx,ebx
    1359:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1360:	4c 89 f2             	mov    rdx,r14
    1363:	4c 89 ee             	mov    rsi,r13
    1366:	44 89 e7             	mov    edi,r12d
    1369:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    136d:	48 83 c3 01          	add    rbx,0x1
    1371:	48 39 dd             	cmp    rbp,rbx
    1374:	75 ea                	jne    1360 <__libc_csu_init+0x40>
    1376:	48 83 c4 08          	add    rsp,0x8
    137a:	5b                   	pop    rbx
    137b:	5d                   	pop    rbp
    137c:	41 5c                	pop    r12
    137e:	41 5d                	pop    r13
    1380:	41 5e                	pop    r14
    1382:	41 5f                	pop    r15
    1384:	c3                   	ret    
    1385:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    138c:	00 00 00 00 

0000000000001390 <__libc_csu_fini>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	c3                   	ret    

Disassembly of section .fini:

0000000000001398 <_fini>:
    1398:	f3 0f 1e fa          	endbr64 
    139c:	48 83 ec 08          	sub    rsp,0x8
    13a0:	48 83 c4 08          	add    rsp,0x8
    13a4:	c3                   	ret    
root@9662adefc3bd:/data# make run
objdump -d -M intel test > obj.out
root@9662adefc3bd:/data# cat obj.out 

test:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f4d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <getlongdouble@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fa0 <getlongdouble>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <getdouble@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fa8 <getdouble>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <getint@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fb0 <getint>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <getm512@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fb8 <getm512>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <getstructparm@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fc0 <getstructparm>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <func@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fc8 <func>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <getm256@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fd0 <getm256>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	4c 8d 54 24 08       	lea    r10,[rsp+0x8]
    1129:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    112d:	31 c0                	xor    eax,eax
    112f:	41 ff 72 f8          	push   QWORD PTR [r10-0x8]
    1133:	55                   	push   rbp
    1134:	48 89 e5             	mov    rbp,rsp
    1137:	41 57                	push   r15
    1139:	41 56                	push   r14
    113b:	41 55                	push   r13
    113d:	41 54                	push   r12
    113f:	41 52                	push   r10
    1141:	53                   	push   rbx
    1142:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1146:	e8 85 ff ff ff       	call   10d0 <getint@plt>
    114b:	41 89 c4             	mov    r12d,eax
    114e:	31 c0                	xor    eax,eax
    1150:	e8 7b ff ff ff       	call   10d0 <getint@plt>
    1155:	41 89 c5             	mov    r13d,eax
    1158:	31 c0                	xor    eax,eax
    115a:	e8 91 ff ff ff       	call   10f0 <getstructparm@plt>
    115f:	49 89 c6             	mov    r14,rax
    1162:	31 c0                	xor    eax,eax
    1164:	c5 fb 11 45 80       	vmovsd QWORD PTR [rbp-0x80],xmm0
    1169:	e8 62 ff ff ff       	call   10d0 <getint@plt>
    116e:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
    1171:	31 c0                	xor    eax,eax
    1173:	e8 38 ff ff ff       	call   10b0 <getlongdouble@plt>
    1178:	31 c0                	xor    eax,eax
    117a:	db 7d 90             	fstp   TBYTE PTR [rbp-0x70]
    117d:	e8 3e ff ff ff       	call   10c0 <getdouble@plt>
    1182:	31 c0                	xor    eax,eax
    1184:	c5 fb 11 45 a0       	vmovsd QWORD PTR [rbp-0x60],xmm0
    1189:	e8 32 ff ff ff       	call   10c0 <getdouble@plt>
    118e:	31 c0                	xor    eax,eax
    1190:	c5 fb 11 45 a8       	vmovsd QWORD PTR [rbp-0x58],xmm0
    1195:	e8 36 ff ff ff       	call   10d0 <getint@plt>
    119a:	89 c3                	mov    ebx,eax
    119c:	31 c0                	xor    eax,eax
    119e:	e8 6d 01 00 00       	call   1310 <getint_local_noinline>
    11a3:	41 89 c7             	mov    r15d,eax
    11a6:	31 c0                	xor    eax,eax
    11a8:	e8 63 ff ff ff       	call   1110 <getm256@plt>
    11ad:	31 c0                	xor    eax,eax
    11af:	c5 fc 29 45 b0       	vmovaps YMMWORD PTR [rbp-0x50],ymm0
    11b4:	c5 f8 77             	vzeroupper 
    11b7:	e8 24 ff ff ff       	call   10e0 <getm512@plt>
    11bc:	41 57                	push   r15
    11be:	db 6d 90             	fld    TBYTE PTR [rbp-0x70]
    11c1:	4c 89 f2             	mov    rdx,r14
    11c4:	53                   	push   rbx
    11c5:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
    11cb:	44 89 ee             	mov    esi,r13d
    11ce:	44 89 e7             	mov    edi,r12d
    11d1:	c5 fb 10 6d 80       	vmovsd xmm5,QWORD PTR [rbp-0x80]
    11d6:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
    11da:	b9 11 00 00 00       	mov    ecx,0x11
    11df:	41 b9 0b 00 00 00    	mov    r9d,0xb
    11e5:	c5 fb 10 65 a8       	vmovsd xmm4,QWORD PTR [rbp-0x58]
    11ea:	c5 fc 28 55 b0       	vmovaps ymm2,YMMWORD PTR [rbp-0x50]
    11ef:	c5 fb 10 4d a0       	vmovsd xmm1,QWORD PTR [rbp-0x60]
    11f4:	48 83 ec 10          	sub    rsp,0x10
    11f8:	c5 d3 10 c5          	vmovsd xmm0,xmm5,xmm5
    11fc:	db 3c 24             	fstp   TBYTE PTR [rsp]
    11ff:	e8 fc fe ff ff       	call   1100 <func@plt>
    1204:	48 83 c4 20          	add    rsp,0x20
    1208:	48 8d 65 d0          	lea    rsp,[rbp-0x30]
    120c:	31 c0                	xor    eax,eax
    120e:	5b                   	pop    rbx
    120f:	41 5a                	pop    r10
    1211:	41 5c                	pop    r12
    1213:	41 5d                	pop    r13
    1215:	41 5e                	pop    r14
    1217:	41 5f                	pop    r15
    1219:	5d                   	pop    rbp
    121a:	49 8d 62 f8          	lea    rsp,[r10-0x8]
    121e:	c3                   	ret    
    121f:	90                   	nop

0000000000001220 <_start>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	31 ed                	xor    ebp,ebp
    1226:	49 89 d1             	mov    r9,rdx
    1229:	5e                   	pop    rsi
    122a:	48 89 e2             	mov    rdx,rsp
    122d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1231:	50                   	push   rax
    1232:	54                   	push   rsp
    1233:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 1390 <__libc_csu_fini>
    123a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1320 <__libc_csu_init>
    1241:	48 8d 3d d8 fe ff ff 	lea    rdi,[rip+0xfffffffffffffed8]        # 1120 <main>
    1248:	ff 15 92 2d 00 00    	call   QWORD PTR [rip+0x2d92]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    124e:	f4                   	hlt    
    124f:	90                   	nop

0000000000001250 <deregister_tm_clones>:
    1250:	48 8d 3d b9 2d 00 00 	lea    rdi,[rip+0x2db9]        # 4010 <__TMC_END__>
    1257:	48 8d 05 b2 2d 00 00 	lea    rax,[rip+0x2db2]        # 4010 <__TMC_END__>
    125e:	48 39 f8             	cmp    rax,rdi
    1261:	74 15                	je     1278 <deregister_tm_clones+0x28>
    1263:	48 8b 05 6e 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d6e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    126a:	48 85 c0             	test   rax,rax
    126d:	74 09                	je     1278 <deregister_tm_clones+0x28>
    126f:	ff e0                	jmp    rax
    1271:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1278:	c3                   	ret    
    1279:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001280 <register_tm_clones>:
    1280:	48 8d 3d 89 2d 00 00 	lea    rdi,[rip+0x2d89]        # 4010 <__TMC_END__>
    1287:	48 8d 35 82 2d 00 00 	lea    rsi,[rip+0x2d82]        # 4010 <__TMC_END__>
    128e:	48 29 fe             	sub    rsi,rdi
    1291:	48 89 f0             	mov    rax,rsi
    1294:	48 c1 ee 3f          	shr    rsi,0x3f
    1298:	48 c1 f8 03          	sar    rax,0x3
    129c:	48 01 c6             	add    rsi,rax
    129f:	48 d1 fe             	sar    rsi,1
    12a2:	74 14                	je     12b8 <register_tm_clones+0x38>
    12a4:	48 8b 05 45 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d45]        # 3ff0 <_ITM_registerTMCloneTable>
    12ab:	48 85 c0             	test   rax,rax
    12ae:	74 08                	je     12b8 <register_tm_clones+0x38>
    12b0:	ff e0                	jmp    rax
    12b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    12b8:	c3                   	ret    
    12b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012c0 <__do_global_dtors_aux>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	80 3d 45 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d45],0x0        # 4010 <__TMC_END__>
    12cb:	75 2b                	jne    12f8 <__do_global_dtors_aux+0x38>
    12cd:	55                   	push   rbp
    12ce:	48 83 3d 22 2d 00 00 	cmp    QWORD PTR [rip+0x2d22],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d5:	00 
    12d6:	48 89 e5             	mov    rbp,rsp
    12d9:	74 0c                	je     12e7 <__do_global_dtors_aux+0x27>
    12db:	48 8b 3d 26 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d26]        # 4008 <__dso_handle>
    12e2:	e8 b9 fd ff ff       	call   10a0 <__cxa_finalize@plt>
    12e7:	e8 64 ff ff ff       	call   1250 <deregister_tm_clones>
    12ec:	c6 05 1d 2d 00 00 01 	mov    BYTE PTR [rip+0x2d1d],0x1        # 4010 <__TMC_END__>
    12f3:	5d                   	pop    rbp
    12f4:	c3                   	ret    
    12f5:	0f 1f 00             	nop    DWORD PTR [rax]
    12f8:	c3                   	ret    
    12f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	e9 77 ff ff ff       	jmp    1280 <register_tm_clones>
    1309:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001310 <getint_local_noinline>:
    1310:	b8 0d 00 00 00       	mov    eax,0xd
    1315:	c3                   	ret    
    1316:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    131d:	00 00 00 

0000000000001320 <__libc_csu_init>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	41 57                	push   r15
    1326:	4c 8d 3d 4b 2a 00 00 	lea    r15,[rip+0x2a4b]        # 3d78 <__frame_dummy_init_array_entry>
    132d:	41 56                	push   r14
    132f:	49 89 d6             	mov    r14,rdx
    1332:	41 55                	push   r13
    1334:	49 89 f5             	mov    r13,rsi
    1337:	41 54                	push   r12
    1339:	41 89 fc             	mov    r12d,edi
    133c:	55                   	push   rbp
    133d:	48 8d 2d 3c 2a 00 00 	lea    rbp,[rip+0x2a3c]        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1344:	53                   	push   rbx
    1345:	4c 29 fd             	sub    rbp,r15
    1348:	48 83 ec 08          	sub    rsp,0x8
    134c:	e8 af fc ff ff       	call   1000 <_init>
    1351:	48 c1 fd 03          	sar    rbp,0x3
    1355:	74 1f                	je     1376 <__libc_csu_init+0x56>
    1357:	31 db                	xor    ebx,ebx
    1359:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1360:	4c 89 f2             	mov    rdx,r14
    1363:	4c 89 ee             	mov    rsi,r13
    1366:	44 89 e7             	mov    edi,r12d
    1369:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    136d:	48 83 c3 01          	add    rbx,0x1
    1371:	48 39 dd             	cmp    rbp,rbx
    1374:	75 ea                	jne    1360 <__libc_csu_init+0x40>
    1376:	48 83 c4 08          	add    rsp,0x8
    137a:	5b                   	pop    rbx
    137b:	5d                   	pop    rbp
    137c:	41 5c                	pop    r12
    137e:	41 5d                	pop    r13
    1380:	41 5e                	pop    r14
    1382:	41 5f                	pop    r15
    1384:	c3                   	ret    
    1385:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    138c:	00 00 00 00 

0000000000001390 <__libc_csu_fini>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	c3                   	ret    

Disassembly of section .fini:

0000000000001398 <_fini>:
    1398:	f3 0f 1e fa          	endbr64 
    139c:	48 83 ec 08          	sub    rsp,0x8
    13a0:	48 83 c4 08          	add    rsp,0x8
    13a4:	c3  
```

And for libfoo.so

```
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 6a 2f 00 00    	push   QWORD PTR [rip+0x2f6a]        # 3f90 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 6b 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f6b]        # 3f98 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop

Disassembly of section .plt.got:

00000000000010a0 <__cxa_finalize@plt>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	f2 ff 25 4d 2f 00 00 	bnd jmp QWORD PTR [rip+0x2f4d]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000010b0 <getlongdouble@plt>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	f2 ff 25 e5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ee5]        # 3fa0 <getlongdouble>
    10bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010c0 <getdouble@plt>:
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	f2 ff 25 dd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2edd]        # 3fa8 <getdouble>
    10cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010d0 <getint@plt>:
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	f2 ff 25 d5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ed5]        # 3fb0 <getint>
    10db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010e0 <getm512@plt>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	f2 ff 25 cd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ecd]        # 3fb8 <getm512>
    10eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000010f0 <getstructparm@plt>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	f2 ff 25 c5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec5]        # 3fc0 <getstructparm>
    10fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001100 <func@plt>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	f2 ff 25 bd 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ebd]        # 3fc8 <func>
    110b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001110 <getm256@plt>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	f2 ff 25 b5 2e 00 00 	bnd jmp QWORD PTR [rip+0x2eb5]        # 3fd0 <getm256>
    111b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001120 <main>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	4c 8d 54 24 08       	lea    r10,[rsp+0x8]
    1129:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
    112d:	31 c0                	xor    eax,eax
    112f:	41 ff 72 f8          	push   QWORD PTR [r10-0x8]
    1133:	55                   	push   rbp
    1134:	48 89 e5             	mov    rbp,rsp
    1137:	41 57                	push   r15
    1139:	41 56                	push   r14
    113b:	41 55                	push   r13
    113d:	41 54                	push   r12
    113f:	41 52                	push   r10
    1141:	53                   	push   rbx
    1142:	48 83 c4 80          	add    rsp,0xffffffffffffff80
    1146:	e8 85 ff ff ff       	call   10d0 <getint@plt>
    114b:	41 89 c4             	mov    r12d,eax
    114e:	31 c0                	xor    eax,eax
    1150:	e8 7b ff ff ff       	call   10d0 <getint@plt>
    1155:	41 89 c5             	mov    r13d,eax
    1158:	31 c0                	xor    eax,eax
    115a:	e8 91 ff ff ff       	call   10f0 <getstructparm@plt>
    115f:	49 89 c6             	mov    r14,rax
    1162:	31 c0                	xor    eax,eax
    1164:	c5 fb 11 45 80       	vmovsd QWORD PTR [rbp-0x80],xmm0
    1169:	e8 62 ff ff ff       	call   10d0 <getint@plt>
    116e:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
    1171:	31 c0                	xor    eax,eax
    1173:	e8 38 ff ff ff       	call   10b0 <getlongdouble@plt>
    1178:	31 c0                	xor    eax,eax
    117a:	db 7d 90             	fstp   TBYTE PTR [rbp-0x70]
    117d:	e8 3e ff ff ff       	call   10c0 <getdouble@plt>
    1182:	31 c0                	xor    eax,eax
    1184:	c5 fb 11 45 a0       	vmovsd QWORD PTR [rbp-0x60],xmm0
    1189:	e8 32 ff ff ff       	call   10c0 <getdouble@plt>
    118e:	31 c0                	xor    eax,eax
    1190:	c5 fb 11 45 a8       	vmovsd QWORD PTR [rbp-0x58],xmm0
    1195:	e8 36 ff ff ff       	call   10d0 <getint@plt>
    119a:	89 c3                	mov    ebx,eax
    119c:	31 c0                	xor    eax,eax
    119e:	e8 6d 01 00 00       	call   1310 <getint_local_noinline>
    11a3:	41 89 c7             	mov    r15d,eax
    11a6:	31 c0                	xor    eax,eax
    11a8:	e8 63 ff ff ff       	call   1110 <getm256@plt>
    11ad:	31 c0                	xor    eax,eax
    11af:	c5 fc 29 45 b0       	vmovaps YMMWORD PTR [rbp-0x50],ymm0
    11b4:	c5 f8 77             	vzeroupper 
    11b7:	e8 24 ff ff ff       	call   10e0 <getm512@plt>
    11bc:	41 57                	push   r15
    11be:	db 6d 90             	fld    TBYTE PTR [rbp-0x70]
    11c1:	4c 89 f2             	mov    rdx,r14
    11c4:	53                   	push   rbx
    11c5:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
    11cb:	44 89 ee             	mov    esi,r13d
    11ce:	44 89 e7             	mov    edi,r12d
    11d1:	c5 fb 10 6d 80       	vmovsd xmm5,QWORD PTR [rbp-0x80]
    11d6:	44 8b 45 8c          	mov    r8d,DWORD PTR [rbp-0x74]
    11da:	b9 11 00 00 00       	mov    ecx,0x11
    11df:	41 b9 0b 00 00 00    	mov    r9d,0xb
    11e5:	c5 fb 10 65 a8       	vmovsd xmm4,QWORD PTR [rbp-0x58]
    11ea:	c5 fc 28 55 b0       	vmovaps ymm2,YMMWORD PTR [rbp-0x50]
    11ef:	c5 fb 10 4d a0       	vmovsd xmm1,QWORD PTR [rbp-0x60]
    11f4:	48 83 ec 10          	sub    rsp,0x10
    11f8:	c5 d3 10 c5          	vmovsd xmm0,xmm5,xmm5
    11fc:	db 3c 24             	fstp   TBYTE PTR [rsp]
    11ff:	e8 fc fe ff ff       	call   1100 <func@plt>
    1204:	48 83 c4 20          	add    rsp,0x20
    1208:	48 8d 65 d0          	lea    rsp,[rbp-0x30]
    120c:	31 c0                	xor    eax,eax
    120e:	5b                   	pop    rbx
    120f:	41 5a                	pop    r10
    1211:	41 5c                	pop    r12
    1213:	41 5d                	pop    r13
    1215:	41 5e                	pop    r14
    1217:	41 5f                	pop    r15
    1219:	5d                   	pop    rbp
    121a:	49 8d 62 f8          	lea    rsp,[r10-0x8]
    121e:	c3                   	ret    
    121f:	90                   	nop

0000000000001220 <_start>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	31 ed                	xor    ebp,ebp
    1226:	49 89 d1             	mov    r9,rdx
    1229:	5e                   	pop    rsi
    122a:	48 89 e2             	mov    rdx,rsp
    122d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1231:	50                   	push   rax
    1232:	54                   	push   rsp
    1233:	4c 8d 05 56 01 00 00 	lea    r8,[rip+0x156]        # 1390 <__libc_csu_fini>
    123a:	48 8d 0d df 00 00 00 	lea    rcx,[rip+0xdf]        # 1320 <__libc_csu_init>
    1241:	48 8d 3d d8 fe ff ff 	lea    rdi,[rip+0xfffffffffffffed8]        # 1120 <main>
    1248:	ff 15 92 2d 00 00    	call   QWORD PTR [rip+0x2d92]        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    124e:	f4                   	hlt    
    124f:	90                   	nop

0000000000001250 <deregister_tm_clones>:
    1250:	48 8d 3d b9 2d 00 00 	lea    rdi,[rip+0x2db9]        # 4010 <__TMC_END__>
    1257:	48 8d 05 b2 2d 00 00 	lea    rax,[rip+0x2db2]        # 4010 <__TMC_END__>
    125e:	48 39 f8             	cmp    rax,rdi
    1261:	74 15                	je     1278 <deregister_tm_clones+0x28>
    1263:	48 8b 05 6e 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d6e]        # 3fd8 <_ITM_deregisterTMCloneTable>
    126a:	48 85 c0             	test   rax,rax
    126d:	74 09                	je     1278 <deregister_tm_clones+0x28>
    126f:	ff e0                	jmp    rax
    1271:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1278:	c3                   	ret    
    1279:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001280 <register_tm_clones>:
    1280:	48 8d 3d 89 2d 00 00 	lea    rdi,[rip+0x2d89]        # 4010 <__TMC_END__>
    1287:	48 8d 35 82 2d 00 00 	lea    rsi,[rip+0x2d82]        # 4010 <__TMC_END__>
    128e:	48 29 fe             	sub    rsi,rdi
    1291:	48 89 f0             	mov    rax,rsi
    1294:	48 c1 ee 3f          	shr    rsi,0x3f
    1298:	48 c1 f8 03          	sar    rax,0x3
    129c:	48 01 c6             	add    rsi,rax
    129f:	48 d1 fe             	sar    rsi,1
    12a2:	74 14                	je     12b8 <register_tm_clones+0x38>
    12a4:	48 8b 05 45 2d 00 00 	mov    rax,QWORD PTR [rip+0x2d45]        # 3ff0 <_ITM_registerTMCloneTable>
    12ab:	48 85 c0             	test   rax,rax
    12ae:	74 08                	je     12b8 <register_tm_clones+0x38>
    12b0:	ff e0                	jmp    rax
    12b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    12b8:	c3                   	ret    
    12b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000012c0 <__do_global_dtors_aux>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	80 3d 45 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d45],0x0        # 4010 <__TMC_END__>
    12cb:	75 2b                	jne    12f8 <__do_global_dtors_aux+0x38>
    12cd:	55                   	push   rbp
    12ce:	48 83 3d 22 2d 00 00 	cmp    QWORD PTR [rip+0x2d22],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    12d5:	00 
    12d6:	48 89 e5             	mov    rbp,rsp
    12d9:	74 0c                	je     12e7 <__do_global_dtors_aux+0x27>
    12db:	48 8b 3d 26 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2d26]        # 4008 <__dso_handle>
    12e2:	e8 b9 fd ff ff       	call   10a0 <__cxa_finalize@plt>
    12e7:	e8 64 ff ff ff       	call   1250 <deregister_tm_clones>
    12ec:	c6 05 1d 2d 00 00 01 	mov    BYTE PTR [rip+0x2d1d],0x1        # 4010 <__TMC_END__>
    12f3:	5d                   	pop    rbp
    12f4:	c3                   	ret    
    12f5:	0f 1f 00             	nop    DWORD PTR [rax]
    12f8:	c3                   	ret    
    12f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001300 <frame_dummy>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	e9 77 ff ff ff       	jmp    1280 <register_tm_clones>
    1309:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001310 <getint_local_noinline>:
    1310:	b8 0d 00 00 00       	mov    eax,0xd
    1315:	c3                   	ret    
    1316:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    131d:	00 00 00 

0000000000001320 <__libc_csu_init>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	41 57                	push   r15
    1326:	4c 8d 3d 4b 2a 00 00 	lea    r15,[rip+0x2a4b]        # 3d78 <__frame_dummy_init_array_entry>
    132d:	41 56                	push   r14
    132f:	49 89 d6             	mov    r14,rdx
    1332:	41 55                	push   r13
    1334:	49 89 f5             	mov    r13,rsi
    1337:	41 54                	push   r12
    1339:	41 89 fc             	mov    r12d,edi
    133c:	55                   	push   rbp
    133d:	48 8d 2d 3c 2a 00 00 	lea    rbp,[rip+0x2a3c]        # 3d80 <__do_global_dtors_aux_fini_array_entry>
    1344:	53                   	push   rbx
    1345:	4c 29 fd             	sub    rbp,r15
    1348:	48 83 ec 08          	sub    rsp,0x8
    134c:	e8 af fc ff ff       	call   1000 <_init>
    1351:	48 c1 fd 03          	sar    rbp,0x3
    1355:	74 1f                	je     1376 <__libc_csu_init+0x56>
    1357:	31 db                	xor    ebx,ebx
    1359:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1360:	4c 89 f2             	mov    rdx,r14
    1363:	4c 89 ee             	mov    rsi,r13
    1366:	44 89 e7             	mov    edi,r12d
    1369:	41 ff 14 df          	call   QWORD PTR [r15+rbx*8]
    136d:	48 83 c3 01          	add    rbx,0x1
    1371:	48 39 dd             	cmp    rbp,rbx
    1374:	75 ea                	jne    1360 <__libc_csu_init+0x40>
    1376:	48 83 c4 08          	add    rsp,0x8
    137a:	5b                   	pop    rbx
    137b:	5d                   	pop    rbp
    137c:	41 5c                	pop    r12
    137e:	41 5d                	pop    r13
    1380:	41 5e                	pop    r14
    1382:	41 5f                	pop    r15
    1384:	c3                   	ret    
    1385:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    138c:	00 00 00 00 

0000000000001390 <__libc_csu_fini>:
    1390:	f3 0f 1e fa          	endbr64 
    1394:	c3                   	ret    

Disassembly of section .fini:

0000000000001398 <_fini>:
    1398:	f3 0f 1e fa          	endbr64 
    139c:	48 83 ec 08          	sub    rsp,0x8
    13a0:	48 83 c4 08          	add    rsp,0x8
    13a4:	c3                   	ret    
root@9662adefc3bd:/data# cat Makefile 
warnings := -Wall -Wextra -Wpedantic
std := -std=c11
opt := -O3
debug := -g -gdwarf-4
arch := -mavx512f

all:
	$(CC) $(std) $(warnings) $(opt) $(debug) $(arch) -fPIC -shared -o libfoo.so foo.c
	$(CC) $(std) $(warnings) $(opt) $(debug) $(arch) -o test test.c -L. -lfoo

.PHONY: clean
clean:
	rm -rf test libfoo.so *.o *.out reader

.PHONY: run
run:
	objdump -d -M intel test > obj.out
root@9662adefc3bd:/data# objdump -d -M intel libfoo.so 

libfoo.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 e9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fe9]        # 3ff8 <__gmon_start__>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 e3 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fe3]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	f3 0f 1e fa          	endbr64 
    1034:	f2 ff 25 a5 2f 00 00 	bnd jmp QWORD PTR [rip+0x2fa5]        # 3fe0 <__cxa_finalize>
    103b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001040 <deregister_tm_clones>:
    1040:	48 8d 3d d9 2f 00 00 	lea    rdi,[rip+0x2fd9]        # 4020 <completed.0>
    1047:	48 8d 05 d2 2f 00 00 	lea    rax,[rip+0x2fd2]        # 4020 <completed.0>
    104e:	48 39 f8             	cmp    rax,rdi
    1051:	74 15                	je     1068 <deregister_tm_clones+0x28>
    1053:	48 8b 05 96 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f96]        # 3ff0 <_ITM_deregisterTMCloneTable>
    105a:	48 85 c0             	test   rax,rax
    105d:	74 09                	je     1068 <deregister_tm_clones+0x28>
    105f:	ff e0                	jmp    rax
    1061:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    1068:	c3                   	ret    
    1069:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001070 <register_tm_clones>:
    1070:	48 8d 3d a9 2f 00 00 	lea    rdi,[rip+0x2fa9]        # 4020 <completed.0>
    1077:	48 8d 35 a2 2f 00 00 	lea    rsi,[rip+0x2fa2]        # 4020 <completed.0>
    107e:	48 29 fe             	sub    rsi,rdi
    1081:	48 89 f0             	mov    rax,rsi
    1084:	48 c1 ee 3f          	shr    rsi,0x3f
    1088:	48 c1 f8 03          	sar    rax,0x3
    108c:	48 01 c6             	add    rsi,rax
    108f:	48 d1 fe             	sar    rsi,1
    1092:	74 14                	je     10a8 <register_tm_clones+0x38>
    1094:	48 8b 05 4d 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f4d]        # 3fe8 <_ITM_registerTMCloneTable>
    109b:	48 85 c0             	test   rax,rax
    109e:	74 08                	je     10a8 <register_tm_clones+0x38>
    10a0:	ff e0                	jmp    rax
    10a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    10a8:	c3                   	ret    
    10a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010b0 <__do_global_dtors_aux>:
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	80 3d 65 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f65],0x0        # 4020 <completed.0>
    10bb:	75 2b                	jne    10e8 <__do_global_dtors_aux+0x38>
    10bd:	55                   	push   rbp
    10be:	48 83 3d 1a 2f 00 00 	cmp    QWORD PTR [rip+0x2f1a],0x0        # 3fe0 <__cxa_finalize>
    10c5:	00 
    10c6:	48 89 e5             	mov    rbp,rsp
    10c9:	74 0c                	je     10d7 <__do_global_dtors_aux+0x27>
    10cb:	48 8b 3d 46 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f46]        # 4018 <__dso_handle>
    10d2:	e8 59 ff ff ff       	call   1030 <__cxa_finalize@plt>
    10d7:	e8 64 ff ff ff       	call   1040 <deregister_tm_clones>
    10dc:	c6 05 3d 2f 00 00 01 	mov    BYTE PTR [rip+0x2f3d],0x1        # 4020 <completed.0>
    10e3:	5d                   	pop    rbp
    10e4:	c3                   	ret    
    10e5:	0f 1f 00             	nop    DWORD PTR [rax]
    10e8:	c3                   	ret    
    10e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010f0 <frame_dummy>:
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	e9 77 ff ff ff       	jmp    1070 <register_tm_clones>
    10f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001100 <func>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	c3                   	ret    
    1105:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    110c:	00 00 00 00 

0000000000001110 <getint>:
    1110:	f3 0f 1e fa          	endbr64 
    1114:	b8 07 00 00 00       	mov    eax,0x7
    1119:	c3                   	ret    
    111a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000001120 <getdouble>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	c5 fb 10 05 d4 0e 00 	vmovsd xmm0,QWORD PTR [rip+0xed4]        # 2000 <_fini+0xe80>
    112b:	00 
    112c:	c3                   	ret    
    112d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001130 <getlongdouble>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	d9 05 ce 0e 00 00    	fld    DWORD PTR [rip+0xece]        # 2008 <_fini+0xe88>
    113a:	c3                   	ret    
    113b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001140 <getstructparm>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	c5 fb 10 05 b4 0e 00 	vmovsd xmm0,QWORD PTR [rip+0xeb4]        # 2000 <_fini+0xe80>
    114b:	00 
    114c:	b8 07 00 00 00       	mov    eax,0x7
    1151:	c3                   	ret    
    1152:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1159:	00 00 00 00 
    115d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000001160 <getm256>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	c4 e2 7d 18 05 9b 0e 	vbroadcastss ymm0,DWORD PTR [rip+0xe9b]        # 2008 <_fini+0xe88>
    116b:	00 00 
    116d:	c3                   	ret    
    116e:	66 90                	xchg   ax,ax

0000000000001170 <getm512>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	62 f2 7d 48 18 05 8a 	vbroadcastss zmm0,DWORD PTR [rip+0xe8a]        # 2008 <_fini+0xe88>
    117b:	0e 00 00 
    117e:	c3                   	ret    

Disassembly of section .fini:

0000000000001180 <_fini>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	48 83 ec 08          	sub    rsp,0x8
    1188:	48 83 c4 08          	add    rsp,0x8
    118c:	c3 
```
