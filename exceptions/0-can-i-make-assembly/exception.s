	.file	"exception.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1347:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1347:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZN17DinosaurExceptionD2Ev,"axG",@progbits,_ZN17DinosaurExceptionD5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZN17DinosaurExceptionD2Ev
	.type	_ZN17DinosaurExceptionD2Ev, @function
_ZN17DinosaurExceptionD2Ev:
.LFB1594:
	.cfi_startproc
	endbr64
	ret
	.cfi_endproc
.LFE1594:
	.size	_ZN17DinosaurExceptionD2Ev, .-_ZN17DinosaurExceptionD2Ev
	.weak	_ZN17DinosaurExceptionD1Ev
	.set	_ZN17DinosaurExceptionD1Ev,_ZN17DinosaurExceptionD2Ev
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.globl	_Z19throw_the_exceptionb
	.type	_Z19throw_the_exceptionb, @function
_Z19throw_the_exceptionb:
.LFB1596:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	testb	%dil, %dil
	jne	.L6
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_Z19throw_the_exceptionb.cold, @function
_Z19throw_the_exceptionb.cold:
.LFSB1596:
.L6:
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	call	__cxa_allocate_exception@PLT
	leaq	_ZN17DinosaurExceptionD1Ev(%rip), %rdx
	leaq	_ZTI17DinosaurException(%rip), %rsi
	movq	%rax, %rdi
	call	__cxa_throw@PLT
	.cfi_endproc
.LFE1596:
	.text
	.size	_Z19throw_the_exceptionb, .-_Z19throw_the_exceptionb
	.section	.text.unlikely
	.size	_Z19throw_the_exceptionb.cold, .-_Z19throw_the_exceptionb.cold
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Hello Dinosaur!"
	.text
	.p2align 4
	.globl	_Z14hello_dinosaurv
	.type	_Z14hello_dinosaurv, @function
_Z14hello_dinosaurv:
.LFB1597:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$15, %edx
	leaq	.LC1(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdx
	movq	-24(%rax), %rax
	movq	240(%rdx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L14
	cmpb	$0, 56(%rbp)
	je	.L10
	movsbl	67(%rbp), %esi
.L11:
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L11
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L11
.L14:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE1597:
	.size	_Z14hello_dinosaurv, .-_Z14hello_dinosaurv
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4
	.globl	_Z19catch_the_exceptionv
	.type	_Z19catch_the_exceptionv, @function
_Z19catch_the_exceptionv:
.LFB1598:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1598
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%edi, %edi
.LEHB0:
	call	_Z3logj@PLT
.LEHE0:
	movl	$1, %edi
.LEHB1:
	call	_Z3logj@PLT
	call	_Z14hello_dinosaurv
	movl	$2, %edi
	call	_Z3logj@PLT
.LEHE1:
.L18:
	movl	$4, %edi
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
.LEHB2:
	jmp	_Z3logj@PLT
.LEHE2:
.L20:
	.cfi_restore_state
	endbr64
	movq	%rax, %rdi
	movq	%rdx, %rax
	jmp	.L16
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
	.align 4
.LLSDA1598:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1598-.LLSDATTD1598
.LLSDATTD1598:
	.byte	0x1
	.uleb128 .LLSDACSE1598-.LLSDACSB1598
.LLSDACSB1598:
	.uleb128 .LEHB0-.LFB1598
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1598
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L20-.LFB1598
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB1598
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1598:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI17DinosaurException-.
.LLSDATT1598:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC1598
	.type	_Z19catch_the_exceptionv.cold, @function
_Z19catch_the_exceptionv.cold:
.LFSB1598:
.L16:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	subq	$1, %rax
	jne	.L23
	call	__cxa_begin_catch@PLT
	movl	$3, %edi
.LEHB3:
	call	_Z3logj@PLT
.LEHE3:
	call	__cxa_end_catch@PLT
	jmp	.L18
.L23:
.LEHB4:
	call	_Unwind_Resume@PLT
.L21:
	endbr64
	movq	%rax, %rbp
	call	__cxa_end_catch@PLT
	movq	%rbp, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE1598:
	.section	.gcc_except_table
	.align 4
.LLSDAC1598:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATTC1598-.LLSDATTDC1598
.LLSDATTDC1598:
	.byte	0x1
	.uleb128 .LLSDACSEC1598-.LLSDACSBC1598
.LLSDACSBC1598:
	.uleb128 .LEHB3-.LCOLDB2
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L21-.LCOLDB2
	.uleb128 0
	.uleb128 .LEHB4-.LCOLDB2
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC1598:
	.byte	0x1
	.byte	0
	.align 4
	.long	DW.ref._ZTI17DinosaurException-.
.LLSDATTC1598:
	.section	.text.unlikely
	.text
	.size	_Z19catch_the_exceptionv, .-_Z19catch_the_exceptionv
	.section	.text.unlikely
	.size	_Z19catch_the_exceptionv.cold, .-_Z19catch_the_exceptionv.cold
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB1599:
	.cfi_startproc
	endbr64
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1599:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I__Z19throw_the_exceptionb, @function
_GLOBAL__sub_I__Z19throw_the_exceptionb:
.LFB2088:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE2088:
	.size	_GLOBAL__sub_I__Z19throw_the_exceptionb, .-_GLOBAL__sub_I__Z19throw_the_exceptionb
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z19throw_the_exceptionb
	.weak	_ZTS17DinosaurException
	.section	.rodata._ZTS17DinosaurException,"aG",@progbits,_ZTS17DinosaurException,comdat
	.align 16
	.type	_ZTS17DinosaurException, @object
	.size	_ZTS17DinosaurException, 20
_ZTS17DinosaurException:
	.string	"17DinosaurException"
	.weak	_ZTI17DinosaurException
	.section	.data.rel.ro._ZTI17DinosaurException,"awG",@progbits,_ZTI17DinosaurException,comdat
	.align 8
	.type	_ZTI17DinosaurException, @object
	.size	_ZTI17DinosaurException, 16
_ZTI17DinosaurException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS17DinosaurException
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	DW.ref._ZTI17DinosaurException
	.weak	DW.ref._ZTI17DinosaurException
	.section	.data.rel.local.DW.ref._ZTI17DinosaurException,"awG",@progbits,DW.ref._ZTI17DinosaurException,comdat
	.align 8
	.type	DW.ref._ZTI17DinosaurException, @object
	.size	DW.ref._ZTI17DinosaurException, 8
DW.ref._ZTI17DinosaurException:
	.quad	_ZTI17DinosaurException
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
