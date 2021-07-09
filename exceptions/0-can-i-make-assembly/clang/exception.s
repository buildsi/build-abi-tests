	.text
	.file	"exception.cpp"
	.file	1 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits" "atomic_word.h"
	.file	2 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits" "ios_base.h"
	.file	3 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "iostream"
	.file	4 "/usr/include/x86_64-linux-gnu/bits/types" "__mbstate_t.h"
	.file	5 "/usr/include/x86_64-linux-gnu/bits/types" "mbstate_t.h"
	.file	6 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "cwchar"
	.file	7 "/usr/include/x86_64-linux-gnu/bits/types" "wint_t.h"
	.file	8 "/usr/include" "wchar.h"
	.file	9 "/usr/include/x86_64-linux-gnu/bits/types" "__FILE.h"
	.file	10 "/usr/lib/llvm-10/lib/clang/10.0.0/include" "stddef.h"
	.file	11 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits" "exception_ptr.h"
	.file	12 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/x86_64-linux-gnu/c++/9/bits" "c++config.h"
	.file	13 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/debug" "debug.h"
	.file	14 "/usr/include/x86_64-linux-gnu/bits" "types.h"
	.file	15 "/usr/include/x86_64-linux-gnu/bits" "stdint-intn.h"
	.file	16 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "cstdint"
	.file	17 "/usr/include" "stdint.h"
	.file	18 "/usr/include/x86_64-linux-gnu/bits" "stdint-uintn.h"
	.file	19 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "clocale"
	.file	20 "/usr/include" "locale.h"
	.file	21 "/usr/include" "ctype.h"
	.file	22 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "cctype"
	.file	23 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/ext" "new_allocator.h"
	.file	24 "/usr/include" "stdlib.h"
	.file	25 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/bits" "std_abs.h"
	.file	26 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "cstdlib"
	.file	27 "/usr/include/x86_64-linux-gnu/bits/types" "FILE.h"
	.file	28 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "cstdio"
	.file	29 "/usr/include/x86_64-linux-gnu/bits/types" "__fpos_t.h"
	.file	30 "/usr/include" "stdio.h"
	.file	31 "/usr/include" "wctype.h"
	.file	32 "/usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9" "cwctype"
	.file	33 "/usr/include/x86_64-linux-gnu/bits" "wctype-wchar.h"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
.Lfunc_begin0:
	.loc	3 74 0                  # /usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream:74:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp0:
	.loc	3 74 25 prologue_end    # /usr/bin/../lib/gcc/x86_64-linux-gnu/9/../../../../include/c++/9/iostream:74:25
	movabsq	$_ZStL8__ioinit, %rdi
	callq	_ZNSt8ios_base4InitC1Ev
	movabsq	$_ZNSt8ios_base4InitD1Ev, %rax
	movq	%rax, %rdi
	movabsq	$_ZStL8__ioinit, %rsi
	movabsq	$__dso_handle, %rdx
	callq	__cxa_atexit
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z19throw_the_exceptionb # -- Begin function _Z19throw_the_exceptionb
	.p2align	4, 0x90
	.type	_Z19throw_the_exceptionb,@function
_Z19throw_the_exceptionb:               # @_Z19throw_the_exceptionb
.Lfunc_begin1:
	.file	34 "/home/vanessa/Desktop/Code/build-abi-tests/exceptions/0-can-i-make-assembly/clang" "exception.cpp"
	.loc	34 11 0                 # exception.cpp:11:0
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
                                        # kill: def $dil killed $dil killed $edi
	andb	$1, %dil
	movb	%dil, -1(%rbp)
.Ltmp5:
	.loc	34 12 9 prologue_end    # exception.cpp:12:9
	testb	$1, -1(%rbp)
	je	.LBB1_4
# %bb.1:
	.loc	34 0 9 is_stmt 0        # exception.cpp:0:9
	movl	$4, %edi
.Ltmp6:
	.loc	34 13 9 is_stmt 1       # exception.cpp:13:9
	callq	__cxa_allocate_exception
	movq	%rax, %rcx
.Ltmp2:
	.loc	34 13 15 is_stmt 0      # exception.cpp:13:15
	movq	%rax, %rdi
	movq	%rcx, -32(%rbp)         # 8-byte Spill
	callq	_ZN17DinosaurExceptionC2Ev
.Ltmp3:
	jmp	.LBB1_2
.LBB1_2:
	.loc	34 0 15                 # exception.cpp:0:15
	movabsq	$_ZTI17DinosaurException, %rax
	movabsq	$_ZN17DinosaurExceptionD2Ev, %rcx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	.loc	34 13 9                 # exception.cpp:13:9
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	__cxa_throw
.LBB1_3:
.Ltmp4:
                                        # kill: def $edx killed $edx killed $rdx
	.loc	34 15 1 is_stmt 1       # exception.cpp:15:1
	movq	%rax, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-32(%rbp), %rdi         # 8-byte Reload
	.loc	34 13 9                 # exception.cpp:13:9
	callq	__cxa_free_exception
	jmp	.LBB1_5
.Ltmp7:
.LBB1_4:
	.loc	34 15 1                 # exception.cpp:15:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB1_5:
	.cfi_def_cfa %rbp, 16
.Ltmp8:
	.loc	34 13 9                 # exception.cpp:13:9
	movq	-16(%rbp), %rdi
	callq	_Unwind_Resume
.Ltmp9:
.Lfunc_end1:
	.size	_Z19throw_the_exceptionb, .Lfunc_end1-_Z19throw_the_exceptionb
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	255                     # @TType Encoding = omit
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1 # >> Call Site 1 <<
	.uleb128 .Ltmp2-.Lfunc_begin1   #   Call between .Lfunc_begin1 and .Ltmp2
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin1   # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp2          #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin1   #     jumps to .Ltmp4
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1   # >> Call Site 3 <<
	.uleb128 .Lfunc_end1-.Ltmp3     #   Call between .Ltmp3 and .Lfunc_end1
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN17DinosaurExceptionC2Ev,"axG",@progbits,_ZN17DinosaurExceptionC2Ev,comdat
	.weak	_ZN17DinosaurExceptionC2Ev # -- Begin function _ZN17DinosaurExceptionC2Ev
	.p2align	4, 0x90
	.type	_ZN17DinosaurExceptionC2Ev,@function
_ZN17DinosaurExceptionC2Ev:             # @_ZN17DinosaurExceptionC2Ev
.Lfunc_begin2:
	.loc	34 7 0                  # exception.cpp:7:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp10:
	.loc	34 7 26 prologue_end    # exception.cpp:7:26
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp11:
.Lfunc_end2:
	.size	_ZN17DinosaurExceptionC2Ev, .Lfunc_end2-_ZN17DinosaurExceptionC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17DinosaurExceptionD2Ev,"axG",@progbits,_ZN17DinosaurExceptionD2Ev,comdat
	.weak	_ZN17DinosaurExceptionD2Ev # -- Begin function _ZN17DinosaurExceptionD2Ev
	.p2align	4, 0x90
	.type	_ZN17DinosaurExceptionD2Ev,@function
_ZN17DinosaurExceptionD2Ev:             # @_ZN17DinosaurExceptionD2Ev
.Lfunc_begin3:
	.loc	34 8 0                  # exception.cpp:8:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
.Ltmp12:
	.loc	34 8 27 prologue_end    # exception.cpp:8:27
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp13:
.Lfunc_end3:
	.size	_ZN17DinosaurExceptionD2Ev, .Lfunc_end3-_ZN17DinosaurExceptionD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z14hello_dinosaurv     # -- Begin function _Z14hello_dinosaurv
	.p2align	4, 0x90
	.type	_Z14hello_dinosaurv,@function
_Z14hello_dinosaurv:                    # @_Z14hello_dinosaurv
.Lfunc_begin4:
	.loc	34 17 0                 # exception.cpp:17:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp14:
	.loc	34 18 15 prologue_end   # exception.cpp:18:15
	movabsq	$_ZSt4cout, %rdi
	movabsq	$.L.str, %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.loc	34 18 36 is_stmt 0      # exception.cpp:18:36
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	.loc	34 19 1 is_stmt 1       # exception.cpp:19:1
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp15:
.Lfunc_end4:
	.size	_Z14hello_dinosaurv, .Lfunc_end4-_Z14hello_dinosaurv
	.cfi_endproc
                                        # -- End function
	.globl	_Z3logj                 # -- Begin function _Z3logj
	.p2align	4, 0x90
	.type	_Z3logj,@function
_Z3logj:                                # @_Z3logj
.Lfunc_begin5:
	.loc	34 21 0                 # exception.cpp:21:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
.Ltmp16:
	.loc	34 22 18 prologue_end   # exception.cpp:22:18
	movl	-4(%rbp), %esi
	.loc	34 22 15 is_stmt 0      # exception.cpp:22:15
	movabsq	$_ZSt4cout, %rdi
	callq	_ZNSolsEj
	.loc	34 22 24                # exception.cpp:22:24
	movq	%rax, %rdi
	movabsq	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %rsi
	callq	_ZNSolsEPFRSoS_E
	.loc	34 23 1 is_stmt 1       # exception.cpp:23:1
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp17:
.Lfunc_end5:
	.size	_Z3logj, .Lfunc_end5-_Z3logj
	.cfi_endproc
                                        # -- End function
	.globl	_Z19catch_the_exceptionv # -- Begin function _Z19catch_the_exceptionv
	.p2align	4, 0x90
	.type	_Z19catch_the_exceptionv,@function
_Z19catch_the_exceptionv:               # @_Z19catch_the_exceptionv
.Lfunc_begin6:
	.loc	34 25 0                 # exception.cpp:25:0
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%edi, %edi
.Ltmp33:
	.loc	34 26 5 prologue_end    # exception.cpp:26:5
	callq	_Z3logj
.Ltmp18:
	movl	$1, %edi
.Ltmp34:
	.loc	34 28 9                 # exception.cpp:28:9
	callq	_Z3logj
.Ltmp19:
	jmp	.LBB6_1
.LBB6_1:
.Ltmp20:
	.loc	34 29 9                 # exception.cpp:29:9
	callq	_Z14hello_dinosaurv
.Ltmp21:
	jmp	.LBB6_2
.LBB6_2:
.Ltmp22:
	.loc	34 0 9 is_stmt 0        # exception.cpp:0:9
	movl	$1, %edi
	.loc	34 30 9 is_stmt 1       # exception.cpp:30:9
	callq	_Z19throw_the_exceptionb
.Ltmp23:
	jmp	.LBB6_3
.LBB6_3:
.Ltmp24:
	.loc	34 0 9 is_stmt 0        # exception.cpp:0:9
	movl	$2, %edi
	.loc	34 31 9 is_stmt 1       # exception.cpp:31:9
	callq	_Z3logj
.Ltmp25:
	jmp	.LBB6_4
.LBB6_4:
	.loc	34 32 5                 # exception.cpp:32:5
	jmp	.LBB6_9
.LBB6_5:
.Ltmp26:
                                        # kill: def $edx killed $edx killed $rdx
	.loc	34 38 1                 # exception.cpp:38:1
	movq	%rax, -8(%rbp)
	movl	%edx, -12(%rbp)
# %bb.6:
	.loc	34 32 5                 # exception.cpp:32:5
	movl	-12(%rbp), %eax
	movl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB6_12
# %bb.7:
	movq	-8(%rbp), %rdi
	callq	__cxa_begin_catch
	movq	%rax, -24(%rbp)
.Ltmp27:
	movl	$3, %edi
.Ltmp35:
	.loc	34 33 9                 # exception.cpp:33:9
	callq	_Z3logj
.Ltmp28:
	jmp	.LBB6_8
.LBB6_8:
	.loc	34 34 5                 # exception.cpp:34:5
	callq	__cxa_end_catch
.Ltmp36:
.LBB6_9:
	.loc	34 37 5                 # exception.cpp:37:5
	movl	$4, %edi
	callq	_Z3logj
	.loc	34 38 1                 # exception.cpp:38:1
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_10:
	.cfi_def_cfa %rbp, 16
.Ltmp29:
                                        # kill: def $edx killed $edx killed $rdx
.Ltmp37:
	.loc	34 38 1 is_stmt 0       # exception.cpp:38:1
	movq	%rax, -8(%rbp)
	movl	%edx, -12(%rbp)
.Ltmp30:
	.loc	34 34 5 is_stmt 1       # exception.cpp:34:5
	callq	__cxa_end_catch
.Ltmp31:
	jmp	.LBB6_11
.LBB6_11:
	jmp	.LBB6_12
.Ltmp38:
.LBB6_12:
	.loc	34 32 5                 # exception.cpp:32:5
	movq	-8(%rbp), %rdi
	callq	_Unwind_Resume
.Ltmp39:
.LBB6_13:
.Ltmp32:
                                        # kill: def $edx killed $edx killed $rdx
	.loc	34 34 5                 # exception.cpp:34:5
	movq	%rax, %rdi
	movl	%edx, -28(%rbp)         # 4-byte Spill
	callq	__clang_call_terminate
.Ltmp40:
.Lfunc_end6:
	.size	_Z19catch_the_exceptionv, .Lfunc_end6-_Z19catch_the_exceptionv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table6:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6 # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin6  #   Call between .Lfunc_begin6 and .Ltmp18
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin6  # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp18        #   Call between .Ltmp18 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin6  #     jumps to .Ltmp26
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp25-.Lfunc_begin6  # >> Call Site 3 <<
	.uleb128 .Ltmp27-.Ltmp25        #   Call between .Ltmp25 and .Ltmp27
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin6  # >> Call Site 4 <<
	.uleb128 .Ltmp28-.Ltmp27        #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin6  #     jumps to .Ltmp29
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin6  # >> Call Site 5 <<
	.uleb128 .Ltmp30-.Ltmp28        #   Call between .Ltmp28 and .Ltmp30
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin6  # >> Call Site 6 <<
	.uleb128 .Ltmp31-.Ltmp30        #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin6  #     jumps to .Ltmp32
	.byte	3                       #   On action: 2
	.uleb128 .Ltmp31-.Lfunc_begin6  # >> Call Site 7 <<
	.uleb128 .Lfunc_end6-.Ltmp31    #   Call between .Ltmp31 and .Lfunc_end6
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end1:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.byte	2                       # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 2
	.long	_ZTI17DinosaurException # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxa_begin_catch
	movq	%rax, (%rsp)            # 8-byte Spill
	callq	_ZSt9terminatev
.Lfunc_end7:
	.size	__clang_call_terminate, .Lfunc_end7-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin8:
	.loc	34 40 0                 # exception.cpp:40:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
.Ltmp41:
	.loc	34 41 5 prologue_end    # exception.cpp:41:5
	callq	_Z19catch_the_exceptionv
	xorl	%eax, %eax
	.loc	34 42 5                 # exception.cpp:42:5
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp42:
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_exception.cpp
	.type	_GLOBAL__sub_I_exception.cpp,@function
_GLOBAL__sub_I_exception.cpp:           # @_GLOBAL__sub_I_exception.cpp
.Lfunc_begin9:
	.loc	34 0 0                  # exception.cpp:0:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
.Ltmp43:
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Ltmp44:
.Lfunc_end9:
	.size	_GLOBAL__sub_I_exception.cpp, .Lfunc_end9-_GLOBAL__sub_I_exception.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZTS17DinosaurException,@object # @_ZTS17DinosaurException
	.section	.rodata._ZTS17DinosaurException,"aG",@progbits,_ZTS17DinosaurException,comdat
	.weak	_ZTS17DinosaurException
_ZTS17DinosaurException:
	.asciz	"17DinosaurException"
	.size	_ZTS17DinosaurException, 20

	.type	_ZTI17DinosaurException,@object # @_ZTI17DinosaurException
	.section	.rodata._ZTI17DinosaurException,"aG",@progbits,_ZTI17DinosaurException,comdat
	.weak	_ZTI17DinosaurException
	.p2align	3
_ZTI17DinosaurException:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS17DinosaurException
	.size	_ZTI17DinosaurException, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello Dinosaur!"
	.size	.L.str, 16

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_exception.cpp
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 10.0.0-4ubuntu1 " # string offset=0
.Linfo_string1:
	.asciz	"exception.cpp"         # string offset=31
.Linfo_string2:
	.asciz	"/home/vanessa/Desktop/Code/build-abi-tests/exceptions/0-can-i-make-assembly/clang" # string offset=45
.Linfo_string3:
	.asciz	"std"                   # string offset=127
.Linfo_string4:
	.asciz	"__ioinit"              # string offset=131
.Linfo_string5:
	.asciz	"ios_base"              # string offset=140
.Linfo_string6:
	.asciz	"_S_refcount"           # string offset=149
.Linfo_string7:
	.asciz	"int"                   # string offset=161
.Linfo_string8:
	.asciz	"_Atomic_word"          # string offset=165
.Linfo_string9:
	.asciz	"_S_synced_with_stdio"  # string offset=178
.Linfo_string10:
	.asciz	"bool"                  # string offset=199
.Linfo_string11:
	.asciz	"Init"                  # string offset=204
.Linfo_string12:
	.asciz	"~Init"                 # string offset=209
.Linfo_string13:
	.asciz	"_ZNSt8ios_base4InitaSERKS0_" # string offset=215
.Linfo_string14:
	.asciz	"operator="             # string offset=243
.Linfo_string15:
	.asciz	"_ZStL8__ioinit"        # string offset=253
.Linfo_string16:
	.asciz	"__count"               # string offset=268
.Linfo_string17:
	.asciz	"__value"               # string offset=276
.Linfo_string18:
	.asciz	"__wch"                 # string offset=284
.Linfo_string19:
	.asciz	"unsigned int"          # string offset=290
.Linfo_string20:
	.asciz	"__wchb"                # string offset=303
.Linfo_string21:
	.asciz	"char"                  # string offset=310
.Linfo_string22:
	.asciz	"__ARRAY_SIZE_TYPE__"   # string offset=315
.Linfo_string23:
	.asciz	"__mbstate_t"           # string offset=335
.Linfo_string24:
	.asciz	"mbstate_t"             # string offset=347
.Linfo_string25:
	.asciz	"wint_t"                # string offset=357
.Linfo_string26:
	.asciz	"btowc"                 # string offset=364
.Linfo_string27:
	.asciz	"fgetwc"                # string offset=370
.Linfo_string28:
	.asciz	"_IO_FILE"              # string offset=377
.Linfo_string29:
	.asciz	"__FILE"                # string offset=386
.Linfo_string30:
	.asciz	"fgetws"                # string offset=393
.Linfo_string31:
	.asciz	"wchar_t"               # string offset=400
.Linfo_string32:
	.asciz	"fputwc"                # string offset=408
.Linfo_string33:
	.asciz	"fputws"                # string offset=415
.Linfo_string34:
	.asciz	"fwide"                 # string offset=422
.Linfo_string35:
	.asciz	"fwprintf"              # string offset=428
.Linfo_string36:
	.asciz	"__isoc99_fwscanf"      # string offset=437
.Linfo_string37:
	.asciz	"fwscanf"               # string offset=454
.Linfo_string38:
	.asciz	"getwc"                 # string offset=462
.Linfo_string39:
	.asciz	"getwchar"              # string offset=468
.Linfo_string40:
	.asciz	"mbrlen"                # string offset=477
.Linfo_string41:
	.asciz	"long unsigned int"     # string offset=484
.Linfo_string42:
	.asciz	"size_t"                # string offset=502
.Linfo_string43:
	.asciz	"mbrtowc"               # string offset=509
.Linfo_string44:
	.asciz	"mbsinit"               # string offset=517
.Linfo_string45:
	.asciz	"mbsrtowcs"             # string offset=525
.Linfo_string46:
	.asciz	"putwc"                 # string offset=535
.Linfo_string47:
	.asciz	"putwchar"              # string offset=541
.Linfo_string48:
	.asciz	"swprintf"              # string offset=550
.Linfo_string49:
	.asciz	"__isoc99_swscanf"      # string offset=559
.Linfo_string50:
	.asciz	"swscanf"               # string offset=576
.Linfo_string51:
	.asciz	"ungetwc"               # string offset=584
.Linfo_string52:
	.asciz	"vfwprintf"             # string offset=592
.Linfo_string53:
	.asciz	"gp_offset"             # string offset=602
.Linfo_string54:
	.asciz	"fp_offset"             # string offset=612
.Linfo_string55:
	.asciz	"overflow_arg_area"     # string offset=622
.Linfo_string56:
	.asciz	"reg_save_area"         # string offset=640
.Linfo_string57:
	.asciz	"__va_list_tag"         # string offset=654
.Linfo_string58:
	.asciz	"__isoc99_vfwscanf"     # string offset=668
.Linfo_string59:
	.asciz	"vfwscanf"              # string offset=686
.Linfo_string60:
	.asciz	"vswprintf"             # string offset=695
.Linfo_string61:
	.asciz	"__isoc99_vswscanf"     # string offset=705
.Linfo_string62:
	.asciz	"vswscanf"              # string offset=723
.Linfo_string63:
	.asciz	"vwprintf"              # string offset=732
.Linfo_string64:
	.asciz	"__isoc99_vwscanf"      # string offset=741
.Linfo_string65:
	.asciz	"vwscanf"               # string offset=758
.Linfo_string66:
	.asciz	"wcrtomb"               # string offset=766
.Linfo_string67:
	.asciz	"wcscat"                # string offset=774
.Linfo_string68:
	.asciz	"wcscmp"                # string offset=781
.Linfo_string69:
	.asciz	"wcscoll"               # string offset=788
.Linfo_string70:
	.asciz	"wcscpy"                # string offset=796
.Linfo_string71:
	.asciz	"wcscspn"               # string offset=803
.Linfo_string72:
	.asciz	"wcsftime"              # string offset=811
.Linfo_string73:
	.asciz	"tm"                    # string offset=820
.Linfo_string74:
	.asciz	"wcslen"                # string offset=823
.Linfo_string75:
	.asciz	"wcsncat"               # string offset=830
.Linfo_string76:
	.asciz	"wcsncmp"               # string offset=838
.Linfo_string77:
	.asciz	"wcsncpy"               # string offset=846
.Linfo_string78:
	.asciz	"wcsrtombs"             # string offset=854
.Linfo_string79:
	.asciz	"wcsspn"                # string offset=864
.Linfo_string80:
	.asciz	"wcstod"                # string offset=871
.Linfo_string81:
	.asciz	"double"                # string offset=878
.Linfo_string82:
	.asciz	"wcstof"                # string offset=885
.Linfo_string83:
	.asciz	"float"                 # string offset=892
.Linfo_string84:
	.asciz	"wcstok"                # string offset=898
.Linfo_string85:
	.asciz	"wcstol"                # string offset=905
.Linfo_string86:
	.asciz	"long int"              # string offset=912
.Linfo_string87:
	.asciz	"wcstoul"               # string offset=921
.Linfo_string88:
	.asciz	"wcsxfrm"               # string offset=929
.Linfo_string89:
	.asciz	"wctob"                 # string offset=937
.Linfo_string90:
	.asciz	"wmemcmp"               # string offset=943
.Linfo_string91:
	.asciz	"wmemcpy"               # string offset=951
.Linfo_string92:
	.asciz	"wmemmove"              # string offset=959
.Linfo_string93:
	.asciz	"wmemset"               # string offset=968
.Linfo_string94:
	.asciz	"wprintf"               # string offset=976
.Linfo_string95:
	.asciz	"__isoc99_wscanf"       # string offset=984
.Linfo_string96:
	.asciz	"wscanf"                # string offset=1000
.Linfo_string97:
	.asciz	"wcschr"                # string offset=1007
.Linfo_string98:
	.asciz	"wcspbrk"               # string offset=1014
.Linfo_string99:
	.asciz	"wcsrchr"               # string offset=1022
.Linfo_string100:
	.asciz	"wcsstr"                # string offset=1030
.Linfo_string101:
	.asciz	"wmemchr"               # string offset=1037
.Linfo_string102:
	.asciz	"__gnu_cxx"             # string offset=1045
.Linfo_string103:
	.asciz	"wcstold"               # string offset=1055
.Linfo_string104:
	.asciz	"long double"           # string offset=1063
.Linfo_string105:
	.asciz	"wcstoll"               # string offset=1075
.Linfo_string106:
	.asciz	"long long int"         # string offset=1083
.Linfo_string107:
	.asciz	"wcstoull"              # string offset=1097
.Linfo_string108:
	.asciz	"long long unsigned int" # string offset=1106
.Linfo_string109:
	.asciz	"__exception_ptr"       # string offset=1129
.Linfo_string110:
	.asciz	"_M_exception_object"   # string offset=1145
.Linfo_string111:
	.asciz	"exception_ptr"         # string offset=1165
.Linfo_string112:
	.asciz	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv" # string offset=1179
.Linfo_string113:
	.asciz	"_M_addref"             # string offset=1229
.Linfo_string114:
	.asciz	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv" # string offset=1239
.Linfo_string115:
	.asciz	"_M_release"            # string offset=1291
.Linfo_string116:
	.asciz	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv" # string offset=1302
.Linfo_string117:
	.asciz	"_M_get"                # string offset=1350
.Linfo_string118:
	.asciz	"decltype(nullptr)"     # string offset=1357
.Linfo_string119:
	.asciz	"nullptr_t"             # string offset=1375
.Linfo_string120:
	.asciz	"_ZNSt15__exception_ptr13exception_ptraSERKS0_" # string offset=1385
.Linfo_string121:
	.asciz	"_ZNSt15__exception_ptr13exception_ptraSEOS0_" # string offset=1431
.Linfo_string122:
	.asciz	"~exception_ptr"        # string offset=1476
.Linfo_string123:
	.asciz	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_" # string offset=1491
.Linfo_string124:
	.asciz	"swap"                  # string offset=1539
.Linfo_string125:
	.asciz	"_ZNKSt15__exception_ptr13exception_ptrcvbEv" # string offset=1544
.Linfo_string126:
	.asciz	"operator bool"         # string offset=1588
.Linfo_string127:
	.asciz	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv" # string offset=1602
.Linfo_string128:
	.asciz	"__cxa_exception_type"  # string offset=1665
.Linfo_string129:
	.asciz	"type_info"             # string offset=1686
.Linfo_string130:
	.asciz	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE" # string offset=1696
.Linfo_string131:
	.asciz	"rethrow_exception"     # string offset=1756
.Linfo_string132:
	.asciz	"__gnu_debug"           # string offset=1774
.Linfo_string133:
	.asciz	"__debug"               # string offset=1786
.Linfo_string134:
	.asciz	"signed char"           # string offset=1794
.Linfo_string135:
	.asciz	"__int8_t"              # string offset=1806
.Linfo_string136:
	.asciz	"int8_t"                # string offset=1815
.Linfo_string137:
	.asciz	"short"                 # string offset=1822
.Linfo_string138:
	.asciz	"__int16_t"             # string offset=1828
.Linfo_string139:
	.asciz	"int16_t"               # string offset=1838
.Linfo_string140:
	.asciz	"__int32_t"             # string offset=1846
.Linfo_string141:
	.asciz	"int32_t"               # string offset=1856
.Linfo_string142:
	.asciz	"__int64_t"             # string offset=1864
.Linfo_string143:
	.asciz	"int64_t"               # string offset=1874
.Linfo_string144:
	.asciz	"int_fast8_t"           # string offset=1882
.Linfo_string145:
	.asciz	"int_fast16_t"          # string offset=1894
.Linfo_string146:
	.asciz	"int_fast32_t"          # string offset=1907
.Linfo_string147:
	.asciz	"int_fast64_t"          # string offset=1920
.Linfo_string148:
	.asciz	"__int_least8_t"        # string offset=1933
.Linfo_string149:
	.asciz	"int_least8_t"          # string offset=1948
.Linfo_string150:
	.asciz	"__int_least16_t"       # string offset=1961
.Linfo_string151:
	.asciz	"int_least16_t"         # string offset=1977
.Linfo_string152:
	.asciz	"__int_least32_t"       # string offset=1991
.Linfo_string153:
	.asciz	"int_least32_t"         # string offset=2007
.Linfo_string154:
	.asciz	"__int_least64_t"       # string offset=2021
.Linfo_string155:
	.asciz	"int_least64_t"         # string offset=2037
.Linfo_string156:
	.asciz	"__intmax_t"            # string offset=2051
.Linfo_string157:
	.asciz	"intmax_t"              # string offset=2062
.Linfo_string158:
	.asciz	"intptr_t"              # string offset=2071
.Linfo_string159:
	.asciz	"unsigned char"         # string offset=2080
.Linfo_string160:
	.asciz	"__uint8_t"             # string offset=2094
.Linfo_string161:
	.asciz	"uint8_t"               # string offset=2104
.Linfo_string162:
	.asciz	"unsigned short"        # string offset=2112
.Linfo_string163:
	.asciz	"__uint16_t"            # string offset=2127
.Linfo_string164:
	.asciz	"uint16_t"              # string offset=2138
.Linfo_string165:
	.asciz	"__uint32_t"            # string offset=2147
.Linfo_string166:
	.asciz	"uint32_t"              # string offset=2158
.Linfo_string167:
	.asciz	"__uint64_t"            # string offset=2167
.Linfo_string168:
	.asciz	"uint64_t"              # string offset=2178
.Linfo_string169:
	.asciz	"uint_fast8_t"          # string offset=2187
.Linfo_string170:
	.asciz	"uint_fast16_t"         # string offset=2200
.Linfo_string171:
	.asciz	"uint_fast32_t"         # string offset=2214
.Linfo_string172:
	.asciz	"uint_fast64_t"         # string offset=2228
.Linfo_string173:
	.asciz	"__uint_least8_t"       # string offset=2242
.Linfo_string174:
	.asciz	"uint_least8_t"         # string offset=2258
.Linfo_string175:
	.asciz	"__uint_least16_t"      # string offset=2272
.Linfo_string176:
	.asciz	"uint_least16_t"        # string offset=2289
.Linfo_string177:
	.asciz	"__uint_least32_t"      # string offset=2304
.Linfo_string178:
	.asciz	"uint_least32_t"        # string offset=2321
.Linfo_string179:
	.asciz	"__uint_least64_t"      # string offset=2336
.Linfo_string180:
	.asciz	"uint_least64_t"        # string offset=2353
.Linfo_string181:
	.asciz	"__uintmax_t"           # string offset=2368
.Linfo_string182:
	.asciz	"uintmax_t"             # string offset=2380
.Linfo_string183:
	.asciz	"uintptr_t"             # string offset=2390
.Linfo_string184:
	.asciz	"lconv"                 # string offset=2400
.Linfo_string185:
	.asciz	"setlocale"             # string offset=2406
.Linfo_string186:
	.asciz	"localeconv"            # string offset=2416
.Linfo_string187:
	.asciz	"isalnum"               # string offset=2427
.Linfo_string188:
	.asciz	"isalpha"               # string offset=2435
.Linfo_string189:
	.asciz	"iscntrl"               # string offset=2443
.Linfo_string190:
	.asciz	"isdigit"               # string offset=2451
.Linfo_string191:
	.asciz	"isgraph"               # string offset=2459
.Linfo_string192:
	.asciz	"islower"               # string offset=2467
.Linfo_string193:
	.asciz	"isprint"               # string offset=2475
.Linfo_string194:
	.asciz	"ispunct"               # string offset=2483
.Linfo_string195:
	.asciz	"isspace"               # string offset=2491
.Linfo_string196:
	.asciz	"isupper"               # string offset=2499
.Linfo_string197:
	.asciz	"isxdigit"              # string offset=2507
.Linfo_string198:
	.asciz	"tolower"               # string offset=2516
.Linfo_string199:
	.asciz	"toupper"               # string offset=2524
.Linfo_string200:
	.asciz	"isblank"               # string offset=2532
.Linfo_string201:
	.asciz	"ptrdiff_t"             # string offset=2540
.Linfo_string202:
	.asciz	"abs"                   # string offset=2550
.Linfo_string203:
	.asciz	"div_t"                 # string offset=2554
.Linfo_string204:
	.asciz	"quot"                  # string offset=2560
.Linfo_string205:
	.asciz	"rem"                   # string offset=2565
.Linfo_string206:
	.asciz	"ldiv_t"                # string offset=2569
.Linfo_string207:
	.asciz	"abort"                 # string offset=2576
.Linfo_string208:
	.asciz	"atexit"                # string offset=2582
.Linfo_string209:
	.asciz	"at_quick_exit"         # string offset=2589
.Linfo_string210:
	.asciz	"atof"                  # string offset=2603
.Linfo_string211:
	.asciz	"atoi"                  # string offset=2608
.Linfo_string212:
	.asciz	"atol"                  # string offset=2613
.Linfo_string213:
	.asciz	"bsearch"               # string offset=2618
.Linfo_string214:
	.asciz	"__compar_fn_t"         # string offset=2626
.Linfo_string215:
	.asciz	"calloc"                # string offset=2640
.Linfo_string216:
	.asciz	"div"                   # string offset=2647
.Linfo_string217:
	.asciz	"exit"                  # string offset=2651
.Linfo_string218:
	.asciz	"free"                  # string offset=2656
.Linfo_string219:
	.asciz	"getenv"                # string offset=2661
.Linfo_string220:
	.asciz	"labs"                  # string offset=2668
.Linfo_string221:
	.asciz	"ldiv"                  # string offset=2673
.Linfo_string222:
	.asciz	"malloc"                # string offset=2678
.Linfo_string223:
	.asciz	"mblen"                 # string offset=2685
.Linfo_string224:
	.asciz	"mbstowcs"              # string offset=2691
.Linfo_string225:
	.asciz	"mbtowc"                # string offset=2700
.Linfo_string226:
	.asciz	"qsort"                 # string offset=2707
.Linfo_string227:
	.asciz	"quick_exit"            # string offset=2713
.Linfo_string228:
	.asciz	"rand"                  # string offset=2724
.Linfo_string229:
	.asciz	"realloc"               # string offset=2729
.Linfo_string230:
	.asciz	"srand"                 # string offset=2737
.Linfo_string231:
	.asciz	"strtod"                # string offset=2743
.Linfo_string232:
	.asciz	"strtol"                # string offset=2750
.Linfo_string233:
	.asciz	"strtoul"               # string offset=2757
.Linfo_string234:
	.asciz	"system"                # string offset=2765
.Linfo_string235:
	.asciz	"wcstombs"              # string offset=2772
.Linfo_string236:
	.asciz	"wctomb"                # string offset=2781
.Linfo_string237:
	.asciz	"lldiv_t"               # string offset=2788
.Linfo_string238:
	.asciz	"_Exit"                 # string offset=2796
.Linfo_string239:
	.asciz	"llabs"                 # string offset=2802
.Linfo_string240:
	.asciz	"lldiv"                 # string offset=2808
.Linfo_string241:
	.asciz	"atoll"                 # string offset=2814
.Linfo_string242:
	.asciz	"strtoll"               # string offset=2820
.Linfo_string243:
	.asciz	"strtoull"              # string offset=2828
.Linfo_string244:
	.asciz	"strtof"                # string offset=2837
.Linfo_string245:
	.asciz	"strtold"               # string offset=2844
.Linfo_string246:
	.asciz	"_ZN9__gnu_cxx3divExx"  # string offset=2852
.Linfo_string247:
	.asciz	"FILE"                  # string offset=2873
.Linfo_string248:
	.asciz	"_G_fpos_t"             # string offset=2878
.Linfo_string249:
	.asciz	"__fpos_t"              # string offset=2888
.Linfo_string250:
	.asciz	"fpos_t"                # string offset=2897
.Linfo_string251:
	.asciz	"clearerr"              # string offset=2904
.Linfo_string252:
	.asciz	"fclose"                # string offset=2913
.Linfo_string253:
	.asciz	"feof"                  # string offset=2920
.Linfo_string254:
	.asciz	"ferror"                # string offset=2925
.Linfo_string255:
	.asciz	"fflush"                # string offset=2932
.Linfo_string256:
	.asciz	"fgetc"                 # string offset=2939
.Linfo_string257:
	.asciz	"fgetpos"               # string offset=2945
.Linfo_string258:
	.asciz	"fgets"                 # string offset=2953
.Linfo_string259:
	.asciz	"fopen"                 # string offset=2959
.Linfo_string260:
	.asciz	"fprintf"               # string offset=2965
.Linfo_string261:
	.asciz	"fputc"                 # string offset=2973
.Linfo_string262:
	.asciz	"fputs"                 # string offset=2979
.Linfo_string263:
	.asciz	"fread"                 # string offset=2985
.Linfo_string264:
	.asciz	"freopen"               # string offset=2991
.Linfo_string265:
	.asciz	"__isoc99_fscanf"       # string offset=2999
.Linfo_string266:
	.asciz	"fscanf"                # string offset=3015
.Linfo_string267:
	.asciz	"fseek"                 # string offset=3022
.Linfo_string268:
	.asciz	"fsetpos"               # string offset=3028
.Linfo_string269:
	.asciz	"ftell"                 # string offset=3036
.Linfo_string270:
	.asciz	"fwrite"                # string offset=3042
.Linfo_string271:
	.asciz	"getc"                  # string offset=3049
.Linfo_string272:
	.asciz	"getchar"               # string offset=3054
.Linfo_string273:
	.asciz	"perror"                # string offset=3062
.Linfo_string274:
	.asciz	"printf"                # string offset=3069
.Linfo_string275:
	.asciz	"putc"                  # string offset=3076
.Linfo_string276:
	.asciz	"putchar"               # string offset=3081
.Linfo_string277:
	.asciz	"puts"                  # string offset=3089
.Linfo_string278:
	.asciz	"remove"                # string offset=3094
.Linfo_string279:
	.asciz	"rename"                # string offset=3101
.Linfo_string280:
	.asciz	"rewind"                # string offset=3108
.Linfo_string281:
	.asciz	"__isoc99_scanf"        # string offset=3115
.Linfo_string282:
	.asciz	"scanf"                 # string offset=3130
.Linfo_string283:
	.asciz	"setbuf"                # string offset=3136
.Linfo_string284:
	.asciz	"setvbuf"               # string offset=3143
.Linfo_string285:
	.asciz	"sprintf"               # string offset=3151
.Linfo_string286:
	.asciz	"__isoc99_sscanf"       # string offset=3159
.Linfo_string287:
	.asciz	"sscanf"                # string offset=3175
.Linfo_string288:
	.asciz	"tmpfile"               # string offset=3182
.Linfo_string289:
	.asciz	"tmpnam"                # string offset=3190
.Linfo_string290:
	.asciz	"ungetc"                # string offset=3197
.Linfo_string291:
	.asciz	"vfprintf"              # string offset=3204
.Linfo_string292:
	.asciz	"vprintf"               # string offset=3213
.Linfo_string293:
	.asciz	"vsprintf"              # string offset=3221
.Linfo_string294:
	.asciz	"snprintf"              # string offset=3230
.Linfo_string295:
	.asciz	"__isoc99_vfscanf"      # string offset=3239
.Linfo_string296:
	.asciz	"vfscanf"               # string offset=3256
.Linfo_string297:
	.asciz	"__isoc99_vscanf"       # string offset=3264
.Linfo_string298:
	.asciz	"vscanf"                # string offset=3280
.Linfo_string299:
	.asciz	"vsnprintf"             # string offset=3287
.Linfo_string300:
	.asciz	"__isoc99_vsscanf"      # string offset=3297
.Linfo_string301:
	.asciz	"vsscanf"               # string offset=3314
.Linfo_string302:
	.asciz	"wctrans_t"             # string offset=3322
.Linfo_string303:
	.asciz	"wctype_t"              # string offset=3332
.Linfo_string304:
	.asciz	"iswalnum"              # string offset=3341
.Linfo_string305:
	.asciz	"iswalpha"              # string offset=3350
.Linfo_string306:
	.asciz	"iswblank"              # string offset=3359
.Linfo_string307:
	.asciz	"iswcntrl"              # string offset=3368
.Linfo_string308:
	.asciz	"iswctype"              # string offset=3377
.Linfo_string309:
	.asciz	"iswdigit"              # string offset=3386
.Linfo_string310:
	.asciz	"iswgraph"              # string offset=3395
.Linfo_string311:
	.asciz	"iswlower"              # string offset=3404
.Linfo_string312:
	.asciz	"iswprint"              # string offset=3413
.Linfo_string313:
	.asciz	"iswpunct"              # string offset=3422
.Linfo_string314:
	.asciz	"iswspace"              # string offset=3431
.Linfo_string315:
	.asciz	"iswupper"              # string offset=3440
.Linfo_string316:
	.asciz	"iswxdigit"             # string offset=3449
.Linfo_string317:
	.asciz	"towctrans"             # string offset=3459
.Linfo_string318:
	.asciz	"towlower"              # string offset=3469
.Linfo_string319:
	.asciz	"towupper"              # string offset=3478
.Linfo_string320:
	.asciz	"wctrans"               # string offset=3487
.Linfo_string321:
	.asciz	"wctype"                # string offset=3495
.Linfo_string322:
	.asciz	"i"                     # string offset=3502
.Linfo_string323:
	.asciz	"DinosaurException"     # string offset=3504
.Linfo_string324:
	.asciz	"~DinosaurException"    # string offset=3522
.Linfo_string325:
	.asciz	"__cxx_global_var_init" # string offset=3541
.Linfo_string326:
	.asciz	"_Z19throw_the_exceptionb" # string offset=3563
.Linfo_string327:
	.asciz	"throw_the_exception"   # string offset=3588
.Linfo_string328:
	.asciz	"_ZN17DinosaurExceptionC2Ev" # string offset=3608
.Linfo_string329:
	.asciz	"_ZN17DinosaurExceptionD2Ev" # string offset=3635
.Linfo_string330:
	.asciz	"_Z14hello_dinosaurv"   # string offset=3662
.Linfo_string331:
	.asciz	"hello_dinosaur"        # string offset=3682
.Linfo_string332:
	.asciz	"_Z3logj"               # string offset=3697
.Linfo_string333:
	.asciz	"log"                   # string offset=3705
.Linfo_string334:
	.asciz	"_Z19catch_the_exceptionv" # string offset=3709
.Linfo_string335:
	.asciz	"catch_the_exception"   # string offset=3734
.Linfo_string336:
	.asciz	"main"                  # string offset=3754
.Linfo_string337:
	.asciz	"_GLOBAL__sub_I_exception.cpp" # string offset=3759
.Linfo_string338:
	.asciz	"throwit"               # string offset=3788
.Linfo_string339:
	.asciz	"this"                  # string offset=3796
.Linfo_string340:
	.asciz	"count"                 # string offset=3801
.Linfo_string341:
	.asciz	"e"                     # string offset=3807
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	85                      # DW_AT_ranges
	.byte	23                      # DW_FORM_sec_offset
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	54                      # DW_AT_calling_convention
	.byte	11                      # DW_FORM_data1
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	8                       # DW_TAG_imported_declaration
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	8                       # DW_TAG_imported_declaration
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	54                      # DW_AT_calling_convention
	.byte	11                      # DW_FORM_data1
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	99                      # DW_AT_explicit
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	99                      # DW_AT_explicit
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	2                       # DW_TAG_class_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	57                      # DW_TAG_namespace
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	16                      # DW_TAG_reference_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	31                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	54                      # DW_AT_calling_convention
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	32                      # Abbreviation Code
	.byte	23                      # DW_TAG_union_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	54                      # DW_AT_calling_convention
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	33                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	34                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	34                      # DW_AT_lower_bound
	.byte	11                      # DW_FORM_data1
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	35                      # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	36                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	37                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	38                      # Abbreviation Code
	.byte	55                      # DW_TAG_restrict_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	39                      # Abbreviation Code
	.byte	24                      # DW_TAG_unspecified_parameters
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	40                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	41                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	42                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	54                      # DW_AT_calling_convention
	.byte	11                      # DW_FORM_data1
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	43                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	44                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	45                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	46                      # Abbreviation Code
	.byte	59                      # DW_TAG_unspecified_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	47                      # Abbreviation Code
	.byte	66                      # DW_TAG_rvalue_reference_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	48                      # Abbreviation Code
	.byte	58                      # DW_TAG_imported_module
	.byte	0                       # DW_CHILDREN_no
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	24                      # DW_AT_import
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	49                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	50                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	0                       # DW_CHILDREN_no
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	51                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	52                      # Abbreviation Code
	.byte	21                      # DW_TAG_subroutine_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	53                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	54                      # Abbreviation Code
	.byte	21                      # DW_TAG_subroutine_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	55                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.ascii	"\207\001"              # DW_AT_noreturn
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	56                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	60                      # DW_AT_declaration
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	57                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	58                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	59                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	60                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	61                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	100                     # DW_AT_object_pointer
	.byte	19                      # DW_FORM_ref4
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	71                      # DW_AT_specification
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	62                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	63                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	64                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	65                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	66                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	110                     # DW_AT_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	52                      # DW_AT_artificial
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                       # DWARF version number
	.long	.debug_abbrev           # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x1e93 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	33                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	0                       # DW_AT_low_pc
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	2                       # Abbrev [2] 0x2a:0x837 DW_TAG_namespace
	.long	.Linfo_string3          # DW_AT_name
	.byte	3                       # Abbrev [3] 0x2f:0x19 DW_TAG_variable
	.long	.Linfo_string4          # DW_AT_name
	.long	77                      # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	_ZStL8__ioinit
	.long	.Linfo_string15         # DW_AT_linkage_name
	.byte	4                       # Abbrev [4] 0x48:0x77 DW_TAG_class_type
	.long	.Linfo_string5          # DW_AT_name
                                        # DW_AT_declaration
	.byte	5                       # Abbrev [5] 0x4d:0x71 DW_TAG_class_type
	.byte	4                       # DW_AT_calling_convention
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.short	603                     # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x57:0xc DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	2145                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	616                     # DW_AT_decl_line
                                        # DW_AT_external
                                        # DW_AT_declaration
	.byte	6                       # Abbrev [6] 0x63:0xc DW_TAG_member
	.long	.Linfo_string9          # DW_AT_name
	.long	2163                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	617                     # DW_AT_decl_line
                                        # DW_AT_external
                                        # DW_AT_declaration
	.byte	7                       # Abbrev [7] 0x6f:0xf DW_TAG_subprogram
	.long	.Linfo_string11         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.short	607                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x78:0x5 DW_TAG_formal_parameter
	.long	2170                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x7e:0xf DW_TAG_subprogram
	.long	.Linfo_string12         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.short	608                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x87:0x5 DW_TAG_formal_parameter
	.long	2170                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x8d:0x14 DW_TAG_subprogram
	.long	.Linfo_string11         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.short	611                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x96:0x5 DW_TAG_formal_parameter
	.long	2170                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x9b:0x5 DW_TAG_formal_parameter
	.long	2175                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0xa1:0x1c DW_TAG_subprogram
	.long	.Linfo_string13         # DW_AT_linkage_name
	.long	.Linfo_string14         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.short	612                     # DW_AT_decl_line
	.long	2185                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0xb2:0x5 DW_TAG_formal_parameter
	.long	2170                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0xb7:0x5 DW_TAG_formal_parameter
	.long	2175                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0xbf:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	2190                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xc6:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	2306                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xcd:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	2317                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xd4:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	2335                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xdb:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	2374                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xe2:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	2424                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xe9:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	2447                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xf0:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	2485                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xf7:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.long	2508                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfe:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.long	2532                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x105:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.long	2560                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x10c:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	152                     # DW_AT_decl_line
	.long	2578                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x113:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	2590                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x11a:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.long	2661                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x121:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	2694                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x128:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	156                     # DW_AT_decl_line
	.long	2722                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x12f:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
	.long	2765                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x136:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	158                     # DW_AT_decl_line
	.long	2788                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x13d:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.long	2806                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x144:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.long	2835                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x14b:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	163                     # DW_AT_decl_line
	.long	2863                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x152:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	2886                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x159:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	2968                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x160:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	3000                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x167:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	172                     # DW_AT_decl_line
	.long	3033                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x16e:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	174                     # DW_AT_decl_line
	.long	3065                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x175:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	3088                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x17c:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	178                     # DW_AT_decl_line
	.long	3115                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x183:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	3153                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x18a:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.long	3175                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x191:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	181                     # DW_AT_decl_line
	.long	3197                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x198:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	182                     # DW_AT_decl_line
	.long	3219                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x19f:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	183                     # DW_AT_decl_line
	.long	3241                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1a6:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	184                     # DW_AT_decl_line
	.long	3263                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1ad:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	185                     # DW_AT_decl_line
	.long	3316                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1b4:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	186                     # DW_AT_decl_line
	.long	3333                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1bb:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	3360                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1c2:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.long	3387                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1c9:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.long	3414                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1d0:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	190                     # DW_AT_decl_line
	.long	3457                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1d7:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	191                     # DW_AT_decl_line
	.long	3479                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1de:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	193                     # DW_AT_decl_line
	.long	3519                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1e5:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	195                     # DW_AT_decl_line
	.long	3549                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1ec:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	196                     # DW_AT_decl_line
	.long	3576                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1f3:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	197                     # DW_AT_decl_line
	.long	3611                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1fa:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	198                     # DW_AT_decl_line
	.long	3639                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x201:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	199                     # DW_AT_decl_line
	.long	3666                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x208:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	3684                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x20f:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	3712                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x216:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	202                     # DW_AT_decl_line
	.long	3740                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x21d:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	203                     # DW_AT_decl_line
	.long	3768                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x224:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	204                     # DW_AT_decl_line
	.long	3796                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x22b:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	205                     # DW_AT_decl_line
	.long	3815                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x232:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	3838                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x239:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	207                     # DW_AT_decl_line
	.long	3860                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x240:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	208                     # DW_AT_decl_line
	.long	3882                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x247:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	209                     # DW_AT_decl_line
	.long	3904                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x24e:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	210                     # DW_AT_decl_line
	.long	3926                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x255:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	267                     # DW_AT_decl_line
	.long	4120                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x25d:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.long	4150                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x265:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	269                     # DW_AT_decl_line
	.long	4185                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x26d:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	283                     # DW_AT_decl_line
	.long	3519                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x275:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	286                     # DW_AT_decl_line
	.long	2968                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x27d:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.long	3033                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x285:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.long	3088                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x28d:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.long	4120                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x295:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	297                     # DW_AT_decl_line
	.long	4150                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0x29d:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	298                     # DW_AT_decl_line
	.long	4185                    # DW_AT_import
	.byte	2                       # Abbrev [2] 0x2a5:0x13a DW_TAG_namespace
	.long	.Linfo_string109        # DW_AT_name
	.byte	13                      # Abbrev [13] 0x2aa:0x12d DW_TAG_class_type
	.byte	4                       # DW_AT_calling_convention
	.long	.Linfo_string111        # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	11                      # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x2b3:0xc DW_TAG_member
	.long	.Linfo_string110        # DW_AT_name
	.long	2967                    # DW_AT_type
	.byte	11                      # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	15                      # Abbrev [15] 0x2bf:0x12 DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_explicit
	.byte	8                       # Abbrev [8] 0x2c6:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x2cb:0x5 DW_TAG_formal_parameter
	.long	2967                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x2d1:0x11 DW_TAG_subprogram
	.long	.Linfo_string112        # DW_AT_linkage_name
	.long	.Linfo_string113        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	85                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2dc:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	16                      # Abbrev [16] 0x2e2:0x11 DW_TAG_subprogram
	.long	.Linfo_string114        # DW_AT_linkage_name
	.long	.Linfo_string115        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x2ed:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x2f3:0x15 DW_TAG_subprogram
	.long	.Linfo_string116        # DW_AT_linkage_name
	.long	.Linfo_string117        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	88                      # DW_AT_decl_line
	.long	2967                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	8                       # Abbrev [8] 0x302:0x5 DW_TAG_formal_parameter
	.long	4225                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x308:0xe DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x310:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x316:0x13 DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x31e:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x323:0x5 DW_TAG_formal_parameter
	.long	4235                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x329:0x13 DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x331:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x336:0x5 DW_TAG_formal_parameter
	.long	991                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x33c:0x13 DW_TAG_subprogram
	.long	.Linfo_string111        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x344:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x349:0x5 DW_TAG_formal_parameter
	.long	4245                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x34f:0x1b DW_TAG_subprogram
	.long	.Linfo_string120        # DW_AT_linkage_name
	.long	.Linfo_string14         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	4250                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x35f:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x364:0x5 DW_TAG_formal_parameter
	.long	4235                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x36a:0x1b DW_TAG_subprogram
	.long	.Linfo_string121        # DW_AT_linkage_name
	.long	.Linfo_string14         # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	4250                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x37a:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x37f:0x5 DW_TAG_formal_parameter
	.long	4245                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x385:0xe DW_TAG_subprogram
	.long	.Linfo_string122        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	129                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x38d:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x393:0x17 DW_TAG_subprogram
	.long	.Linfo_string123        # DW_AT_linkage_name
	.long	.Linfo_string124        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x39f:0x5 DW_TAG_formal_parameter
	.long	4220                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	9                       # Abbrev [9] 0x3a4:0x5 DW_TAG_formal_parameter
	.long	4250                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	21                      # Abbrev [21] 0x3aa:0x16 DW_TAG_subprogram
	.long	.Linfo_string125        # DW_AT_linkage_name
	.long	.Linfo_string126        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	2163                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
                                        # DW_AT_explicit
	.byte	8                       # Abbrev [8] 0x3ba:0x5 DW_TAG_formal_parameter
	.long	4225                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	19                      # Abbrev [19] 0x3c0:0x16 DW_TAG_subprogram
	.long	.Linfo_string127        # DW_AT_linkage_name
	.long	.Linfo_string128        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	4255                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x3d0:0x5 DW_TAG_formal_parameter
	.long	4225                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x3d7:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	1015                    # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	22                      # Abbrev [22] 0x3df:0xc DW_TAG_typedef
	.long	4240                    # DW_AT_type
	.long	.Linfo_string119        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	23                      # Abbrev [23] 0x3eb:0x5 DW_TAG_class_type
	.long	.Linfo_string129        # DW_AT_name
                                        # DW_AT_declaration
	.byte	11                      # Abbrev [11] 0x3f0:0x7 DW_TAG_imported_declaration
	.byte	11                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	682                     # DW_AT_import
	.byte	24                      # Abbrev [24] 0x3f7:0x11 DW_TAG_subprogram
	.long	.Linfo_string130        # DW_AT_linkage_name
	.long	.Linfo_string131        # DW_AT_name
	.byte	11                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	9                       # Abbrev [9] 0x402:0x5 DW_TAG_formal_parameter
	.long	682                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	25                      # Abbrev [25] 0x408:0x5 DW_TAG_namespace
	.long	.Linfo_string133        # DW_AT_name
	.byte	11                      # Abbrev [11] 0x40d:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	47                      # DW_AT_decl_line
	.long	4278                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x414:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.long	4307                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x41b:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.long	4336                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x422:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.long	4358                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x429:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	4380                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x430:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	4391                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x437:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	4402                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x43e:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	4413                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x445:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.long	4424                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x44c:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	4446                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x453:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.long	4468                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x45a:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.long	4490                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x461:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	4512                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x468:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	63                      # DW_AT_decl_line
	.long	4534                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x46f:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	4545                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x476:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	4574                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x47d:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	4603                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x484:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	4625                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x48b:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	4647                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x492:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	4658                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x499:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	4669                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4a0:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	4680                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4a7:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	4691                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4ae:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	4713                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4b5:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	4735                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4bc:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	4757                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4c3:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	4779                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4ca:0x7 DW_TAG_imported_declaration
	.byte	16                      # DW_AT_decl_file
	.byte	81                      # DW_AT_decl_line
	.long	4801                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4d1:0x7 DW_TAG_imported_declaration
	.byte	19                      # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	4812                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4d8:0x7 DW_TAG_imported_declaration
	.byte	19                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	4817                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4df:0x7 DW_TAG_imported_declaration
	.byte	19                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	4839                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4e6:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	64                      # DW_AT_decl_line
	.long	4855                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4ed:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	65                      # DW_AT_decl_line
	.long	4872                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4f4:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.long	4889                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x4fb:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	67                      # DW_AT_decl_line
	.long	4906                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x502:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.long	4923                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x509:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.long	4940                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x510:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.long	4957                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x517:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.long	4974                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x51e:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.long	4991                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x525:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.long	5008                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x52c:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	5025                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x533:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	5042                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x53a:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	5059                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x541:0x7 DW_TAG_imported_declaration
	.byte	22                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	5076                    # DW_AT_import
	.byte	26                      # Abbrev [26] 0x548:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string42         # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x553:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string201        # DW_AT_name
	.byte	12                      # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x55e:0x7 DW_TAG_imported_declaration
	.byte	25                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	5093                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x565:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	5111                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x56c:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	5123                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x573:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	5164                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x57a:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	5172                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x581:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	5196                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x588:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	5214                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x58f:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	5231                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x596:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	142                     # DW_AT_decl_line
	.long	5248                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x59d:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	5265                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5a4:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	5342                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5ab:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	5365                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5b2:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	5388                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5b9:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	147                     # DW_AT_decl_line
	.long	5402                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5c0:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	5416                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5c7:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	149                     # DW_AT_decl_line
	.long	5434                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5ce:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.long	5452                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5d5:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	151                     # DW_AT_decl_line
	.long	5475                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5dc:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	153                     # DW_AT_decl_line
	.long	5493                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5e3:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	154                     # DW_AT_decl_line
	.long	5516                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5ea:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	5544                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5f1:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
	.long	5572                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5f8:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.long	5601                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x5ff:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	163                     # DW_AT_decl_line
	.long	5615                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x606:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	5627                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x60d:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	165                     # DW_AT_decl_line
	.long	5650                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x614:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	5664                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x61b:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	167                     # DW_AT_decl_line
	.long	5696                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x622:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	168                     # DW_AT_decl_line
	.long	5723                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x629:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	5750                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x630:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	171                     # DW_AT_decl_line
	.long	5768                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x637:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	172                     # DW_AT_decl_line
	.long	5796                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x63e:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	240                     # DW_AT_decl_line
	.long	5819                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x645:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	242                     # DW_AT_decl_line
	.long	5860                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x64c:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	244                     # DW_AT_decl_line
	.long	5874                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x653:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.long	4058                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x65a:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.long	5892                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x661:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	248                     # DW_AT_decl_line
	.long	5915                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x668:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	249                     # DW_AT_decl_line
	.long	5986                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x66f:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	250                     # DW_AT_decl_line
	.long	5932                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x676:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.long	5959                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x67d:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.long	6008                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x684:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	6030                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x68b:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	6041                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x692:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	6068                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x699:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.long	6087                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6a0:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	6104                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6a7:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	6122                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6ae:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	6140                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6b5:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	6157                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6bc:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	107                     # DW_AT_decl_line
	.long	6175                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6c3:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	6213                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6ca:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	109                     # DW_AT_decl_line
	.long	6241                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6d1:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	6263                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6d8:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	111                     # DW_AT_decl_line
	.long	6287                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6df:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	6310                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6e6:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	113                     # DW_AT_decl_line
	.long	6333                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6ed:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	114                     # DW_AT_decl_line
	.long	6371                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6f4:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	115                     # DW_AT_decl_line
	.long	6398                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x6fb:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	116                     # DW_AT_decl_line
	.long	6426                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x702:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	6454                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x709:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	6487                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x710:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	119                     # DW_AT_decl_line
	.long	6505                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x717:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	6543                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x71e:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	121                     # DW_AT_decl_line
	.long	6561                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x725:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.long	6573                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x72c:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	127                     # DW_AT_decl_line
	.long	6587                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x733:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	128                     # DW_AT_decl_line
	.long	6606                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x73a:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	129                     # DW_AT_decl_line
	.long	6629                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x741:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	6647                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x748:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.long	6665                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x74f:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.long	6682                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x756:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	133                     # DW_AT_decl_line
	.long	6704                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x75d:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	134                     # DW_AT_decl_line
	.long	6718                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x764:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	6741                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x76b:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	136                     # DW_AT_decl_line
	.long	6760                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x772:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	137                     # DW_AT_decl_line
	.long	6793                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x779:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	138                     # DW_AT_decl_line
	.long	6817                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x780:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	139                     # DW_AT_decl_line
	.long	6845                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x787:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	141                     # DW_AT_decl_line
	.long	6856                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x78e:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	143                     # DW_AT_decl_line
	.long	6873                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x795:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	144                     # DW_AT_decl_line
	.long	6896                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x79c:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	145                     # DW_AT_decl_line
	.long	6924                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7a3:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	6947                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7aa:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	185                     # DW_AT_decl_line
	.long	6975                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7b1:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	186                     # DW_AT_decl_line
	.long	7004                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7b8:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	7036                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7bf:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	188                     # DW_AT_decl_line
	.long	7063                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7c6:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	189                     # DW_AT_decl_line
	.long	7096                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7cd:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	82                      # DW_AT_decl_line
	.long	7128                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7d4:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.long	7149                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7db:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	2306                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7e2:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	7160                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7e9:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	7177                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7f0:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	89                      # DW_AT_decl_line
	.long	7194                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7f7:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	91                      # DW_AT_decl_line
	.long	7211                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x7fe:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	7228                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x805:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	93                      # DW_AT_decl_line
	.long	7250                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x80c:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	94                      # DW_AT_decl_line
	.long	7267                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x813:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	7284                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x81a:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	96                      # DW_AT_decl_line
	.long	7301                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x821:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	7318                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x828:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	98                      # DW_AT_decl_line
	.long	7335                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x82f:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	99                      # DW_AT_decl_line
	.long	7352                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x836:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	100                     # DW_AT_decl_line
	.long	7369                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x83d:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	7386                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x844:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.long	7408                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x84b:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	103                     # DW_AT_decl_line
	.long	7425                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x852:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	7442                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x859:0x7 DW_TAG_imported_declaration
	.byte	32                      # DW_AT_decl_file
	.byte	105                     # DW_AT_decl_line
	.long	7459                    # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x861:0xb DW_TAG_typedef
	.long	2156                    # DW_AT_type
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x86c:0x7 DW_TAG_base_type
	.long	.Linfo_string7          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	27                      # Abbrev [27] 0x873:0x7 DW_TAG_base_type
	.long	.Linfo_string10         # DW_AT_name
	.byte	2                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	28                      # Abbrev [28] 0x87a:0x5 DW_TAG_pointer_type
	.long	77                      # DW_AT_type
	.byte	29                      # Abbrev [29] 0x87f:0x5 DW_TAG_reference_type
	.long	2180                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x884:0x5 DW_TAG_const_type
	.long	77                      # DW_AT_type
	.byte	29                      # Abbrev [29] 0x889:0x5 DW_TAG_reference_type
	.long	77                      # DW_AT_type
	.byte	26                      # Abbrev [26] 0x88e:0xb DW_TAG_typedef
	.long	2201                    # DW_AT_type
	.long	.Linfo_string24         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x899:0xb DW_TAG_typedef
	.long	2212                    # DW_AT_type
	.long	.Linfo_string23         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	31                      # Abbrev [31] 0x8a4:0x3c DW_TAG_structure_type
	.byte	5                       # DW_AT_calling_convention
	.byte	8                       # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	13                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x8a9:0xc DW_TAG_member
	.long	.Linfo_string16         # DW_AT_name
	.long	2156                    # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	14                      # Abbrev [14] 0x8b5:0xc DW_TAG_member
	.long	.Linfo_string17         # DW_AT_name
	.long	2241                    # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	32                      # Abbrev [32] 0x8c1:0x1e DW_TAG_union_type
	.byte	5                       # DW_AT_calling_convention
	.byte	4                       # DW_AT_byte_size
	.byte	4                       # DW_AT_decl_file
	.byte	16                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x8c6:0xc DW_TAG_member
	.long	.Linfo_string18         # DW_AT_name
	.long	2272                    # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	18                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	14                      # Abbrev [14] 0x8d2:0xc DW_TAG_member
	.long	.Linfo_string20         # DW_AT_name
	.long	2279                    # DW_AT_type
	.byte	4                       # DW_AT_decl_file
	.byte	19                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x8e0:0x7 DW_TAG_base_type
	.long	.Linfo_string19         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	33                      # Abbrev [33] 0x8e7:0xd DW_TAG_array_type
	.long	2292                    # DW_AT_type
	.byte	34                      # Abbrev [34] 0x8ec:0x7 DW_TAG_subrange_type
	.long	2299                    # DW_AT_type
	.byte	0                       # DW_AT_lower_bound
	.byte	4                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x8f4:0x7 DW_TAG_base_type
	.long	.Linfo_string21         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	35                      # Abbrev [35] 0x8fb:0x7 DW_TAG_base_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	26                      # Abbrev [26] 0x902:0xb DW_TAG_typedef
	.long	2272                    # DW_AT_type
	.long	.Linfo_string25         # DW_AT_name
	.byte	7                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	36                      # Abbrev [36] 0x90d:0x12 DW_TAG_subprogram
	.long	.Linfo_string26         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x919:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x91f:0x12 DW_TAG_subprogram
	.long	.Linfo_string27         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	726                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x92b:0x5 DW_TAG_formal_parameter
	.long	2353                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x931:0x5 DW_TAG_pointer_type
	.long	2358                    # DW_AT_type
	.byte	26                      # Abbrev [26] 0x936:0xb DW_TAG_typedef
	.long	2369                    # DW_AT_type
	.long	.Linfo_string29         # DW_AT_name
	.byte	9                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.byte	37                      # Abbrev [37] 0x941:0x5 DW_TAG_structure_type
	.long	.Linfo_string28         # DW_AT_name
                                        # DW_AT_declaration
	.byte	36                      # Abbrev [36] 0x946:0x1c DW_TAG_subprogram
	.long	.Linfo_string30         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	755                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x952:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x957:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x95c:0x5 DW_TAG_formal_parameter
	.long	2419                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x962:0x5 DW_TAG_pointer_type
	.long	2407                    # DW_AT_type
	.byte	27                      # Abbrev [27] 0x967:0x7 DW_TAG_base_type
	.long	.Linfo_string31         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	38                      # Abbrev [38] 0x96e:0x5 DW_TAG_restrict_type
	.long	2402                    # DW_AT_type
	.byte	38                      # Abbrev [38] 0x973:0x5 DW_TAG_restrict_type
	.long	2353                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x978:0x17 DW_TAG_subprogram
	.long	.Linfo_string32         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	740                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x984:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x989:0x5 DW_TAG_formal_parameter
	.long	2353                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x98f:0x17 DW_TAG_subprogram
	.long	.Linfo_string33         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	762                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x99b:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x9a0:0x5 DW_TAG_formal_parameter
	.long	2419                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0x9a6:0x5 DW_TAG_restrict_type
	.long	2475                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0x9ab:0x5 DW_TAG_pointer_type
	.long	2480                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x9b0:0x5 DW_TAG_const_type
	.long	2407                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x9b5:0x17 DW_TAG_subprogram
	.long	.Linfo_string34         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	573                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x9c1:0x5 DW_TAG_formal_parameter
	.long	2353                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x9c6:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x9cc:0x18 DW_TAG_subprogram
	.long	.Linfo_string35         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	580                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x9d8:0x5 DW_TAG_formal_parameter
	.long	2419                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x9dd:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x9e2:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x9e4:0x1c DW_TAG_subprogram
	.long	.Linfo_string36         # DW_AT_linkage_name
	.long	.Linfo_string37         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	640                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x9f4:0x5 DW_TAG_formal_parameter
	.long	2419                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x9f9:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x9fe:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xa00:0x12 DW_TAG_subprogram
	.long	.Linfo_string38         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	727                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xa0c:0x5 DW_TAG_formal_parameter
	.long	2353                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0xa12:0xc DW_TAG_subprogram
	.long	.Linfo_string39         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	733                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	36                      # Abbrev [36] 0xa1e:0x1c DW_TAG_subprogram
	.long	.Linfo_string40         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	307                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xa2a:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xa2f:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xa34:0x5 DW_TAG_formal_parameter
	.long	2651                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0xa3a:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string42         # DW_AT_name
	.byte	10                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0xa45:0x7 DW_TAG_base_type
	.long	.Linfo_string41         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	38                      # Abbrev [38] 0xa4c:0x5 DW_TAG_restrict_type
	.long	2641                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xa51:0x5 DW_TAG_pointer_type
	.long	2646                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0xa56:0x5 DW_TAG_const_type
	.long	2292                    # DW_AT_type
	.byte	38                      # Abbrev [38] 0xa5b:0x5 DW_TAG_restrict_type
	.long	2656                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xa60:0x5 DW_TAG_pointer_type
	.long	2190                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0xa65:0x21 DW_TAG_subprogram
	.long	.Linfo_string43         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	296                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xa71:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xa76:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xa7b:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xa80:0x5 DW_TAG_formal_parameter
	.long	2651                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xa86:0x12 DW_TAG_subprogram
	.long	.Linfo_string44         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	292                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xa92:0x5 DW_TAG_formal_parameter
	.long	2712                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0xa98:0x5 DW_TAG_pointer_type
	.long	2717                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0xa9d:0x5 DW_TAG_const_type
	.long	2190                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0xaa2:0x21 DW_TAG_subprogram
	.long	.Linfo_string45         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	337                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xaae:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xab3:0x5 DW_TAG_formal_parameter
	.long	2755                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xab8:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xabd:0x5 DW_TAG_formal_parameter
	.long	2651                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0xac3:0x5 DW_TAG_restrict_type
	.long	2760                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xac8:0x5 DW_TAG_pointer_type
	.long	2641                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0xacd:0x17 DW_TAG_subprogram
	.long	.Linfo_string46         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	741                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xad9:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xade:0x5 DW_TAG_formal_parameter
	.long	2353                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xae4:0x12 DW_TAG_subprogram
	.long	.Linfo_string47         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	747                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xaf0:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xaf6:0x1d DW_TAG_subprogram
	.long	.Linfo_string48         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	590                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xb02:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb07:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb0c:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0xb11:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0xb13:0x1c DW_TAG_subprogram
	.long	.Linfo_string49         # DW_AT_linkage_name
	.long	.Linfo_string50         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	647                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xb23:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb28:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0xb2d:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xb2f:0x17 DW_TAG_subprogram
	.long	.Linfo_string51         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	770                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xb3b:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb40:0x5 DW_TAG_formal_parameter
	.long	2353                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xb46:0x1c DW_TAG_subprogram
	.long	.Linfo_string52         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	598                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xb52:0x5 DW_TAG_formal_parameter
	.long	2419                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb57:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xb5c:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0xb62:0x5 DW_TAG_pointer_type
	.long	2919                    # DW_AT_type
	.byte	42                      # Abbrev [42] 0xb67:0x30 DW_TAG_structure_type
	.byte	5                       # DW_AT_calling_convention
	.long	.Linfo_string57         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	43                      # Abbrev [43] 0xb6e:0xa DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	2272                    # DW_AT_type
	.byte	0                       # DW_AT_data_member_location
	.byte	43                      # Abbrev [43] 0xb78:0xa DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	2272                    # DW_AT_type
	.byte	4                       # DW_AT_data_member_location
	.byte	43                      # Abbrev [43] 0xb82:0xa DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	2967                    # DW_AT_type
	.byte	8                       # DW_AT_data_member_location
	.byte	43                      # Abbrev [43] 0xb8c:0xa DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	2967                    # DW_AT_type
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	44                      # Abbrev [44] 0xb97:0x1 DW_TAG_pointer_type
	.byte	40                      # Abbrev [40] 0xb98:0x20 DW_TAG_subprogram
	.long	.Linfo_string58         # DW_AT_linkage_name
	.long	.Linfo_string59         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	693                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xba8:0x5 DW_TAG_formal_parameter
	.long	2419                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbad:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbb2:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xbb8:0x21 DW_TAG_subprogram
	.long	.Linfo_string60         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	611                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xbc4:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbc9:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbce:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbd3:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0xbd9:0x20 DW_TAG_subprogram
	.long	.Linfo_string61         # DW_AT_linkage_name
	.long	.Linfo_string62         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	700                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xbe9:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbee:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xbf3:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xbf9:0x17 DW_TAG_subprogram
	.long	.Linfo_string63         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	606                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc05:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc0a:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0xc10:0x1b DW_TAG_subprogram
	.long	.Linfo_string64         # DW_AT_linkage_name
	.long	.Linfo_string65         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	697                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc20:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc25:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xc2b:0x1c DW_TAG_subprogram
	.long	.Linfo_string66         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	301                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc37:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc3c:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc41:0x5 DW_TAG_formal_parameter
	.long	2651                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0xc47:0x5 DW_TAG_restrict_type
	.long	3148                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xc4c:0x5 DW_TAG_pointer_type
	.long	2292                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0xc51:0x16 DW_TAG_subprogram
	.long	.Linfo_string67         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	97                      # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc5c:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc61:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xc67:0x16 DW_TAG_subprogram
	.long	.Linfo_string68         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	106                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc72:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc77:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xc7d:0x16 DW_TAG_subprogram
	.long	.Linfo_string69         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc88:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xc8d:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xc93:0x16 DW_TAG_subprogram
	.long	.Linfo_string70         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xc9e:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xca3:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xca9:0x16 DW_TAG_subprogram
	.long	.Linfo_string71         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xcb4:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xcb9:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xcbf:0x21 DW_TAG_subprogram
	.long	.Linfo_string72         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	834                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xccb:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xcd0:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xcd5:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xcda:0x5 DW_TAG_formal_parameter
	.long	3296                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0xce0:0x5 DW_TAG_restrict_type
	.long	3301                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xce5:0x5 DW_TAG_pointer_type
	.long	3306                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0xcea:0x5 DW_TAG_const_type
	.long	3311                    # DW_AT_type
	.byte	37                      # Abbrev [37] 0xcef:0x5 DW_TAG_structure_type
	.long	.Linfo_string73         # DW_AT_name
                                        # DW_AT_declaration
	.byte	45                      # Abbrev [45] 0xcf4:0x11 DW_TAG_subprogram
	.long	.Linfo_string74         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	222                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xcff:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xd05:0x1b DW_TAG_subprogram
	.long	.Linfo_string75         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xd10:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd15:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd1a:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xd20:0x1b DW_TAG_subprogram
	.long	.Linfo_string76         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	109                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xd2b:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd30:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd35:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xd3b:0x1b DW_TAG_subprogram
	.long	.Linfo_string77         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	92                      # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xd46:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd4b:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd50:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xd56:0x21 DW_TAG_subprogram
	.long	.Linfo_string78         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	343                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xd62:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd67:0x5 DW_TAG_formal_parameter
	.long	3447                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd6c:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd71:0x5 DW_TAG_formal_parameter
	.long	2651                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0xd77:0x5 DW_TAG_restrict_type
	.long	3452                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xd7c:0x5 DW_TAG_pointer_type
	.long	2475                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0xd81:0x16 DW_TAG_subprogram
	.long	.Linfo_string79         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	191                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xd8c:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xd91:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xd97:0x17 DW_TAG_subprogram
	.long	.Linfo_string80         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	377                     # DW_AT_decl_line
	.long	3502                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xda3:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xda8:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0xdae:0x7 DW_TAG_base_type
	.long	.Linfo_string81         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	38                      # Abbrev [38] 0xdb5:0x5 DW_TAG_restrict_type
	.long	3514                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0xdba:0x5 DW_TAG_pointer_type
	.long	2402                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0xdbf:0x17 DW_TAG_subprogram
	.long	.Linfo_string82         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	382                     # DW_AT_decl_line
	.long	3542                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xdcb:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xdd0:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0xdd6:0x7 DW_TAG_base_type
	.long	.Linfo_string83         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	45                      # Abbrev [45] 0xddd:0x1b DW_TAG_subprogram
	.long	.Linfo_string84         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	217                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xde8:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xded:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xdf2:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xdf8:0x1c DW_TAG_subprogram
	.long	.Linfo_string85         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	428                     # DW_AT_decl_line
	.long	3604                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xe04:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe09:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe0e:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0xe14:0x7 DW_TAG_base_type
	.long	.Linfo_string86         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	36                      # Abbrev [36] 0xe1b:0x1c DW_TAG_subprogram
	.long	.Linfo_string87         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	433                     # DW_AT_decl_line
	.long	2629                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xe27:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe2c:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe31:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xe37:0x1b DW_TAG_subprogram
	.long	.Linfo_string88         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xe42:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe47:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe4c:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xe52:0x12 DW_TAG_subprogram
	.long	.Linfo_string89         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	288                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xe5e:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xe64:0x1c DW_TAG_subprogram
	.long	.Linfo_string90         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xe70:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe75:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe7a:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xe80:0x1c DW_TAG_subprogram
	.long	.Linfo_string91         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xe8c:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe91:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xe96:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xe9c:0x1c DW_TAG_subprogram
	.long	.Linfo_string92         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	267                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xea8:0x5 DW_TAG_formal_parameter
	.long	2402                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xead:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xeb2:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xeb8:0x1c DW_TAG_subprogram
	.long	.Linfo_string93         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	271                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xec4:0x5 DW_TAG_formal_parameter
	.long	2402                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xec9:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xece:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0xed4:0x13 DW_TAG_subprogram
	.long	.Linfo_string94         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	587                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xee0:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0xee5:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0xee7:0x17 DW_TAG_subprogram
	.long	.Linfo_string95         # DW_AT_linkage_name
	.long	.Linfo_string96         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	644                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xef7:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0xefc:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xefe:0x16 DW_TAG_subprogram
	.long	.Linfo_string97         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	164                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xf09:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xf0e:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xf14:0x16 DW_TAG_subprogram
	.long	.Linfo_string98         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	201                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xf1f:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xf24:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xf2a:0x16 DW_TAG_subprogram
	.long	.Linfo_string99         # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	174                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xf35:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xf3a:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xf40:0x16 DW_TAG_subprogram
	.long	.Linfo_string100        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	212                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xf4b:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xf50:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0xf56:0x1b DW_TAG_subprogram
	.long	.Linfo_string101        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.long	2402                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xf61:0x5 DW_TAG_formal_parameter
	.long	2475                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xf66:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xf6b:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	2                       # Abbrev [2] 0xf71:0xa7 DW_TAG_namespace
	.long	.Linfo_string102        # DW_AT_name
	.byte	11                      # Abbrev [11] 0xf76:0x7 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.long	4120                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0xf7d:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.long	4150                    # DW_AT_import
	.byte	12                      # Abbrev [12] 0xf85:0x8 DW_TAG_imported_declaration
	.byte	6                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.long	4185                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xf8d:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	1352                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xf94:0x7 DW_TAG_imported_declaration
	.byte	23                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	1363                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xf9b:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	5819                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfa2:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	206                     # DW_AT_decl_line
	.long	5860                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfa9:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	210                     # DW_AT_decl_line
	.long	5874                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfb0:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	216                     # DW_AT_decl_line
	.long	5892                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfb7:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	227                     # DW_AT_decl_line
	.long	5915                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfbe:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	228                     # DW_AT_decl_line
	.long	5932                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfc5:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	229                     # DW_AT_decl_line
	.long	5959                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfcc:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	231                     # DW_AT_decl_line
	.long	5986                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xfd3:0x7 DW_TAG_imported_declaration
	.byte	26                      # DW_AT_decl_file
	.byte	232                     # DW_AT_decl_line
	.long	6008                    # DW_AT_import
	.byte	17                      # Abbrev [17] 0xfda:0x1a DW_TAG_subprogram
	.long	.Linfo_string246        # DW_AT_linkage_name
	.long	.Linfo_string216        # DW_AT_name
	.byte	26                      # DW_AT_decl_file
	.byte	213                     # DW_AT_decl_line
	.long	5819                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0xfe9:0x5 DW_TAG_formal_parameter
	.long	4178                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0xfee:0x5 DW_TAG_formal_parameter
	.long	4178                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0xff4:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	175                     # DW_AT_decl_line
	.long	6975                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0xffb:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	7004                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1002:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	177                     # DW_AT_decl_line
	.long	7036                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1009:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	178                     # DW_AT_decl_line
	.long	7063                    # DW_AT_import
	.byte	11                      # Abbrev [11] 0x1010:0x7 DW_TAG_imported_declaration
	.byte	28                      # DW_AT_decl_file
	.byte	179                     # DW_AT_decl_line
	.long	7096                    # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1018:0x17 DW_TAG_subprogram
	.long	.Linfo_string103        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	384                     # DW_AT_decl_line
	.long	4143                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1024:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1029:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x102f:0x7 DW_TAG_base_type
	.long	.Linfo_string104        # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	16                      # DW_AT_byte_size
	.byte	36                      # Abbrev [36] 0x1036:0x1c DW_TAG_subprogram
	.long	.Linfo_string105        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	441                     # DW_AT_decl_line
	.long	4178                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1042:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1047:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x104c:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x1052:0x7 DW_TAG_base_type
	.long	.Linfo_string106        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	36                      # Abbrev [36] 0x1059:0x1c DW_TAG_subprogram
	.long	.Linfo_string107        # DW_AT_name
	.byte	8                       # DW_AT_decl_file
	.short	448                     # DW_AT_decl_line
	.long	4213                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1065:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x106a:0x5 DW_TAG_formal_parameter
	.long	3509                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x106f:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x1075:0x7 DW_TAG_base_type
	.long	.Linfo_string108        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	28                      # Abbrev [28] 0x107c:0x5 DW_TAG_pointer_type
	.long	682                     # DW_AT_type
	.byte	28                      # Abbrev [28] 0x1081:0x5 DW_TAG_pointer_type
	.long	4230                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x1086:0x5 DW_TAG_const_type
	.long	682                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x108b:0x5 DW_TAG_reference_type
	.long	4230                    # DW_AT_type
	.byte	46                      # Abbrev [46] 0x1090:0x5 DW_TAG_unspecified_type
	.long	.Linfo_string118        # DW_AT_name
	.byte	47                      # Abbrev [47] 0x1095:0x5 DW_TAG_rvalue_reference_type
	.long	682                     # DW_AT_type
	.byte	29                      # Abbrev [29] 0x109a:0x5 DW_TAG_reference_type
	.long	682                     # DW_AT_type
	.byte	28                      # Abbrev [28] 0x109f:0x5 DW_TAG_pointer_type
	.long	4260                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x10a4:0x5 DW_TAG_const_type
	.long	1003                    # DW_AT_type
	.byte	2                       # Abbrev [2] 0x10a9:0xd DW_TAG_namespace
	.long	.Linfo_string132        # DW_AT_name
	.byte	48                      # Abbrev [48] 0x10ae:0x7 DW_TAG_imported_module
	.byte	13                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.long	1032                    # DW_AT_import
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x10b6:0xb DW_TAG_typedef
	.long	4289                    # DW_AT_type
	.long	.Linfo_string136        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x10c1:0xb DW_TAG_typedef
	.long	4300                    # DW_AT_type
	.long	.Linfo_string135        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x10cc:0x7 DW_TAG_base_type
	.long	.Linfo_string134        # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	26                      # Abbrev [26] 0x10d3:0xb DW_TAG_typedef
	.long	4318                    # DW_AT_type
	.long	.Linfo_string139        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x10de:0xb DW_TAG_typedef
	.long	4329                    # DW_AT_type
	.long	.Linfo_string138        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	39                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x10e9:0x7 DW_TAG_base_type
	.long	.Linfo_string137        # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	26                      # Abbrev [26] 0x10f0:0xb DW_TAG_typedef
	.long	4347                    # DW_AT_type
	.long	.Linfo_string141        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x10fb:0xb DW_TAG_typedef
	.long	2156                    # DW_AT_type
	.long	.Linfo_string140        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	41                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1106:0xb DW_TAG_typedef
	.long	4369                    # DW_AT_type
	.long	.Linfo_string143        # DW_AT_name
	.byte	15                      # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1111:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string142        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x111c:0xb DW_TAG_typedef
	.long	4300                    # DW_AT_type
	.long	.Linfo_string144        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1127:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string145        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	60                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1132:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string146        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	61                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x113d:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string147        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1148:0xb DW_TAG_typedef
	.long	4435                    # DW_AT_type
	.long	.Linfo_string149        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	43                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1153:0xb DW_TAG_typedef
	.long	4289                    # DW_AT_type
	.long	.Linfo_string148        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x115e:0xb DW_TAG_typedef
	.long	4457                    # DW_AT_type
	.long	.Linfo_string151        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1169:0xb DW_TAG_typedef
	.long	4318                    # DW_AT_type
	.long	.Linfo_string150        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1174:0xb DW_TAG_typedef
	.long	4479                    # DW_AT_type
	.long	.Linfo_string153        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x117f:0xb DW_TAG_typedef
	.long	4347                    # DW_AT_type
	.long	.Linfo_string152        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	56                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x118a:0xb DW_TAG_typedef
	.long	4501                    # DW_AT_type
	.long	.Linfo_string155        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1195:0xb DW_TAG_typedef
	.long	4369                    # DW_AT_type
	.long	.Linfo_string154        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	58                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x11a0:0xb DW_TAG_typedef
	.long	4523                    # DW_AT_type
	.long	.Linfo_string157        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x11ab:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string156        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	72                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x11b6:0xb DW_TAG_typedef
	.long	3604                    # DW_AT_type
	.long	.Linfo_string158        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	87                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x11c1:0xb DW_TAG_typedef
	.long	4556                    # DW_AT_type
	.long	.Linfo_string161        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x11cc:0xb DW_TAG_typedef
	.long	4567                    # DW_AT_type
	.long	.Linfo_string160        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x11d7:0x7 DW_TAG_base_type
	.long	.Linfo_string159        # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	26                      # Abbrev [26] 0x11de:0xb DW_TAG_typedef
	.long	4585                    # DW_AT_type
	.long	.Linfo_string164        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x11e9:0xb DW_TAG_typedef
	.long	4596                    # DW_AT_type
	.long	.Linfo_string163        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	27                      # Abbrev [27] 0x11f4:0x7 DW_TAG_base_type
	.long	.Linfo_string162        # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	26                      # Abbrev [26] 0x11fb:0xb DW_TAG_typedef
	.long	4614                    # DW_AT_type
	.long	.Linfo_string166        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1206:0xb DW_TAG_typedef
	.long	2272                    # DW_AT_type
	.long	.Linfo_string165        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1211:0xb DW_TAG_typedef
	.long	4636                    # DW_AT_type
	.long	.Linfo_string168        # DW_AT_name
	.byte	18                      # DW_AT_decl_file
	.byte	27                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x121c:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string167        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1227:0xb DW_TAG_typedef
	.long	4567                    # DW_AT_type
	.long	.Linfo_string169        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1232:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string170        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x123d:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string171        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1248:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string172        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1253:0xb DW_TAG_typedef
	.long	4702                    # DW_AT_type
	.long	.Linfo_string174        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x125e:0xb DW_TAG_typedef
	.long	4556                    # DW_AT_type
	.long	.Linfo_string173        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1269:0xb DW_TAG_typedef
	.long	4724                    # DW_AT_type
	.long	.Linfo_string176        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1274:0xb DW_TAG_typedef
	.long	4585                    # DW_AT_type
	.long	.Linfo_string175        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x127f:0xb DW_TAG_typedef
	.long	4746                    # DW_AT_type
	.long	.Linfo_string178        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x128a:0xb DW_TAG_typedef
	.long	4614                    # DW_AT_type
	.long	.Linfo_string177        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	57                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1295:0xb DW_TAG_typedef
	.long	4768                    # DW_AT_type
	.long	.Linfo_string180        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x12a0:0xb DW_TAG_typedef
	.long	4636                    # DW_AT_type
	.long	.Linfo_string179        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	59                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x12ab:0xb DW_TAG_typedef
	.long	4790                    # DW_AT_type
	.long	.Linfo_string182        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	102                     # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x12b6:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string181        # DW_AT_name
	.byte	14                      # DW_AT_decl_file
	.byte	73                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x12c1:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string183        # DW_AT_name
	.byte	17                      # DW_AT_decl_file
	.byte	90                      # DW_AT_decl_line
	.byte	37                      # Abbrev [37] 0x12cc:0x5 DW_TAG_structure_type
	.long	.Linfo_string184        # DW_AT_name
                                        # DW_AT_declaration
	.byte	45                      # Abbrev [45] 0x12d1:0x16 DW_TAG_subprogram
	.long	.Linfo_string185        # DW_AT_name
	.byte	20                      # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	3148                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x12dc:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x12e1:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	49                      # Abbrev [49] 0x12e7:0xb DW_TAG_subprogram
	.long	.Linfo_string186        # DW_AT_name
	.byte	20                      # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	4850                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	28                      # Abbrev [28] 0x12f2:0x5 DW_TAG_pointer_type
	.long	4812                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x12f7:0x11 DW_TAG_subprogram
	.long	.Linfo_string187        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1302:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1308:0x11 DW_TAG_subprogram
	.long	.Linfo_string188        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	109                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1313:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1319:0x11 DW_TAG_subprogram
	.long	.Linfo_string189        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	110                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1324:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x132a:0x11 DW_TAG_subprogram
	.long	.Linfo_string190        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	111                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1335:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x133b:0x11 DW_TAG_subprogram
	.long	.Linfo_string191        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	113                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1346:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x134c:0x11 DW_TAG_subprogram
	.long	.Linfo_string192        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1357:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x135d:0x11 DW_TAG_subprogram
	.long	.Linfo_string193        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	114                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1368:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x136e:0x11 DW_TAG_subprogram
	.long	.Linfo_string194        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	115                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1379:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x137f:0x11 DW_TAG_subprogram
	.long	.Linfo_string195        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	116                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x138a:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1390:0x11 DW_TAG_subprogram
	.long	.Linfo_string196        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x139b:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x13a1:0x11 DW_TAG_subprogram
	.long	.Linfo_string197        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	118                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x13ac:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x13b2:0x11 DW_TAG_subprogram
	.long	.Linfo_string198        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	122                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x13bd:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x13c3:0x11 DW_TAG_subprogram
	.long	.Linfo_string199        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x13ce:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x13d4:0x11 DW_TAG_subprogram
	.long	.Linfo_string200        # DW_AT_name
	.byte	21                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x13df:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x13e5:0x12 DW_TAG_subprogram
	.long	.Linfo_string202        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	840                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x13f1:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x13f7:0xb DW_TAG_typedef
	.long	5122                    # DW_AT_type
	.long	.Linfo_string203        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	50                      # Abbrev [50] 0x1402:0x1 DW_TAG_structure_type
                                        # DW_AT_declaration
	.byte	26                      # Abbrev [26] 0x1403:0xb DW_TAG_typedef
	.long	5134                    # DW_AT_type
	.long	.Linfo_string206        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	70                      # DW_AT_decl_line
	.byte	31                      # Abbrev [31] 0x140e:0x1e DW_TAG_structure_type
	.byte	5                       # DW_AT_calling_convention
	.byte	16                      # DW_AT_byte_size
	.byte	24                      # DW_AT_decl_file
	.byte	66                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x1413:0xc DW_TAG_member
	.long	.Linfo_string204        # DW_AT_name
	.long	3604                    # DW_AT_type
	.byte	24                      # DW_AT_decl_file
	.byte	68                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	14                      # Abbrev [14] 0x141f:0xc DW_TAG_member
	.long	.Linfo_string205        # DW_AT_name
	.long	3604                    # DW_AT_type
	.byte	24                      # DW_AT_decl_file
	.byte	69                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	51                      # Abbrev [51] 0x142c:0x8 DW_TAG_subprogram
	.long	.Linfo_string207        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	591                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	36                      # Abbrev [36] 0x1434:0x12 DW_TAG_subprogram
	.long	.Linfo_string208        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	595                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1440:0x5 DW_TAG_formal_parameter
	.long	5190                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x1446:0x5 DW_TAG_pointer_type
	.long	5195                    # DW_AT_type
	.byte	52                      # Abbrev [52] 0x144b:0x1 DW_TAG_subroutine_type
	.byte	36                      # Abbrev [36] 0x144c:0x12 DW_TAG_subprogram
	.long	.Linfo_string209        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	600                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1458:0x5 DW_TAG_formal_parameter
	.long	5190                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x145e:0x11 DW_TAG_subprogram
	.long	.Linfo_string210        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	3502                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1469:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x146f:0x11 DW_TAG_subprogram
	.long	.Linfo_string211        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x147a:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1480:0x11 DW_TAG_subprogram
	.long	.Linfo_string212        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	107                     # DW_AT_decl_line
	.long	3604                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x148b:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1491:0x26 DW_TAG_subprogram
	.long	.Linfo_string213        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	820                     # DW_AT_decl_line
	.long	2967                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x149d:0x5 DW_TAG_formal_parameter
	.long	5303                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14a2:0x5 DW_TAG_formal_parameter
	.long	5303                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14a7:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14ac:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14b1:0x5 DW_TAG_formal_parameter
	.long	5309                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x14b7:0x5 DW_TAG_pointer_type
	.long	5308                    # DW_AT_type
	.byte	53                      # Abbrev [53] 0x14bc:0x1 DW_TAG_const_type
	.byte	22                      # Abbrev [22] 0x14bd:0xc DW_TAG_typedef
	.long	5321                    # DW_AT_type
	.long	.Linfo_string214        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	808                     # DW_AT_decl_line
	.byte	28                      # Abbrev [28] 0x14c9:0x5 DW_TAG_pointer_type
	.long	5326                    # DW_AT_type
	.byte	54                      # Abbrev [54] 0x14ce:0x10 DW_TAG_subroutine_type
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14d3:0x5 DW_TAG_formal_parameter
	.long	5303                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14d8:0x5 DW_TAG_formal_parameter
	.long	5303                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x14de:0x17 DW_TAG_subprogram
	.long	.Linfo_string215        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	2967                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x14ea:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x14ef:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x14f5:0x17 DW_TAG_subprogram
	.long	.Linfo_string216        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	852                     # DW_AT_decl_line
	.long	5111                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1501:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1506:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	55                      # Abbrev [55] 0x150c:0xe DW_TAG_subprogram
	.long	.Linfo_string217        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	617                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	9                       # Abbrev [9] 0x1514:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x151a:0xe DW_TAG_subprogram
	.long	.Linfo_string218        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	565                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1522:0x5 DW_TAG_formal_parameter
	.long	2967                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1528:0x12 DW_TAG_subprogram
	.long	.Linfo_string219        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	634                     # DW_AT_decl_line
	.long	3148                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1534:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x153a:0x12 DW_TAG_subprogram
	.long	.Linfo_string220        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	841                     # DW_AT_decl_line
	.long	3604                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1546:0x5 DW_TAG_formal_parameter
	.long	3604                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x154c:0x17 DW_TAG_subprogram
	.long	.Linfo_string221        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	854                     # DW_AT_decl_line
	.long	5123                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1558:0x5 DW_TAG_formal_parameter
	.long	3604                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x155d:0x5 DW_TAG_formal_parameter
	.long	3604                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1563:0x12 DW_TAG_subprogram
	.long	.Linfo_string222        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	539                     # DW_AT_decl_line
	.long	2967                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x156f:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1575:0x17 DW_TAG_subprogram
	.long	.Linfo_string223        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	922                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1581:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1586:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x158c:0x1c DW_TAG_subprogram
	.long	.Linfo_string224        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	933                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1598:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x159d:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x15a2:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x15a8:0x1c DW_TAG_subprogram
	.long	.Linfo_string225        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	925                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x15b4:0x5 DW_TAG_formal_parameter
	.long	2414                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x15b9:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x15be:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x15c4:0x1d DW_TAG_subprogram
	.long	.Linfo_string226        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	830                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x15cc:0x5 DW_TAG_formal_parameter
	.long	2967                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x15d1:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x15d6:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x15db:0x5 DW_TAG_formal_parameter
	.long	5309                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	55                      # Abbrev [55] 0x15e1:0xe DW_TAG_subprogram
	.long	.Linfo_string227        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	623                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	9                       # Abbrev [9] 0x15e9:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0x15ef:0xc DW_TAG_subprogram
	.long	.Linfo_string228        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	453                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	36                      # Abbrev [36] 0x15fb:0x17 DW_TAG_subprogram
	.long	.Linfo_string229        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	550                     # DW_AT_decl_line
	.long	2967                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1607:0x5 DW_TAG_formal_parameter
	.long	2967                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x160c:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x1612:0xe DW_TAG_subprogram
	.long	.Linfo_string230        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	455                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x161a:0x5 DW_TAG_formal_parameter
	.long	2272                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1620:0x16 DW_TAG_subprogram
	.long	.Linfo_string231        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	3502                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x162b:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1630:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0x1636:0x5 DW_TAG_restrict_type
	.long	5691                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0x163b:0x5 DW_TAG_pointer_type
	.long	3148                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x1640:0x1b DW_TAG_subprogram
	.long	.Linfo_string232        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	176                     # DW_AT_decl_line
	.long	3604                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x164b:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1650:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1655:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x165b:0x1b DW_TAG_subprogram
	.long	.Linfo_string233        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	180                     # DW_AT_decl_line
	.long	2629                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1666:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x166b:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1670:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1676:0x12 DW_TAG_subprogram
	.long	.Linfo_string234        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	784                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1682:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1688:0x1c DW_TAG_subprogram
	.long	.Linfo_string235        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	936                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1694:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1699:0x5 DW_TAG_formal_parameter
	.long	2470                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x169e:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x16a4:0x17 DW_TAG_subprogram
	.long	.Linfo_string236        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	929                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x16b0:0x5 DW_TAG_formal_parameter
	.long	3148                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x16b5:0x5 DW_TAG_formal_parameter
	.long	2407                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x16bb:0xb DW_TAG_typedef
	.long	5830                    # DW_AT_type
	.long	.Linfo_string237        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.byte	31                      # Abbrev [31] 0x16c6:0x1e DW_TAG_structure_type
	.byte	5                       # DW_AT_calling_convention
	.byte	16                      # DW_AT_byte_size
	.byte	24                      # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x16cb:0xc DW_TAG_member
	.long	.Linfo_string204        # DW_AT_name
	.long	4178                    # DW_AT_type
	.byte	24                      # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	14                      # Abbrev [14] 0x16d7:0xc DW_TAG_member
	.long	.Linfo_string205        # DW_AT_name
	.long	4178                    # DW_AT_type
	.byte	24                      # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	55                      # Abbrev [55] 0x16e4:0xe DW_TAG_subprogram
	.long	.Linfo_string238        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	629                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
                                        # DW_AT_noreturn
	.byte	9                       # Abbrev [9] 0x16ec:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x16f2:0x12 DW_TAG_subprogram
	.long	.Linfo_string239        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	844                     # DW_AT_decl_line
	.long	4178                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x16fe:0x5 DW_TAG_formal_parameter
	.long	4178                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1704:0x17 DW_TAG_subprogram
	.long	.Linfo_string240        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.short	858                     # DW_AT_decl_line
	.long	5819                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1710:0x5 DW_TAG_formal_parameter
	.long	4178                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1715:0x5 DW_TAG_formal_parameter
	.long	4178                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x171b:0x11 DW_TAG_subprogram
	.long	.Linfo_string241        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	4178                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1726:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x172c:0x1b DW_TAG_subprogram
	.long	.Linfo_string242        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	200                     # DW_AT_decl_line
	.long	4178                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1737:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x173c:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1741:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1747:0x1b DW_TAG_subprogram
	.long	.Linfo_string243        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	205                     # DW_AT_decl_line
	.long	4213                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1752:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1757:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x175c:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1762:0x16 DW_TAG_subprogram
	.long	.Linfo_string244        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	123                     # DW_AT_decl_line
	.long	3542                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x176d:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1772:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1778:0x16 DW_TAG_subprogram
	.long	.Linfo_string245        # DW_AT_name
	.byte	24                      # DW_AT_decl_file
	.byte	126                     # DW_AT_decl_line
	.long	4143                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1783:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1788:0x5 DW_TAG_formal_parameter
	.long	5686                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x178e:0xb DW_TAG_typedef
	.long	2369                    # DW_AT_type
	.long	.Linfo_string247        # DW_AT_name
	.byte	27                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x1799:0xb DW_TAG_typedef
	.long	6052                    # DW_AT_type
	.long	.Linfo_string250        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.byte	26                      # Abbrev [26] 0x17a4:0xb DW_TAG_typedef
	.long	6063                    # DW_AT_type
	.long	.Linfo_string249        # DW_AT_name
	.byte	29                      # DW_AT_decl_file
	.byte	14                      # DW_AT_decl_line
	.byte	37                      # Abbrev [37] 0x17af:0x5 DW_TAG_structure_type
	.long	.Linfo_string248        # DW_AT_name
                                        # DW_AT_declaration
	.byte	56                      # Abbrev [56] 0x17b4:0xe DW_TAG_subprogram
	.long	.Linfo_string251        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	757                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x17bc:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x17c2:0x5 DW_TAG_pointer_type
	.long	6030                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x17c7:0x11 DW_TAG_subprogram
	.long	.Linfo_string252        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	213                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x17d2:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x17d8:0x12 DW_TAG_subprogram
	.long	.Linfo_string253        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	759                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x17e4:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x17ea:0x12 DW_TAG_subprogram
	.long	.Linfo_string254        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	761                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x17f6:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x17fc:0x11 DW_TAG_subprogram
	.long	.Linfo_string255        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	218                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1807:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x180d:0x12 DW_TAG_subprogram
	.long	.Linfo_string256        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	485                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1819:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x181f:0x17 DW_TAG_subprogram
	.long	.Linfo_string257        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	731                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x182b:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1830:0x5 DW_TAG_formal_parameter
	.long	6203                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0x1836:0x5 DW_TAG_restrict_type
	.long	6082                    # DW_AT_type
	.byte	38                      # Abbrev [38] 0x183b:0x5 DW_TAG_restrict_type
	.long	6208                    # DW_AT_type
	.byte	28                      # Abbrev [28] 0x1840:0x5 DW_TAG_pointer_type
	.long	6041                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x1845:0x1c DW_TAG_subprogram
	.long	.Linfo_string258        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	564                     # DW_AT_decl_line
	.long	3148                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1851:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1856:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x185b:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1861:0x16 DW_TAG_subprogram
	.long	.Linfo_string259        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.long	6082                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x186c:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1871:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1877:0x18 DW_TAG_subprogram
	.long	.Linfo_string260        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	326                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1883:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1888:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x188d:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x188f:0x17 DW_TAG_subprogram
	.long	.Linfo_string261        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	521                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x189b:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18a0:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x18a6:0x17 DW_TAG_subprogram
	.long	.Linfo_string262        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	626                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x18b2:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18b7:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x18bd:0x21 DW_TAG_subprogram
	.long	.Linfo_string263        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	646                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x18c9:0x5 DW_TAG_formal_parameter
	.long	6366                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18ce:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18d3:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18d8:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0x18de:0x5 DW_TAG_restrict_type
	.long	2967                    # DW_AT_type
	.byte	45                      # Abbrev [45] 0x18e3:0x1b DW_TAG_subprogram
	.long	.Linfo_string264        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.long	6082                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x18ee:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18f3:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x18f8:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x18fe:0x1c DW_TAG_subprogram
	.long	.Linfo_string265        # DW_AT_linkage_name
	.long	.Linfo_string266        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	407                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x190e:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1913:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x1918:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x191a:0x1c DW_TAG_subprogram
	.long	.Linfo_string267        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	684                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1926:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x192b:0x5 DW_TAG_formal_parameter
	.long	3604                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1930:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1936:0x17 DW_TAG_subprogram
	.long	.Linfo_string268        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	736                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1942:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1947:0x5 DW_TAG_formal_parameter
	.long	6477                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x194d:0x5 DW_TAG_pointer_type
	.long	6482                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x1952:0x5 DW_TAG_const_type
	.long	6041                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x1957:0x12 DW_TAG_subprogram
	.long	.Linfo_string269        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	689                     # DW_AT_decl_line
	.long	3604                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1963:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1969:0x21 DW_TAG_subprogram
	.long	.Linfo_string270        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	652                     # DW_AT_decl_line
	.long	2618                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1975:0x5 DW_TAG_formal_parameter
	.long	6538                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x197a:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x197f:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1984:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	38                      # Abbrev [38] 0x198a:0x5 DW_TAG_restrict_type
	.long	5303                    # DW_AT_type
	.byte	36                      # Abbrev [36] 0x198f:0x12 DW_TAG_subprogram
	.long	.Linfo_string271        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	486                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x199b:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	41                      # Abbrev [41] 0x19a1:0xc DW_TAG_subprogram
	.long	.Linfo_string272        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	492                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	56                      # Abbrev [56] 0x19ad:0xe DW_TAG_subprogram
	.long	.Linfo_string273        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	775                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x19b5:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x19bb:0x13 DW_TAG_subprogram
	.long	.Linfo_string274        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	332                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x19c7:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x19cc:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x19ce:0x17 DW_TAG_subprogram
	.long	.Linfo_string275        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	522                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x19da:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x19df:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x19e5:0x12 DW_TAG_subprogram
	.long	.Linfo_string276        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	528                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x19f1:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x19f7:0x12 DW_TAG_subprogram
	.long	.Linfo_string277        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	632                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a03:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1a09:0x11 DW_TAG_subprogram
	.long	.Linfo_string278        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a14:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1a1a:0x16 DW_TAG_subprogram
	.long	.Linfo_string279        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	148                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a25:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1a2a:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x1a30:0xe DW_TAG_subprogram
	.long	.Linfo_string280        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	694                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a38:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x1a3e:0x17 DW_TAG_subprogram
	.long	.Linfo_string281        # DW_AT_linkage_name
	.long	.Linfo_string282        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	410                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a4e:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x1a53:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	56                      # Abbrev [56] 0x1a55:0x13 DW_TAG_subprogram
	.long	.Linfo_string283        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a5d:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1a62:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1a68:0x21 DW_TAG_subprogram
	.long	.Linfo_string284        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a74:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1a79:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1a7e:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1a83:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1a89:0x18 DW_TAG_subprogram
	.long	.Linfo_string285        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	334                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1a95:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1a9a:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x1a9f:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x1aa1:0x1c DW_TAG_subprogram
	.long	.Linfo_string286        # DW_AT_linkage_name
	.long	.Linfo_string287        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	412                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1ab1:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1ab6:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x1abb:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	49                      # Abbrev [49] 0x1abd:0xb DW_TAG_subprogram
	.long	.Linfo_string288        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	173                     # DW_AT_decl_line
	.long	6082                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	45                      # Abbrev [45] 0x1ac8:0x11 DW_TAG_subprogram
	.long	.Linfo_string289        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.byte	187                     # DW_AT_decl_line
	.long	3148                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1ad3:0x5 DW_TAG_formal_parameter
	.long	3148                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1ad9:0x17 DW_TAG_subprogram
	.long	.Linfo_string290        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	639                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1ae5:0x5 DW_TAG_formal_parameter
	.long	2156                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1aea:0x5 DW_TAG_formal_parameter
	.long	6082                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1af0:0x1c DW_TAG_subprogram
	.long	.Linfo_string291        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	341                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1afc:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b01:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b06:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1b0c:0x17 DW_TAG_subprogram
	.long	.Linfo_string292        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	347                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1b18:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b1d:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1b23:0x1c DW_TAG_subprogram
	.long	.Linfo_string293        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	349                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1b2f:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b34:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b39:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1b3f:0x1d DW_TAG_subprogram
	.long	.Linfo_string294        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	354                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1b4b:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b50:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b55:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	39                      # Abbrev [39] 0x1b5a:0x1 DW_TAG_unspecified_parameters
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x1b5c:0x20 DW_TAG_subprogram
	.long	.Linfo_string295        # DW_AT_linkage_name
	.long	.Linfo_string296        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	451                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1b6c:0x5 DW_TAG_formal_parameter
	.long	6198                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b71:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b76:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x1b7c:0x1b DW_TAG_subprogram
	.long	.Linfo_string297        # DW_AT_linkage_name
	.long	.Linfo_string298        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	456                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1b8c:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1b91:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	36                      # Abbrev [36] 0x1b97:0x21 DW_TAG_subprogram
	.long	.Linfo_string299        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	358                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1ba3:0x5 DW_TAG_formal_parameter
	.long	3143                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1ba8:0x5 DW_TAG_formal_parameter
	.long	2618                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1bad:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1bb2:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	40                      # Abbrev [40] 0x1bb8:0x20 DW_TAG_subprogram
	.long	.Linfo_string300        # DW_AT_linkage_name
	.long	.Linfo_string301        # DW_AT_name
	.byte	30                      # DW_AT_decl_file
	.short	459                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1bc8:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1bcd:0x5 DW_TAG_formal_parameter
	.long	2636                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1bd2:0x5 DW_TAG_formal_parameter
	.long	2914                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x1bd8:0xb DW_TAG_typedef
	.long	7139                    # DW_AT_type
	.long	.Linfo_string302        # DW_AT_name
	.byte	31                      # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	28                      # Abbrev [28] 0x1be3:0x5 DW_TAG_pointer_type
	.long	7144                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x1be8:0x5 DW_TAG_const_type
	.long	4347                    # DW_AT_type
	.byte	26                      # Abbrev [26] 0x1bed:0xb DW_TAG_typedef
	.long	2629                    # DW_AT_type
	.long	.Linfo_string303        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	38                      # DW_AT_decl_line
	.byte	45                      # Abbrev [45] 0x1bf8:0x11 DW_TAG_subprogram
	.long	.Linfo_string304        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	95                      # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c03:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c09:0x11 DW_TAG_subprogram
	.long	.Linfo_string305        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	101                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c14:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c1a:0x11 DW_TAG_subprogram
	.long	.Linfo_string306        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	146                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c25:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c2b:0x11 DW_TAG_subprogram
	.long	.Linfo_string307        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	104                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c36:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c3c:0x16 DW_TAG_subprogram
	.long	.Linfo_string308        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	159                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c47:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1c4c:0x5 DW_TAG_formal_parameter
	.long	7149                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c52:0x11 DW_TAG_subprogram
	.long	.Linfo_string309        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	108                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c5d:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c63:0x11 DW_TAG_subprogram
	.long	.Linfo_string310        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	112                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c6e:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c74:0x11 DW_TAG_subprogram
	.long	.Linfo_string311        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	117                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c7f:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c85:0x11 DW_TAG_subprogram
	.long	.Linfo_string312        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	120                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1c90:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1c96:0x11 DW_TAG_subprogram
	.long	.Linfo_string313        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	125                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1ca1:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1ca7:0x11 DW_TAG_subprogram
	.long	.Linfo_string314        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	130                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1cb2:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1cb8:0x11 DW_TAG_subprogram
	.long	.Linfo_string315        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	135                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1cc3:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1cc9:0x11 DW_TAG_subprogram
	.long	.Linfo_string316        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	140                     # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1cd4:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1cda:0x16 DW_TAG_subprogram
	.long	.Linfo_string317        # DW_AT_name
	.byte	31                      # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1ce5:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	9                       # Abbrev [9] 0x1cea:0x5 DW_TAG_formal_parameter
	.long	7128                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1cf0:0x11 DW_TAG_subprogram
	.long	.Linfo_string318        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1cfb:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1d01:0x11 DW_TAG_subprogram
	.long	.Linfo_string319        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	169                     # DW_AT_decl_line
	.long	2306                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1d0c:0x5 DW_TAG_formal_parameter
	.long	2306                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1d12:0x11 DW_TAG_subprogram
	.long	.Linfo_string320        # DW_AT_name
	.byte	31                      # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	7128                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1d1d:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	45                      # Abbrev [45] 0x1d23:0x11 DW_TAG_subprogram
	.long	.Linfo_string321        # DW_AT_name
	.byte	33                      # DW_AT_decl_file
	.byte	155                     # DW_AT_decl_line
	.long	7149                    # DW_AT_type
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	9                       # Abbrev [9] 0x1d2e:0x5 DW_TAG_formal_parameter
	.long	2641                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	57                      # Abbrev [57] 0x1d34:0x15 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string325        # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	58                      # Abbrev [58] 0x1d49:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string326        # DW_AT_linkage_name
	.long	.Linfo_string327        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
                                        # DW_AT_external
	.byte	59                      # Abbrev [59] 0x1d62:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	127
	.long	.Linfo_string338        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	11                      # DW_AT_decl_line
	.long	2163                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x1d71:0x33 DW_TAG_class_type
	.byte	4                       # DW_AT_calling_convention
	.long	.Linfo_string323        # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	34                      # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
	.byte	60                      # Abbrev [60] 0x1d7a:0xd DW_TAG_member
	.long	.Linfo_string322        # DW_AT_name
	.long	2156                    # DW_AT_type
	.byte	34                      # DW_AT_decl_file
	.byte	6                       # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	18                      # Abbrev [18] 0x1d87:0xe DW_TAG_subprogram
	.long	.Linfo_string323        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x1d8f:0x5 DW_TAG_formal_parameter
	.long	7588                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	18                      # Abbrev [18] 0x1d95:0xe DW_TAG_subprogram
	.long	.Linfo_string324        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	8                       # DW_AT_decl_line
                                        # DW_AT_declaration
                                        # DW_AT_external
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	8                       # Abbrev [8] 0x1d9d:0x5 DW_TAG_formal_parameter
	.long	7588                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	28                      # Abbrev [28] 0x1da4:0x5 DW_TAG_pointer_type
	.long	7537                    # DW_AT_type
	.byte	61                      # Abbrev [61] 0x1da9:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	7620                    # DW_AT_object_pointer
	.long	.Linfo_string328        # DW_AT_linkage_name
	.long	7559                    # DW_AT_specification
	.byte	62                      # Abbrev [62] 0x1dc4:0xc DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string339        # DW_AT_name
	.long	7822                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	61                      # Abbrev [61] 0x1dd1:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	7660                    # DW_AT_object_pointer
	.long	.Linfo_string329        # DW_AT_linkage_name
	.long	7573                    # DW_AT_specification
	.byte	62                      # Abbrev [62] 0x1dec:0xc DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string339        # DW_AT_name
	.long	7822                    # DW_AT_type
                                        # DW_AT_artificial
	.byte	0                       # End Of Children Mark
	.byte	63                      # Abbrev [63] 0x1df9:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string330        # DW_AT_linkage_name
	.long	.Linfo_string331        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	17                      # DW_AT_decl_line
                                        # DW_AT_external
	.byte	58                      # Abbrev [58] 0x1e12:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string332        # DW_AT_linkage_name
	.long	.Linfo_string333        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
                                        # DW_AT_external
	.byte	59                      # Abbrev [59] 0x1e2b:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string340        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.long	2272                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	58                      # Abbrev [58] 0x1e3a:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin6           # DW_AT_low_pc
	.long	.Lfunc_end6-.Lfunc_begin6 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string334        # DW_AT_linkage_name
	.long	.Linfo_string335        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
                                        # DW_AT_external
	.byte	64                      # Abbrev [64] 0x1e53:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string341        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.long	7827                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	65                      # Abbrev [65] 0x1e62:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin8           # DW_AT_low_pc
	.long	.Lfunc_end8-.Lfunc_begin8 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string336        # DW_AT_name
	.byte	34                      # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.long	2156                    # DW_AT_type
                                        # DW_AT_external
	.byte	66                      # Abbrev [66] 0x1e7b:0x13 DW_TAG_subprogram
	.quad	.Lfunc_begin9           # DW_AT_low_pc
	.long	.Lfunc_end9-.Lfunc_begin9 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string337        # DW_AT_linkage_name
                                        # DW_AT_artificial
	.byte	28                      # Abbrev [28] 0x1e8e:0x5 DW_TAG_pointer_type
	.long	7537                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x1e93:0x5 DW_TAG_reference_type
	.long	7832                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x1e98:0x5 DW_TAG_const_type
	.long	7537                    # DW_AT_type
	.byte	0                       # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Lfunc_begin0
	.quad	.Lfunc_end0
	.quad	.Lfunc_begin9
	.quad	.Lfunc_end9
	.quad	.Lfunc_begin1
	.quad	.Lfunc_end1
	.quad	.Lfunc_begin4
	.quad	.Lfunc_end6
	.quad	.Lfunc_begin8
	.quad	.Lfunc_end8
	.quad	.Lfunc_begin2
	.quad	.Lfunc_end2
	.quad	.Lfunc_begin3
	.quad	.Lfunc_end3
	.quad	0
	.quad	0
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z19throw_the_exceptionb
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym _Z14hello_dinosaurv
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym _Z3logj
	.addrsig_sym _ZNSolsEj
	.addrsig_sym _Z19catch_the_exceptionv
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym __cxa_end_catch
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _GLOBAL__sub_I_exception.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS17DinosaurException
	.addrsig_sym _ZTI17DinosaurException
	.addrsig_sym _ZSt4cout
	.section	.debug_line,"",@progbits
.Lline_table_start0:
