	.file	"SensorsDataSendServer.cpp"
	.text
	.section	.text._ZNSt11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZNSt11char_traitsIcE6lengthEPKc,comdat
	.weak	_ZNSt11char_traitsIcE6lengthEPKc
	.type	_ZNSt11char_traitsIcE6lengthEPKc, @function
_ZNSt11char_traitsIcE6lengthEPKc:
.LFB347:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	testb	%al, %al
	je	.L3
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc@PLT
	jmp	.L4
.L3:
	movq	-24(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	subq	$1, %rax
	nop
.L4:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE347:
	.size	_ZNSt11char_traitsIcE6lengthEPKc, .-_ZNSt11char_traitsIcE6lengthEPKc
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB452:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE452:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.data.rel.ro,"aw"
	.align 8
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, @object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 8
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.quad	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.section	.text._ZL18__gthread_active_pv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.type	_ZL18__gthread_active_pv, @function
_ZL18__gthread_active_pv:
.LFB644:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %edx
	movq	_ZL28__gthrw___pthread_key_createPjPFvPvE@GOTPCREL(%rip), %rax
	testq	%rax, %rax
	jne	.L8
	movl	$0, %edx
.L8:
	movzbl	%dl, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE644:
	.size	_ZL18__gthread_active_pv, .-_ZL18__gthread_active_pv
	.section	.text._ZN9__gnu_cxxL18__exchange_and_addEPVii,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.type	_ZN9__gnu_cxxL18__exchange_and_addEPVii, @function
_ZN9__gnu_cxxL18__exchange_and_addEPVii:
.LFB673:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	lock xaddl	%edx, (%rax)
	movl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE673:
	.size	_ZN9__gnu_cxxL18__exchange_and_addEPVii, .-_ZN9__gnu_cxxL18__exchange_and_addEPVii
	.section	.text._ZN9__gnu_cxxL25__exchange_and_add_singleEPii,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.type	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii, @function
_ZN9__gnu_cxxL25__exchange_and_add_singleEPii:
.LFB675:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE675:
	.size	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii, .-_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	.section	.text._ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.type	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii, @function
_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii:
.LFB677:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	call	_ZL18__gthread_active_pv
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L15
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL18__exchange_and_addEPVii
	jmp	.L16
.L15:
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL25__exchange_and_add_singleEPii
	nop
.L16:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE677:
	.size	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii, .-_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	.section	.rodata
	.align 4
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, @object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.long	2
	.section	.text._ZStanSt12memory_orderSt23__memory_order_modifier,"axG",@progbits,_ZStanSt12memory_orderSt23__memory_order_modifier,comdat
	.weak	_ZStanSt12memory_orderSt23__memory_order_modifier
	.type	_ZStanSt12memory_orderSt23__memory_order_modifier, @function
_ZStanSt12memory_orderSt23__memory_order_modifier:
.LFB2076:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	andl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2076:
	.size	_ZStanSt12memory_orderSt23__memory_order_modifier, .-_ZStanSt12memory_orderSt23__memory_order_modifier
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZNSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessEv
	.type	_ZNSt9_Any_data9_M_accessEv, @function
_ZNSt9_Any_data9_M_accessEv:
.LFB2244:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2244:
	.size	_ZNSt9_Any_data9_M_accessEv, .-_ZNSt9_Any_data9_M_accessEv
	.section	.text._ZNKSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNKSt9_Any_data9_M_accessEv,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessEv
	.type	_ZNKSt9_Any_data9_M_accessEv, @function
_ZNKSt9_Any_data9_M_accessEv:
.LFB2245:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2245:
	.size	_ZNKSt9_Any_data9_M_accessEv, .-_ZNKSt9_Any_data9_M_accessEv
	.section	.text._ZNSt14_Function_baseC2Ev,"axG",@progbits,_ZNSt14_Function_baseC5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseC2Ev
	.type	_ZNSt14_Function_baseC2Ev, @function
_ZNSt14_Function_baseC2Ev:
.LFB2263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2263:
	.size	_ZNSt14_Function_baseC2Ev, .-_ZNSt14_Function_baseC2Ev
	.weak	_ZNSt14_Function_baseC1Ev
	.set	_ZNSt14_Function_baseC1Ev,_ZNSt14_Function_baseC2Ev
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.align 2
	.weak	_ZNSt14_Function_baseD2Ev
	.type	_ZNSt14_Function_baseD2Ev, @function
_ZNSt14_Function_baseD2Ev:
.LFB2266:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2266
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L26
	movq	-8(%rbp), %rax
	movq	16(%rax), %r8
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$3, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
.L26:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2266:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt14_Function_baseD2Ev,"aG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
.LLSDA2266:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2266-.LLSDACSB2266
.LLSDACSB2266:
.LLSDACSE2266:
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.size	_ZNSt14_Function_baseD2Ev, .-_ZNSt14_Function_baseD2Ev
	.weak	_ZNSt14_Function_baseD1Ev
	.set	_ZNSt14_Function_baseD1Ev,_ZNSt14_Function_baseD2Ev
	.section	.text._ZNKSt10error_code5valueEv,"axG",@progbits,_ZNKSt10error_code5valueEv,comdat
	.align 2
	.weak	_ZNKSt10error_code5valueEv
	.type	_ZNKSt10error_code5valueEv, @function
_ZNKSt10error_code5valueEv:
.LFB3489:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3489:
	.size	_ZNKSt10error_code5valueEv, .-_ZNKSt10error_code5valueEv
	.section	.text._ZNKSt10error_code8categoryEv,"axG",@progbits,_ZNKSt10error_code8categoryEv,comdat
	.align 2
	.weak	_ZNKSt10error_code8categoryEv
	.type	_ZNKSt10error_code8categoryEv, @function
_ZNKSt10error_code8categoryEv:
.LFB3490:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3490:
	.size	_ZNKSt10error_code8categoryEv, .-_ZNKSt10error_code8categoryEv
	.section	.text._ZNK5boost6system14error_category6failedEi,"axG",@progbits,_ZNK5boost6system14error_category6failedEi,comdat
	.align 2
	.weak	_ZNK5boost6system14error_category6failedEi
	.type	_ZNK5boost6system14error_category6failedEi, @function
_ZNK5boost6system14error_category6failedEi:
.LFB3725:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, -12(%rbp)
	setne	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3725:
	.size	_ZNK5boost6system14error_category6failedEi, .-_ZNK5boost6system14error_category6failedEi
	.section	.text._ZN5boost6systemeqERKNS0_14error_categoryES3_,"axG",@progbits,_ZN5boost6systemeqERKNS0_14error_categoryES3_,comdat
	.weak	_ZN5boost6systemeqERKNS0_14error_categoryES3_
	.type	_ZN5boost6systemeqERKNS0_14error_categoryES3_, @function
_ZN5boost6systemeqERKNS0_14error_categoryES3_:
.LFB3726:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L34
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	sete	%al
	jmp	.L36
.L34:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
.L36:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3726:
	.size	_ZN5boost6systemeqERKNS0_14error_categoryES3_, .-_ZN5boost6systemeqERKNS0_14error_categoryES3_
	.section	.rodata
	.align 8
	.type	_ZN5boost6system6detailL19generic_category_idE, @object
	.size	_ZN5boost6system6detailL19generic_category_idE, 8
_ZN5boost6system6detailL19generic_category_idE:
	.quad	-5572340897628102704
	.align 8
	.type	_ZN5boost6system6detailL18system_category_idE, @object
	.size	_ZN5boost6system6detailL18system_category_idE, 8
_ZN5boost6system6detailL18system_category_idE:
	.quad	-5572340897628102703
	.align 8
	.type	_ZN5boost6system6detailL19interop_category_idE, @object
	.size	_ZN5boost6system6detailL19interop_category_idE, 8
_ZN5boost6system6detailL19interop_category_idE:
	.quad	-5572340897628102702
	.section	.text._ZN5boost6system6detail17strerror_r_helperEPKcS3_,"axG",@progbits,_ZN5boost6system6detail17strerror_r_helperEPKcS3_,comdat
	.weak	_ZN5boost6system6detail17strerror_r_helperEPKcS3_
	.type	_ZN5boost6system6detail17strerror_r_helperEPKcS3_, @function
_ZN5boost6system6detail17strerror_r_helperEPKcS3_:
.LFB3730:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3730:
	.size	_ZN5boost6system6detail17strerror_r_helperEPKcS3_, .-_ZN5boost6system6detail17strerror_r_helperEPKcS3_
	.section	.text._ZN5boost6system6detail30generic_error_category_messageEiPcm,"axG",@progbits,_ZN5boost6system6detail30generic_error_category_messageEiPcm,comdat
	.weak	_ZN5boost6system6detail30generic_error_category_messageEiPcm
	.type	_ZN5boost6system6detail30generic_error_category_messageEiPcm, @function
_ZN5boost6system6detail30generic_error_category_messageEiPcm:
.LFB3732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	strerror_r@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5boost6system6detail17strerror_r_helperEPKcS3_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3732:
	.size	_ZN5boost6system6detail30generic_error_category_messageEiPcm, .-_ZN5boost6system6detail30generic_error_category_messageEiPcm
	.section	.text._ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei,"axG",@progbits,_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei,comdat
	.weak	_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei
	.type	_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei, @function
_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei:
.LFB3733:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3733
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$184, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movl	%esi, -188(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-161(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-160(%rbp), %rcx
	movl	-188(%rbp), %eax
	movl	$128, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN5boost6system6detail30generic_error_category_messageEiPcm@PLT
	movq	%rax, %rcx
	leaq	-161(%rbp), %rdx
	movq	-184(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_@PLT
.LEHE0:
	leaq	-161(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L44
	jmp	.L46
.L45:
	endbr64
	movq	%rax, %rbx
	leaq	-161(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L46:
	call	__stack_chk_fail@PLT
.L44:
	movq	-184(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3733:
	.section	.gcc_except_table._ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei,"aG",@progbits,_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei,comdat
.LLSDA3733:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3733-.LLSDACSB3733
.LLSDACSB3733:
	.uleb128 .LEHB0-.LFB3733
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L45-.LFB3733
	.uleb128 0
	.uleb128 .LEHB1-.LFB3733
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE3733:
	.section	.text._ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei,"axG",@progbits,_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei,comdat
	.size	_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei, .-_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei
	.section	.rodata
.LC0:
	.string	"generic"
	.section	.text._ZNK5boost6system6detail22generic_error_category4nameEv,"axG",@progbits,_ZNK5boost6system6detail22generic_error_category4nameEv,comdat
	.align 2
	.weak	_ZNK5boost6system6detail22generic_error_category4nameEv
	.type	_ZNK5boost6system6detail22generic_error_category4nameEv, @function
_ZNK5boost6system6detail22generic_error_category4nameEv:
.LFB3737:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	.LC0(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3737:
	.size	_ZNK5boost6system6detail22generic_error_category4nameEv, .-_ZNK5boost6system6detail22generic_error_category4nameEv
	.section	.text._ZNK5boost6system6detail22generic_error_category7messageEiPcm,"axG",@progbits,_ZNK5boost6system6detail22generic_error_category7messageEiPcm,comdat
	.align 2
	.weak	_ZNK5boost6system6detail22generic_error_category7messageEiPcm
	.type	_ZNK5boost6system6detail22generic_error_category7messageEiPcm, @function
_ZNK5boost6system6detail22generic_error_category7messageEiPcm:
.LFB3738:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN5boost6system6detail30generic_error_category_messageEiPcm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3738:
	.size	_ZNK5boost6system6detail22generic_error_category7messageEiPcm, .-_ZNK5boost6system6detail22generic_error_category7messageEiPcm
	.section	.text._ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei,"axG",@progbits,_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei,comdat
	.align 2
	.weak	_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei
	.type	_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei, @function
_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei:
.LFB3739:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3739:
	.size	_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei, .-_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei
	.section	.text._ZN5boost6system6detail8snprintfEPcmPKcz,"axG",@progbits,_ZN5boost6system6detail8snprintfEPcmPKcz,comdat
	.weak	_ZN5boost6system6detail8snprintfEPcmPKcz
	.type	_ZN5boost6system6detail8snprintfEPcmPKcz, @function
_ZN5boost6system6detail8snprintfEPcmPKcz:
.LFB3741:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%rdi, -216(%rbp)
	movq	%rsi, -224(%rbp)
	movq	%rdx, -232(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L55
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L55:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$24, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	leaq	-208(%rbp), %rcx
	movq	-232(%rbp), %rdx
	movq	-224(%rbp), %rsi
	movq	-216(%rbp), %rax
	movq	%rax, %rdi
	call	vsnprintf@PLT
	nop
	movq	-184(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L56
	call	__stack_chk_fail@PLT
.L56:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3741:
	.size	_ZN5boost6system6detail8snprintfEPcmPKcz, .-_ZN5boost6system6detail8snprintfEPcmPKcz
	.section	.text._ZN5boost6system6detail17generic_value_tagC2Ei,"axG",@progbits,_ZN5boost6system6detail17generic_value_tagC5Ei,comdat
	.align 2
	.weak	_ZN5boost6system6detail17generic_value_tagC2Ei
	.type	_ZN5boost6system6detail17generic_value_tagC2Ei, @function
_ZN5boost6system6detail17generic_value_tagC2Ei:
.LFB3744:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3744:
	.size	_ZN5boost6system6detail17generic_value_tagC2Ei, .-_ZN5boost6system6detail17generic_value_tagC2Ei
	.weak	_ZN5boost6system6detail17generic_value_tagC1Ei
	.set	_ZN5boost6system6detail17generic_value_tagC1Ei,_ZN5boost6system6detail17generic_value_tagC2Ei
	.section	.text._ZNK5boost6system15error_condition6cat_idEv,"axG",@progbits,_ZNK5boost6system15error_condition6cat_idEv,comdat
	.align 2
	.weak	_ZNK5boost6system15error_condition6cat_idEv
	.type	_ZNK5boost6system15error_condition6cat_idEv, @function
_ZNK5boost6system15error_condition6cat_idEv:
.LFB3746:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L59
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.L61
.L59:
	movabsq	$-5572340897628102704, %rax
.L61:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3746:
	.size	_ZNK5boost6system15error_condition6cat_idEv, .-_ZNK5boost6system15error_condition6cat_idEv
	.section	.text._ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE,"axG",@progbits,_ZN5boost6system15error_conditionC5EiRKNS0_14error_categoryE,comdat
	.align 2
	.weak	_ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE
	.type	_ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE, @function
_ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE:
.LFB3751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3751:
	.size	_ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE, .-_ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE
	.weak	_ZN5boost6system15error_conditionC1EiRKNS0_14error_categoryE
	.set	_ZN5boost6system15error_conditionC1EiRKNS0_14error_categoryE,_ZN5boost6system15error_conditionC2EiRKNS0_14error_categoryE
	.section	.text._ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE,"axG",@progbits,_ZN5boost6system15error_conditionC5ENS0_6detail17generic_value_tagE,comdat
	.align 2
	.weak	_ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE
	.type	_ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE, @function
_ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE:
.LFB3754:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3754:
	.size	_ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE, .-_ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE
	.weak	_ZN5boost6system15error_conditionC1ENS0_6detail17generic_value_tagE
	.set	_ZN5boost6system15error_conditionC1ENS0_6detail17generic_value_tagE,_ZN5boost6system15error_conditionC2ENS0_6detail17generic_value_tagE
	.section	.text._ZN5boost6systemeqERKNS0_15error_conditionES3_,"axG",@progbits,_ZN5boost6systemeqERKNS0_15error_conditionES3_,comdat
	.weak	_ZN5boost6systemeqERKNS0_15error_conditionES3_
	.type	_ZN5boost6systemeqERKNS0_15error_conditionES3_, @function
_ZN5boost6systemeqERKNS0_15error_conditionES3_:
.LFB3767:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	je	.L65
	movl	$0, %eax
	jmp	.L66
.L65:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L67
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost6system15error_condition6cat_idEv@PLT
	movabsq	$-5572340897628102704, %rdx
	cmpq	%rdx, %rax
	sete	%al
	jmp	.L66
.L67:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	jne	.L68
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost6system15error_condition6cat_idEv@PLT
	movabsq	$-5572340897628102704, %rdx
	cmpq	%rdx, %rax
	sete	%al
	jmp	.L66
.L68:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost6systemeqERKNS0_14error_categoryES3_@PLT
	nop
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3767:
	.size	_ZN5boost6systemeqERKNS0_15error_conditionES3_, .-_ZN5boost6systemeqERKNS0_15error_conditionES3_
	.section	.rodata
.LC1:
	.string	"system"
	.section	.text._ZNK5boost6system6detail21system_error_category4nameEv,"axG",@progbits,_ZNK5boost6system6detail21system_error_category4nameEv,comdat
	.align 2
	.weak	_ZNK5boost6system6detail21system_error_category4nameEv
	.type	_ZNK5boost6system6detail21system_error_category4nameEv, @function
_ZNK5boost6system6detail21system_error_category4nameEv:
.LFB3780:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	.LC1(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3780:
	.size	_ZNK5boost6system6detail21system_error_category4nameEv, .-_ZNK5boost6system6detail21system_error_category4nameEv
	.section	.text._ZN5boost6system6detail29system_error_category_messageB5cxx11Ei,"axG",@progbits,_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei,comdat
	.weak	_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei
	.type	_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei, @function
_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei:
.LFB3782:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN5boost6system6detail30generic_error_category_messageB5cxx11Ei@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L73
	call	__stack_chk_fail@PLT
.L73:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3782:
	.size	_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei, .-_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei
	.section	.text._ZN5boost6system6detail29system_error_category_messageEiPcm,"axG",@progbits,_ZN5boost6system6detail29system_error_category_messageEiPcm,comdat
	.weak	_ZN5boost6system6detail29system_error_category_messageEiPcm
	.type	_ZN5boost6system6detail29system_error_category_messageEiPcm, @function
_ZN5boost6system6detail29system_error_category_messageEiPcm:
.LFB3783:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	-4(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN5boost6system6detail30generic_error_category_messageEiPcm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3783:
	.size	_ZN5boost6system6detail29system_error_category_messageEiPcm, .-_ZN5boost6system6detail29system_error_category_messageEiPcm
	.section	.text._ZNK5boost6system6detail21system_error_category23default_error_conditionEi,"axG",@progbits,_ZNK5boost6system6detail21system_error_category23default_error_conditionEi,comdat
	.align 2
	.weak	_ZNK5boost6system6detail21system_error_category23default_error_conditionEi
	.type	_ZNK5boost6system6detail21system_error_category23default_error_conditionEi, @function
_ZNK5boost6system6detail21system_error_category23default_error_conditionEi:
.LFB3784:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-76(%rbp), %edx
	leaq	-52(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN5boost6system6detail17generic_value_tagC1Ei@PLT
	movl	-52(%rbp), %edx
	leaq	-48(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN5boost6system15error_conditionC1ENS0_6detail17generic_value_tagE@PLT
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L78
	call	__stack_chk_fail@PLT
.L78:
	movl	%ecx, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3784:
	.size	_ZNK5boost6system6detail21system_error_category23default_error_conditionEi, .-_ZNK5boost6system6detail21system_error_category23default_error_conditionEi
	.section	.text._ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei,"axG",@progbits,_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei,comdat
	.align 2
	.weak	_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei
	.type	_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei, @function
_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei:
.LFB3785:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZN5boost6system6detail29system_error_category_messageB5cxx11Ei@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L81
	call	__stack_chk_fail@PLT
.L81:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3785:
	.size	_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei, .-_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei
	.section	.text._ZNK5boost6system6detail21system_error_category7messageEiPcm,"axG",@progbits,_ZNK5boost6system6detail21system_error_category7messageEiPcm,comdat
	.align 2
	.weak	_ZNK5boost6system6detail21system_error_category7messageEiPcm
	.type	_ZNK5boost6system6detail21system_error_category7messageEiPcm, @function
_ZNK5boost6system6detail21system_error_category7messageEiPcm:
.LFB3786:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movl	-12(%rbp), %eax
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	_ZN5boost6system6detail29system_error_category_messageEiPcm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3786:
	.size	_ZNK5boost6system6detail21system_error_category7messageEiPcm, .-_ZNK5boost6system6detail21system_error_category7messageEiPcm
	.section	.rodata
.LC2:
	.string	"std:unknown"
	.section	.text._ZNK5boost6system6detail22interop_error_category4nameEv,"axG",@progbits,_ZNK5boost6system6detail22interop_error_category4nameEv,comdat
	.align 2
	.weak	_ZNK5boost6system6detail22interop_error_category4nameEv
	.type	_ZNK5boost6system6detail22interop_error_category4nameEv, @function
_ZNK5boost6system6detail22interop_error_category4nameEv:
.LFB3790:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	.LC2(%rip), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3790:
	.size	_ZNK5boost6system6detail22interop_error_category4nameEv, .-_ZNK5boost6system6detail22interop_error_category4nameEv
	.section	.rodata
.LC3:
	.string	"Unknown interop error %d"
	.section	.text._ZNK5boost6system6detail22interop_error_category7messageEiPcm,"axG",@progbits,_ZNK5boost6system6detail22interop_error_category7messageEiPcm,comdat
	.align 2
	.weak	_ZNK5boost6system6detail22interop_error_category7messageEiPcm
	.type	_ZNK5boost6system6detail22interop_error_category7messageEiPcm, @function
_ZNK5boost6system6detail22interop_error_category7messageEiPcm:
.LFB3791:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN5boost6system6detail8snprintfEPcmPKcz@PLT
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3791:
	.size	_ZNK5boost6system6detail22interop_error_category7messageEiPcm, .-_ZNK5boost6system6detail22interop_error_category7messageEiPcm
	.section	.text._ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei,"axG",@progbits,_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei,comdat
	.align 2
	.weak	_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei
	.type	_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei, @function
_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei:
.LFB3792:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3792
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movl	%edx, -116(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %r8
	leaq	-80(%rbp), %rdx
	movl	-116(%rbp), %esi
	movq	-112(%rbp), %rax
	movl	$48, %ecx
	movq	%rax, %rdi
	call	*%r8
	movq	%rax, %rcx
	leaq	-81(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_@PLT
.LEHE2:
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L91
	jmp	.L93
.L92:
	endbr64
	movq	%rax, %rbx
	leaq	-81(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L93:
	call	__stack_chk_fail@PLT
.L91:
	movq	-104(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3792:
	.section	.gcc_except_table._ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei,"aG",@progbits,_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei,comdat
.LLSDA3792:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3792-.LLSDACSB3792
.LLSDACSB3792:
	.uleb128 .LEHB2-.LFB3792
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L92-.LFB3792
	.uleb128 0
	.uleb128 .LEHB3-.LFB3792
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE3792:
	.section	.text._ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei,"axG",@progbits,_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei,comdat
	.size	_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei, .-_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei
	.section	.text._ZNK5boost6system10error_code5valueEv,"axG",@progbits,_ZNK5boost6system10error_code5valueEv,comdat
	.align 2
	.weak	_ZNK5boost6system10error_code5valueEv
	.type	_ZNK5boost6system10error_code5valueEv, @function
_ZNK5boost6system10error_code5valueEv:
.LFB4227:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$1, %rax
	je	.L95
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	jmp	.L96
.L95:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10error_code5valueEv@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10error_code8categoryEv@PLT
	movq	%rax, %rcx
	movabsq	$79165176939955, %rdx
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$20, %rax
	imulq	$2097143, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	imull	$1000, %eax, %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
.L96:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4227:
	.size	_ZNK5boost6system10error_code5valueEv, .-_ZNK5boost6system10error_code5valueEv
	.section	.text._ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE,"axG",@progbits,_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE,comdat
	.align 2
	.weak	_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE
	.type	_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE, @function
_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE:
.LFB4236:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	jne	.L98
	cmpl	$0, -12(%rbp)
	jne	.L99
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-5572340897628102703, %rdx
	cmpq	%rdx, %rax
	jne	.L99
	movl	$1, %eax
	jmp	.L101
.L99:
	movl	$0, %eax
	jmp	.L101
.L98:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$1, %rax
	jne	.L102
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movabsq	$-5572340897628102702, %rdx
	cmpq	%rdx, %rax
	jne	.L103
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5boost6system10error_code5valueEv@PLT
	cmpl	%eax, -12(%rbp)
	jne	.L103
	movl	$1, %eax
	jmp	.L101
.L103:
	movl	$0, %eax
	jmp	.L101
.L102:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L105
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost6systemeqERKNS0_14error_categoryES3_@PLT
	testb	%al, %al
	je	.L105
	movl	$1, %eax
	jmp	.L107
.L105:
	movl	$0, %eax
.L107:
	nop
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4236:
	.size	_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE, .-_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE
	.section	.text._ZNK5boost6system14error_category23default_error_conditionEi,"axG",@progbits,_ZNK5boost6system14error_category23default_error_conditionEi,comdat
	.align 2
	.weak	_ZNK5boost6system14error_category23default_error_conditionEi
	.type	_ZNK5boost6system14error_category23default_error_conditionEi, @function
_ZNK5boost6system14error_category23default_error_conditionEi:
.LFB4263:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rdx
	movl	-60(%rbp), %ecx
	leaq	-48(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN5boost6system15error_conditionC1EiRKNS0_14error_categoryE@PLT
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	movl	%ecx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4263:
	.size	_ZNK5boost6system14error_category23default_error_conditionEi, .-_ZNK5boost6system14error_category23default_error_conditionEi
	.section	.text._ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE,"axG",@progbits,_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE,comdat
	.align 2
	.weak	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE
	.type	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE, @function
_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE:
.LFB4264:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	movq	(%rax), %rcx
	movl	-44(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	*%rcx
	movl	%eax, %ecx
	movq	%rdx, %rax
	movl	%ecx, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5boost6systemeqERKNS0_15error_conditionES3_@PLT
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L113
	call	__stack_chk_fail@PLT
.L113:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4264:
	.size	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE, .-_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE
	.section	.text._ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi,"axG",@progbits,_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi,comdat
	.align 2
	.weak	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi
	.type	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi, @function
_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi:
.LFB4265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rdx
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZNK5boost6system10error_code6equalsEiRKNS0_14error_categoryE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4265:
	.size	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi, .-_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi
	.section	.rodata
	.align 8
.LC4:
	.string	"No message text available for error %d"
	.section	.text._ZNK5boost6system14error_category7messageEiPcm,"axG",@progbits,_ZNK5boost6system14error_category7messageEiPcm,comdat
	.align 2
	.weak	_ZNK5boost6system14error_category7messageEiPcm
	.type	_ZNK5boost6system14error_category7messageEiPcm, @function
_ZNK5boost6system14error_category7messageEiPcm:
.LFB4266:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA4266
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%rcx, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	cmpq	$0, -96(%rbp)
	jne	.L117
	movq	-88(%rbp), %rbx
	jmp	.L118
.L117:
	cmpq	$1, -96(%rbp)
	jne	.L119
	movq	-88(%rbp), %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rbx
	jmp	.L118
.L119:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %r8
	leaq	-64(%rbp), %rax
	movl	-76(%rbp), %edx
	movq	-72(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB4:
	call	*%r8
.LEHE4:
	movq	-96(%rbp), %rax
	leaq	-1(%rax), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	movq	-96(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-88(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movq	-88(%rbp), %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
.L118:
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L121
	jmp	.L123
.L122:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movl	-76(%rbp), %edx
	movq	-96(%rbp), %rsi
	movq	-88(%rbp), %rax
	movl	%edx, %ecx
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	_ZN5boost6system6detail8snprintfEPcmPKcz@PLT
	movq	-88(%rbp), %rbx
	call	__cxa_end_catch@PLT
	jmp	.L118
.L123:
	call	__stack_chk_fail@PLT
.L121:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4266:
	.section	.gcc_except_table._ZNK5boost6system14error_category7messageEiPcm,"aG",@progbits,_ZNK5boost6system14error_category7messageEiPcm,comdat
	.align 4
.LLSDA4266:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT4266-.LLSDATTD4266
.LLSDATTD4266:
	.byte	0x1
	.uleb128 .LLSDACSE4266-.LLSDACSB4266
.LLSDACSB4266:
	.uleb128 .LEHB4-.LFB4266
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L122-.LFB4266
	.uleb128 0x1
.LLSDACSE4266:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT4266:
	.section	.text._ZNK5boost6system14error_category7messageEiPcm,"axG",@progbits,_ZNK5boost6system14error_category7messageEiPcm,comdat
	.size	_ZNK5boost6system14error_category7messageEiPcm, .-_ZNK5boost6system14error_category7messageEiPcm
	.section	.text._ZN6spdlog10source_locC2Ev,"axG",@progbits,_ZN6spdlog10source_locC5Ev,comdat
	.align 2
	.weak	_ZN6spdlog10source_locC2Ev
	.type	_ZN6spdlog10source_locC2Ev, @function
_ZN6spdlog10source_locC2Ev:
.LFB6734:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6734:
	.size	_ZN6spdlog10source_locC2Ev, .-_ZN6spdlog10source_locC2Ev
	.weak	_ZN6spdlog10source_locC1Ev
	.set	_ZN6spdlog10source_locC1Ev,_ZN6spdlog10source_locC2Ev
	.section	.text._ZNK6spdlog6logger10should_logENS_5level10level_enumE,"axG",@progbits,_ZNK6spdlog6logger10should_logENS_5level10level_enumE,comdat
	.align 2
	.weak	_ZNK6spdlog6logger10should_logENS_5level10level_enumE
	.type	_ZNK6spdlog6logger10should_logENS_5level10level_enumE, @function
_ZNK6spdlog6logger10should_logENS_5level10level_enumE:
.LFB6743:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$65535, %esi
	movl	%eax, %edi
	call	_ZStanSt12memory_orderSt23__memory_order_modifier@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	cmpl	%eax, %edx
	setle	%al
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6743:
	.size	_ZNK6spdlog6logger10should_logENS_5level10level_enumE, .-_ZNK6spdlog6logger10should_logENS_5level10level_enumE
	.section	.rodata
.LC5:
	.string	"\n"
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	_ZN6spdlog7details2osL11default_eolE, @object
	.size	_ZN6spdlog7details2osL11default_eolE, 8
_ZN6spdlog7details2osL11default_eolE:
	.quad	.LC5
	.section	.rodata
	.type	_ZN6spdlog7details2osL10folder_sepE, @object
	.size	_ZN6spdlog7details2osL10folder_sepE, 1
_ZN6spdlog7details2osL10folder_sepE:
	.byte	47
	.align 8
	.type	_ZN6spdlog7detailsL20default_async_q_sizeE, @object
	.size	_ZN6spdlog7detailsL20default_async_q_sizeE, 8
_ZN6spdlog7detailsL20default_async_q_sizeE:
	.quad	8192
	.align 4
	.type	_ZL20TIXML2_MAJOR_VERSION, @object
	.size	_ZL20TIXML2_MAJOR_VERSION, 4
_ZL20TIXML2_MAJOR_VERSION:
	.long	6
	.align 4
	.type	_ZL20TIXML2_MINOR_VERSION, @object
	.size	_ZL20TIXML2_MINOR_VERSION, 4
_ZL20TIXML2_MINOR_VERSION:
	.zero	4
	.align 4
	.type	_ZL20TIXML2_PATCH_VERSION, @object
	.size	_ZL20TIXML2_PATCH_VERSION, 4
_ZL20TIXML2_PATCH_VERSION:
	.zero	4
	.section	.text._ZN8tinyxml27XMLNode17FirstChildElementEPKc,"axG",@progbits,_ZN8tinyxml27XMLNode17FirstChildElementEPKc,comdat
	.align 2
	.weak	_ZN8tinyxml27XMLNode17FirstChildElementEPKc
	.type	_ZN8tinyxml27XMLNode17FirstChildElementEPKc, @function
_ZN8tinyxml27XMLNode17FirstChildElementEPKc:
.LFB6956:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK8tinyxml27XMLNode17FirstChildElementEPKc@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6956:
	.size	_ZN8tinyxml27XMLNode17FirstChildElementEPKc, .-_ZN8tinyxml27XMLNode17FirstChildElementEPKc
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt10filesystem7__cxx114path5_ListD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114path5_ListD5Ev,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.type	_ZNSt10filesystem7__cxx114path5_ListD2Ev, @function
_ZNSt10filesystem7__cxx114path5_ListD2Ev:
.LFB7349:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7349:
	.size	_ZNSt10filesystem7__cxx114path5_ListD2Ev, .-_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.weak	_ZNSt10filesystem7__cxx114path5_ListD1Ev
	.set	_ZNSt10filesystem7__cxx114path5_ListD1Ev,_ZNSt10filesystem7__cxx114path5_ListD2Ev
	.section	.text._ZNSt10filesystem7__cxx114pathD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114pathD5Ev,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114pathD2Ev
	.type	_ZNSt10filesystem7__cxx114pathD2Ev, @function
_ZNSt10filesystem7__cxx114pathD2Ev:
.LFB7351:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path5_ListD1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7351:
	.size	_ZNSt10filesystem7__cxx114pathD2Ev, .-_ZNSt10filesystem7__cxx114pathD2Ev
	.weak	_ZNSt10filesystem7__cxx114pathD1Ev
	.set	_ZNSt10filesystem7__cxx114pathD1Ev,_ZNSt10filesystem7__cxx114pathD2Ev
	.section	.text._ZNSt10filesystem7__cxx114pathC2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5Ev,comdat
	.align 2
	.weak	_ZNSt10filesystem7__cxx114pathC2Ev
	.type	_ZNSt10filesystem7__cxx114pathC2Ev, @function
_ZNSt10filesystem7__cxx114pathC2Ev:
.LFB7360:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7360
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114path5_ListC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7360:
	.section	.gcc_except_table._ZNSt10filesystem7__cxx114pathC2Ev,"aG",@progbits,_ZNSt10filesystem7__cxx114pathC5Ev,comdat
.LLSDA7360:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7360-.LLSDACSB7360
.LLSDACSB7360:
.LLSDACSE7360:
	.section	.text._ZNSt10filesystem7__cxx114pathC2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC5Ev,comdat
	.size	_ZNSt10filesystem7__cxx114pathC2Ev, .-_ZNSt10filesystem7__cxx114pathC2Ev
	.weak	_ZNSt10filesystem7__cxx114pathC1Ev
	.set	_ZNSt10filesystem7__cxx114pathC1Ev,_ZNSt10filesystem7__cxx114pathC2Ev
	.section	.text._ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB7695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7695:
	.size	_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev,"axG",@progbits,_ZNSt10shared_ptrI20RIOTFrameworkContextED5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev
	.type	_ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev, @function
_ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev:
.LFB7697:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7697:
	.size	_ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev, .-_ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev
	.weak	_ZNSt10shared_ptrI20RIOTFrameworkContextED1Ev
	.set	_ZNSt10shared_ptrI20RIOTFrameworkContextED1Ev,_ZNSt10shared_ptrI20RIOTFrameworkContextED2Ev
	.section	.rodata
	.align 32
	.type	_ZN6detailL9crc_tableE, @object
	.size	_ZN6detailL9crc_tableE, 2048
_ZN6detailL9crc_tableE:
	.quad	0
	.quad	1996959894
	.quad	3993919788
	.quad	2567524794
	.quad	124634137
	.quad	1886057615
	.quad	3915621685
	.quad	2657392035
	.quad	249268274
	.quad	2044508324
	.quad	3772115230
	.quad	2547177864
	.quad	162941995
	.quad	2125561021
	.quad	3887607047
	.quad	2428444049
	.quad	498536548
	.quad	1789927666
	.quad	4089016648
	.quad	2227061214
	.quad	450548861
	.quad	1843258603
	.quad	4107580753
	.quad	2211677639
	.quad	325883990
	.quad	1684777152
	.quad	4251122042
	.quad	2321926636
	.quad	335633487
	.quad	1661365465
	.quad	4195302755
	.quad	2366115317
	.quad	997073096
	.quad	1281953886
	.quad	3579855332
	.quad	2724688242
	.quad	1006888145
	.quad	1258607687
	.quad	3524101629
	.quad	2768942443
	.quad	901097722
	.quad	1119000684
	.quad	3686517206
	.quad	2898065728
	.quad	853044451
	.quad	1172266101
	.quad	3705015759
	.quad	2882616665
	.quad	651767980
	.quad	1373503546
	.quad	3369554304
	.quad	3218104598
	.quad	565507253
	.quad	1454621731
	.quad	3485111705
	.quad	3099436303
	.quad	671266974
	.quad	1594198024
	.quad	3322730930
	.quad	2970347812
	.quad	795835527
	.quad	1483230225
	.quad	3244367275
	.quad	3060149565
	.quad	1994146192
	.quad	31158534
	.quad	2563907772
	.quad	4023717930
	.quad	1907459465
	.quad	112637215
	.quad	2680153253
	.quad	3904427059
	.quad	2013776290
	.quad	251722036
	.quad	2517215374
	.quad	3775830040
	.quad	2137656763
	.quad	141376813
	.quad	2439277719
	.quad	3865271297
	.quad	1802195444
	.quad	476864866
	.quad	2238001368
	.quad	4066508878
	.quad	1812370925
	.quad	453092731
	.quad	2181625025
	.quad	4111451223
	.quad	1706088902
	.quad	314042704
	.quad	2344532202
	.quad	4240017532
	.quad	1658658271
	.quad	366619977
	.quad	2362670323
	.quad	4224994405
	.quad	1303535960
	.quad	984961486
	.quad	2747007092
	.quad	3569037538
	.quad	1256170817
	.quad	1037604311
	.quad	2765210733
	.quad	3554079995
	.quad	1131014506
	.quad	879679996
	.quad	2909243462
	.quad	3663771856
	.quad	1141124467
	.quad	855842277
	.quad	2852801631
	.quad	3708648649
	.quad	1342533948
	.quad	654459306
	.quad	3188396048
	.quad	3373015174
	.quad	1466479909
	.quad	544179635
	.quad	3110523913
	.quad	3462522015
	.quad	1591671054
	.quad	702138776
	.quad	2966460450
	.quad	3352799412
	.quad	1504918807
	.quad	783551873
	.quad	3082640443
	.quad	3233442989
	.quad	3988292384
	.quad	2596254646
	.quad	62317068
	.quad	1957810842
	.quad	3939845945
	.quad	2647816111
	.quad	81470997
	.quad	1943803523
	.quad	3814918930
	.quad	2489596804
	.quad	225274430
	.quad	2053790376
	.quad	3826175755
	.quad	2466906013
	.quad	167816743
	.quad	2097651377
	.quad	4027552580
	.quad	2265490386
	.quad	503444072
	.quad	1762050814
	.quad	4150417245
	.quad	2154129355
	.quad	426522225
	.quad	1852507879
	.quad	4275313526
	.quad	2312317920
	.quad	282753626
	.quad	1742555852
	.quad	4189708143
	.quad	2394877945
	.quad	397917763
	.quad	1622183637
	.quad	3604390888
	.quad	2714866558
	.quad	953729732
	.quad	1340076626
	.quad	3518719985
	.quad	2797360999
	.quad	1068828381
	.quad	1219638859
	.quad	3624741850
	.quad	2936675148
	.quad	906185462
	.quad	1090812512
	.quad	3747672003
	.quad	2825379669
	.quad	829329135
	.quad	1181335161
	.quad	3412177804
	.quad	3160834842
	.quad	628085408
	.quad	1382605366
	.quad	3423369109
	.quad	3138078467
	.quad	570562233
	.quad	1426400815
	.quad	3317316542
	.quad	2998733608
	.quad	733239954
	.quad	1555261956
	.quad	3268935591
	.quad	3050360625
	.quad	752459403
	.quad	1541320221
	.quad	2607071920
	.quad	3965973030
	.quad	1969922972
	.quad	40735498
	.quad	2617837225
	.quad	3943577151
	.quad	1913087877
	.quad	83908371
	.quad	2512341634
	.quad	3803740692
	.quad	2075208622
	.quad	213261112
	.quad	2463272603
	.quad	3855990285
	.quad	2094854071
	.quad	198958881
	.quad	2262029012
	.quad	4057260610
	.quad	1759359992
	.quad	534414190
	.quad	2176718541
	.quad	4139329115
	.quad	1873836001
	.quad	414664567
	.quad	2282248934
	.quad	4279200368
	.quad	1711684554
	.quad	285281116
	.quad	2405801727
	.quad	4167216745
	.quad	1634467795
	.quad	376229701
	.quad	2685067896
	.quad	3608007406
	.quad	1308918612
	.quad	956543938
	.quad	2808555105
	.quad	3495958263
	.quad	1231636301
	.quad	1047427035
	.quad	2932959818
	.quad	3654703836
	.quad	1088359270
	.quad	936918000
	.quad	2847714899
	.quad	3736837829
	.quad	1202900863
	.quad	817233897
	.quad	3183342108
	.quad	3401237130
	.quad	1404277552
	.quad	615818150
	.quad	3134207493
	.quad	3453421203
	.quad	1423857449
	.quad	601450431
	.quad	3009837614
	.quad	3294710456
	.quad	1567103746
	.quad	711928724
	.quad	3020668471
	.quad	3272380065
	.quad	1510334235
	.quad	755167117
	.section	.text._ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB7733:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7733:
	.size	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt10shared_ptrIN6spdlog6loggerEED2Ev,"axG",@progbits,_ZNSt10shared_ptrIN6spdlog6loggerEED5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrIN6spdlog6loggerEED2Ev
	.type	_ZNSt10shared_ptrIN6spdlog6loggerEED2Ev, @function
_ZNSt10shared_ptrIN6spdlog6loggerEED2Ev:
.LFB7735:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7735:
	.size	_ZNSt10shared_ptrIN6spdlog6loggerEED2Ev, .-_ZNSt10shared_ptrIN6spdlog6loggerEED2Ev
	.weak	_ZNSt10shared_ptrIN6spdlog6loggerEED1Ev
	.set	_ZNSt10shared_ptrIN6spdlog6loggerEED1Ev,_ZNSt10shared_ptrIN6spdlog6loggerEED2Ev
	.section	.rodata
	.align 8
.LC6:
	.string	"can not load config parameters"
	.section	.text._ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer,"axG",@progbits,_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer,comdat
	.align 2
	.weak	_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer
	.type	_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer, @function
_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer:
.LFB7728:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7728
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 72(%rax)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZN21InskyInspectionServer9globalCtxEv@PLT
.LEHE5:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv@PLT
	movq	%rax, %rdi
.LEHB6:
	call	_ZN20RIOTFrameworkContext16environment_infoEv@PLT
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv@PLT
	movq	%rax, %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN16FrameWorkEnvInfo13global_loggerEv@PLT
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrIN6spdlog6loggerEED1Ev@PLT
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN21SensorsDataSendServer4Impl11load_configEv@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L138
	movq	-72(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv@PLT
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger5errorIA31_cEEvRKT_@PLT
.LEHE6:
	movl	$0, %ebx
	jmp	.L139
.L138:
	movl	$1, %ebx
.L139:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI20RIOTFrameworkContextED1Ev@PLT
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L142
	jmp	.L144
.L143:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrI20RIOTFrameworkContextED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L144:
	call	__stack_chk_fail@PLT
.L142:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7728:
	.section	.gcc_except_table._ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer,"aG",@progbits,_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer,comdat
.LLSDA7728:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7728-.LLSDACSB7728
.LLSDACSB7728:
	.uleb128 .LEHB5-.LFB7728
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB7728
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L143-.LFB7728
	.uleb128 0
	.uleb128 .LEHB7-.LFB7728
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE7728:
	.section	.text._ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer,"axG",@progbits,_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer,comdat
	.size	_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer, .-_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer
	.section	.rodata
.LC7:
	.string	"collector"
	.align 8
.LC8:
	.string	"can not find element: collector"
.LC9:
	.string	"publisher"
	.align 8
.LC10:
	.string	"can not find element: publisher"
	.section	.text._ZN21SensorsDataSendServer4Impl11load_configEv,"axG",@progbits,_ZN21SensorsDataSendServer4Impl11load_configEv,comdat
	.align 2
	.weak	_ZN21SensorsDataSendServer4Impl11load_configEv
	.type	_ZN21SensorsDataSendServer4Impl11load_configEv, @function
_ZN21SensorsDataSendServer4Impl11load_configEv:
.LFB7738:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdi
	call	_ZN21InskyInspectionServer14config_elementEv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN8tinyxml27XMLNode17FirstChildElementEPKc@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L146
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv@PLT
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger5errorIA32_cEEvRKT_@PLT
	movl	$0, %eax
	jmp	.L147
.L146:
	movq	-16(%rbp), %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN8tinyxml27XMLNode17FirstChildElementEPKc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L148
	movq	-40(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv@PLT
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger5errorIA32_cEEvRKT_@PLT
	movl	$0, %eax
	jmp	.L147
.L148:
	movb	$0, -25(%rbp)
	movzbl	-25(%rbp), %eax
	xorl	$1, %eax
.L147:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7738:
	.size	_ZN21SensorsDataSendServer4Impl11load_configEv, .-_ZN21SensorsDataSendServer4Impl11load_configEv
	.section	.text._ZN21SensorsDataSendServer4Impl6enableEv,"axG",@progbits,_ZN21SensorsDataSendServer4Impl6enableEv,comdat
	.align 2
	.weak	_ZN21SensorsDataSendServer4Impl6enableEv
	.type	_ZN21SensorsDataSendServer4Impl6enableEv, @function
_ZN21SensorsDataSendServer4Impl6enableEv:
.LFB7739:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7739:
	.size	_ZN21SensorsDataSendServer4Impl6enableEv, .-_ZN21SensorsDataSendServer4Impl6enableEv
	.section	.text._ZN19InspectionSubServerC2Ev,"axG",@progbits,_ZN19InspectionSubServerC5Ev,comdat
	.align 2
	.weak	_ZN19InspectionSubServerC2Ev
	.type	_ZN19InspectionSubServerC2Ev, @function
_ZN19InspectionSubServerC2Ev:
.LFB7742:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	_ZTV19InspectionSubServer@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7742:
	.size	_ZN19InspectionSubServerC2Ev, .-_ZN19InspectionSubServerC2Ev
	.weak	_ZN19InspectionSubServerC1Ev
	.set	_ZN19InspectionSubServerC1Ev,_ZN19InspectionSubServerC2Ev
	.text
	.align 2
	.globl	_ZN21SensorsDataSendServerC2Ev
	.type	_ZN21SensorsDataSendServerC2Ev, @function
_ZN21SensorsDataSendServerC2Ev:
.LFB7744:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7744
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN19InspectionSubServerC2Ev@PLT
	movq	_ZTV21SensorsDataSendServer@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1IS3_vEEv@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB8:
	call	_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_@PLT
.LEHE8:
	movq	-40(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L154
	jmp	.L156
.L155:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB9:
	call	_Unwind_Resume@PLT
.LEHE9:
.L156:
	call	__stack_chk_fail@PLT
.L154:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7744:
	.section	.gcc_except_table,"a",@progbits
.LLSDA7744:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7744-.LLSDACSB7744
.LLSDACSB7744:
	.uleb128 .LEHB8-.LFB7744
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L155-.LFB7744
	.uleb128 0
	.uleb128 .LEHB9-.LFB7744
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
.LLSDACSE7744:
	.text
	.size	_ZN21SensorsDataSendServerC2Ev, .-_ZN21SensorsDataSendServerC2Ev
	.globl	_ZN21SensorsDataSendServerC1Ev
	.set	_ZN21SensorsDataSendServerC1Ev,_ZN21SensorsDataSendServerC2Ev
	.align 2
	.globl	_ZN21SensorsDataSendServerD2Ev
	.type	_ZN21SensorsDataSendServerD2Ev, @function
_ZN21SensorsDataSendServerD2Ev:
.LFB7747:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZTV21SensorsDataSendServer@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7747:
	.size	_ZN21SensorsDataSendServerD2Ev, .-_ZN21SensorsDataSendServerD2Ev
	.globl	_ZN21SensorsDataSendServerD1Ev
	.set	_ZN21SensorsDataSendServerD1Ev,_ZN21SensorsDataSendServerD2Ev
	.align 2
	.globl	_ZN21SensorsDataSendServer4initEP21InskyInspectionServer
	.type	_ZN21SensorsDataSendServer4initEP21InskyInspectionServer, @function
_ZN21SensorsDataSendServer4initEP21InskyInspectionServer:
.LFB7749:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv@PLT
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN21SensorsDataSendServer4Impl4initEP21InskyInspectionServer@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7749:
	.size	_ZN21SensorsDataSendServer4initEP21InskyInspectionServer, .-_ZN21SensorsDataSendServer4initEP21InskyInspectionServer
	.align 2
	.globl	_ZN21SensorsDataSendServer6deinitEv
	.type	_ZN21SensorsDataSendServer6deinitEv, @function
_ZN21SensorsDataSendServer6deinitEv:
.LFB7750:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7750:
	.size	_ZN21SensorsDataSendServer6deinitEv, .-_ZN21SensorsDataSendServer6deinitEv
	.align 2
	.globl	_ZN21SensorsDataSendServer6enableEv
	.type	_ZN21SensorsDataSendServer6enableEv, @function
_ZN21SensorsDataSendServer6enableEv:
.LFB7751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv@PLT
	movq	%rax, %rdi
	call	_ZN21SensorsDataSendServer4Impl6enableEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7751:
	.size	_ZN21SensorsDataSendServer6enableEv, .-_ZN21SensorsDataSendServer6enableEv
	.align 2
	.globl	_ZN21SensorsDataSendServer7disableEv
	.type	_ZN21SensorsDataSendServer7disableEv, @function
_ZN21SensorsDataSendServer7disableEv:
.LFB7752:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7752:
	.size	_ZN21SensorsDataSendServer7disableEv, .-_ZN21SensorsDataSendServer7disableEv
	.globl	SensorsDataSendServer_regist_helper
	.bss
	.type	SensorsDataSendServer_regist_helper, @object
	.size	SensorsDataSendServer_regist_helper, 1
SensorsDataSendServer_regist_helper:
	.zero	1
	.section	.text._ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_,comdat
	.weak	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.type	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, @function
_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_:
.LFB7754:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7754:
	.size	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_, .-_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_
	.section	.text._ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,"axG",@progbits,_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc,comdat
	.align 2
	.weak	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.type	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, @function
_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc:
.LFB7753:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -16(%rbp)
.L170:
	movb	$0, -17(%rbp)
	movq	-40(%rbp), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	leaq	-17(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L169
	addq	$1, -16(%rbp)
	jmp	.L170
.L169:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L172
	call	__stack_chk_fail@PLT
.L172:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7753:
	.size	_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc, .-_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD5Ev,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev:
.LFB7856:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7856:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD2Ev
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB8090:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8090
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv@PLT
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_@PLT
.LEHE10:
	cmpq	$0, -32(%rbp)
	je	.L175
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt11char_traitsIcE6lengthEPKc@PLT
	movq	-32(%rbp), %rdx
	addq	%rdx, %rax
	jmp	.L176
.L175:
	movq	-32(%rbp), %rax
	subq	$1, %rax
.L176:
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rcx
	movq	%rax, %rdx
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_@PLT
.LEHE11:
	jmp	.L179
.L178:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L179:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8090:
	.section	.gcc_except_table
.LLSDA8090:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8090-.LLSDACSB8090
.LLSDACSB8090:
	.uleb128 .LEHB10-.LFB8090
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB8090
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L178-.LFB8090
	.uleb128 0
	.uleb128 .LEHB12-.LFB8090
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8090:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED5Ev,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev:
.LFB8345:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L182
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv@PLT
.L182:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8345:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED1Ev,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev
	.section	.text._ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev,"axG",@progbits,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.type	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev, @function
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev:
.LFB8403:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L184
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE@PLT
.L184:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8403:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev, .-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev
	.set	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED1Ev,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEED2Ev
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB8441:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8441:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.section	.text._ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.type	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, @function
_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:
.LFB8460:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8460:
	.size	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .-_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.section	.text._ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv,"axG",@progbits,_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv
	.type	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv, @function
_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv:
.LFB8461:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8461:
	.size	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv, .-_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EEptEv
	.section	.text._ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_,"axG",@progbits,_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_,comdat
	.align 2
	.weak	_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_
	.type	_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_, @function
_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_:
.LFB8462:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_@PLT
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_@PLT
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8462:
	.size	_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_, .-_ZNSt10shared_ptrIN6spdlog6loggerEEaSEOS2_
	.section	.text._ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.type	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, @function
_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv:
.LFB8463:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8463:
	.size	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv, .-_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EEptEv
	.section	.text._ZN6spdlog6logger5errorIA31_cEEvRKT_,"axG",@progbits,_ZN6spdlog6logger5errorIA31_cEEvRKT_,comdat
	.align 2
	.weak	_ZN6spdlog6logger5errorIA31_cEEvRKT_
	.type	_ZN6spdlog6logger5errorIA31_cEEvRKT_, @function
_ZN6spdlog6logger5errorIA31_cEEvRKT_:
.LFB8464:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8464:
	.size	_ZN6spdlog6logger5errorIA31_cEEvRKT_, .-_ZN6spdlog6logger5errorIA31_cEEvRKT_
	.section	.text._ZN3fmt2v617basic_string_viewIcEC2EPKc,"axG",@progbits,_ZN3fmt2v617basic_string_viewIcEC5EPKc,comdat
	.align 2
	.weak	_ZN3fmt2v617basic_string_viewIcEC2EPKc
	.type	_ZN3fmt2v617basic_string_viewIcEC2EPKc, @function
_ZN3fmt2v617basic_string_viewIcEC2EPKc:
.LFB8466:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11char_traitsIcE6lengthEPKc@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8466:
	.size	_ZN3fmt2v617basic_string_viewIcEC2EPKc, .-_ZN3fmt2v617basic_string_viewIcEC2EPKc
	.weak	_ZN3fmt2v617basic_string_viewIcEC1EPKc
	.set	_ZN3fmt2v617basic_string_viewIcEC1EPKc,_ZN3fmt2v617basic_string_viewIcEC2EPKc
	.section	.text._ZN6spdlog6logger5errorIA32_cEEvRKT_,"axG",@progbits,_ZN6spdlog6logger5errorIA32_cEEvRKT_,comdat
	.align 2
	.weak	_ZN6spdlog6logger5errorIA32_cEEvRKT_
	.type	_ZN6spdlog6logger5errorIA32_cEEvRKT_, @function
_ZN6spdlog6logger5errorIA32_cEEvRKT_:
.LFB8469:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8469:
	.size	_ZN6spdlog6logger5errorIA32_cEEvRKT_, .-_ZN6spdlog6logger5errorIA32_cEEvRKT_
	.section	.text._ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv,"axG",@progbits,_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC5IS2_S4_Lb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.type	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, @function
_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv:
.LFB8477:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8477:
	.size	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv, .-_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.weak	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv
	.set	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv,_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2IS2_S4_Lb1EEEv
	.section	.text._ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev,"axG",@progbits,_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC5Ev,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev
	.type	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev, @function
_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev:
.LFB8479:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8479:
	.size	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev, .-_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev
	.weak	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1Ev
	.set	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1Ev,_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2Ev
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC5IS3_vEEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv:
.LFB8481:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8481
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8481:
	.section	.gcc_except_table
.LLSDA8481:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8481-.LLSDACSB8481
.LLSDACSB8481:
.LLSDACSE8481:
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC5IS3_vEEv,comdat
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1IS3_vEEv
	.set	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1IS3_vEEv,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEv
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev:
.LFB8484:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L201
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_@PLT
.L201:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8484:
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED1Ev
	.set	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED1Ev,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EED2Ev
	.section	.text._ZN21SensorsDataSendServer4ImplC2Ev,"axG",@progbits,_ZN21SensorsDataSendServer4ImplC5Ev,comdat
	.align 2
	.weak	_ZN21SensorsDataSendServer4ImplC2Ev
	.type	_ZN21SensorsDataSendServer4ImplC2Ev, @function
_ZN21SensorsDataSendServer4ImplC2Ev:
.LFB8488:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrIN6spdlog6loggerEEC1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrIN6spdlog6loggerEEC1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8488:
	.size	_ZN21SensorsDataSendServer4ImplC2Ev, .-_ZN21SensorsDataSendServer4ImplC2Ev
	.weak	_ZN21SensorsDataSendServer4ImplC1Ev
	.set	_ZN21SensorsDataSendServer4ImplC1Ev,_ZN21SensorsDataSendServer4ImplC2Ev
	.section	.text._ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_,"axG",@progbits,_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_,comdat
	.weak	_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	.type	_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_, @function
_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_:
.LFB8486:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$80, %edi
	call	_Znwm@PLT
	movq	%rax, %rbx
	movq	$0, (%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	movq	$0, 32(%rbx)
	movq	$0, 40(%rbx)
	movq	$0, 48(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	movq	%rbx, %rdi
	call	_ZN21SensorsDataSendServer4ImplC1Ev@PLT
	movq	-24(%rbp), %rax
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1IS3_vEEPS1_@PLT
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8486:
	.size	_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_, .-_ZSt11make_uniqueIN21SensorsDataSendServer4ImplEJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_:
.LFB8490:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv@PLT
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8490:
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEaSEOS4_
	.section	.text._ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv,"axG",@progbits,_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv
	.type	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv, @function
_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv:
.LFB8491:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8491:
	.size	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv, .-_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEptEv
	.section	.text._ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv,"axG",@progbits,_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv,comdat
	.align 2
	.weak	_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv
	.type	_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv, @function
_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv:
.LFB8493:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_@PLT
	leaq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC1I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED1Ev@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L211
	call	__stack_chk_fail@PLT
.L211:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8493:
	.size	_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv, .-_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv
	.section	.text._ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev,"axG",@progbits,_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED5Ev,comdat
	.align 2
	.weak	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev
	.type	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev, @function
_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev:
.LFB8499:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8499:
	.size	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev, .-_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev
	.weak	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED1Ev
	.set	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED1Ev,_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED2Ev
	.section	.text._ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc,"axG",@progbits,_ZN21SubServerRegistHelperI21SensorsDataSendServerEC5EPKc,comdat
	.align 2
	.weak	_ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc
	.type	_ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc, @function
_ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc:
.LFB8501:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8501
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
.LEHB13:
	call	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC1IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_@PLT
.LEHE13:
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-97(%rbp), %rdx
	movq	-128(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_@PLT
.LEHE14:
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZN17SubServerRegister6registERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteISA_EEvEE@PLT
.LEHE15:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED1Ev@PLT
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L216
	jmp	.L219
.L218:
	endbr64
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L215
.L217:
	endbr64
	movq	%rax, %rbx
.L215:
	leaq	-97(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB16:
	call	_Unwind_Resume@PLT
.LEHE16:
.L219:
	call	__stack_chk_fail@PLT
.L216:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8501:
	.section	.gcc_except_table
.LLSDA8501:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8501-.LLSDACSB8501
.LLSDACSB8501:
	.uleb128 .LEHB13-.LFB8501
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB8501
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L217-.LFB8501
	.uleb128 0
	.uleb128 .LEHB15-.LFB8501
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L218-.LFB8501
	.uleb128 0
	.uleb128 .LEHB16-.LFB8501
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
.LLSDACSE8501:
	.section	.text._ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc,"axG",@progbits,_ZN21SubServerRegistHelperI21SensorsDataSendServerEC5EPKc,comdat
	.size	_ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc, .-_ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc
	.weak	_ZN21SubServerRegistHelperI21SensorsDataSendServerEC1EPKc
	.set	_ZN21SubServerRegistHelperI21SensorsDataSendServerEC1EPKc,_ZN21SubServerRegistHelperI21SensorsDataSendServerEC2EPKc
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_:
.LFB8525:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8525:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv,comdat
	.align 2
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, @function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv:
.LFB8751:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L223
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$16, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
	movq	-8(%rbp), %rax
	addq	$12, %rax
	movl	$-1, %esi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxL27__exchange_and_add_dispatchEPii
	cmpl	$1, %eax
	sete	%al
	testb	%al, %al
	je	.L223
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$24, %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	*%rdx
.L223:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8751:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv, .-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv
	.section	.text._ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE,"axG",@progbits,_ZN3fmt2v617basic_string_viewIcEC5ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE,comdat
	.align 2
	.weak	_ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.type	_ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE, @function
_ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE:
.LFB8760:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4dataEv@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv@PLT
	movq	-8(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8760:
	.size	_ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE, .-_ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.weak	_ZN3fmt2v617basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.set	_ZN3fmt2v617basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE,_ZN3fmt2v617basic_string_viewIcEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE
	.section	.text._ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv:
.LFB8804:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8804:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.type	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv, @function
_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv:
.LFB8805:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8805:
	.size	_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv, .-_ZNSt10unique_ptrINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE11get_deleterEv
	.section	.text._ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB8806:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8806:
	.size	_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRPNSt10filesystem7__cxx114path5_List5_ImplEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_,"axG",@progbits,_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_,comdat
	.align 2
	.weak	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	.type	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_, @function
_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_:
.LFB8870:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8870:
	.size	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_, .-_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_
	.section	.text._ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.type	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, @function
_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:
.LFB8879:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8879:
	.size	_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .-_ZNKSt19__shared_ptr_accessI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.section	.text._ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv,"axG",@progbits,_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv
	.type	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv, @function
_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv:
.LFB8880:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8880:
	.size	_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv, .-_ZNKSt10unique_ptrI16FrameWorkEnvInfoSt14default_deleteIS0_EE3getEv
	.section	.text._ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_,"axG",@progbits,_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_,comdat
	.weak	_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_
	.type	_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_, @function
_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_:
.LFB8881:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8881:
	.size	_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_, .-_ZSt4moveIRSt10shared_ptrIN6spdlog6loggerEEEONSt16remove_referenceIT_E4typeEOS6_
	.section	.text._ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_,"axG",@progbits,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_
	.type	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_, @function
_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_:
.LFB8882:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC1EOS4_@PLT
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EED1Ev@PLT
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L240
	call	__stack_chk_fail@PLT
.L240:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8882:
	.size	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_, .-_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEaSEOS4_
	.section	.text._ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,"axG",@progbits,_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv,comdat
	.align 2
	.weak	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.type	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, @function
_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv:
.LFB8883:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8883:
	.size	_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv, .-_ZNKSt19__shared_ptr_accessIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2ELb0ELb0EE6_M_getEv
	.section	.text._ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_,"axG",@progbits,_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_,comdat
	.align 2
	.weak	_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_
	.type	_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_, @function
_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_:
.LFB8884:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6spdlog10source_locC1Ev@PLT
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_@PLT
	addq	$32, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L244
	call	__stack_chk_fail@PLT
.L244:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8884:
	.size	_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_, .-_ZN6spdlog6logger3logIA31_cEEvNS_5level10level_enumERKT_
	.section	.text._ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_,"axG",@progbits,_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_,comdat
	.align 2
	.weak	_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_
	.type	_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_, @function
_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_:
.LFB8886:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movq	$0, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6spdlog10source_locC1Ev@PLT
	movq	-56(%rbp), %rdx
	movl	-44(%rbp), %ecx
	movq	-40(%rbp), %rax
	subq	$8, %rsp
	pushq	-16(%rbp)
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_@PLT
	addq	$32, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L246
	call	__stack_chk_fail@PLT
.L246:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8886:
	.size	_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_, .-_ZN6spdlog6logger3logIA32_cEEvNS_5level10level_enumERKT_
	.section	.text._ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev:
.LFB8888:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8888:
	.size	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev, .-_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC1Ev,_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC2Ev
	.section	.text._ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv:
.LFB8890:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8890:
	.size	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv:
.LFB8891:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8891:
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv
	.section	.text._ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB8892:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8892:
	.size	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZN21SensorsDataSendServer4ImplD2Ev,"axG",@progbits,_ZN21SensorsDataSendServer4ImplD5Ev,comdat
	.align 2
	.weak	_ZN21SensorsDataSendServer4ImplD2Ev
	.type	_ZN21SensorsDataSendServer4ImplD2Ev, @function
_ZN21SensorsDataSendServer4ImplD2Ev:
.LFB8895:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$32, %rax
	movq	%rax, %rdi
	call	_ZNSt10filesystem7__cxx114pathD1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrIN6spdlog6loggerEED1Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10shared_ptrIN6spdlog6loggerEED1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8895:
	.size	_ZN21SensorsDataSendServer4ImplD2Ev, .-_ZN21SensorsDataSendServer4ImplD2Ev
	.weak	_ZN21SensorsDataSendServer4ImplD1Ev
	.set	_ZN21SensorsDataSendServer4ImplD1Ev,_ZN21SensorsDataSendServer4ImplD2Ev
	.section	.text._ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_,"axG",@progbits,_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_
	.type	_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_, @function
_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_:
.LFB8893:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L257
	movq	%rbx, %rdi
	call	_ZN21SensorsDataSendServer4ImplD1Ev@PLT
	movl	$80, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L257:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8893:
	.size	_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_, .-_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_
	.section	.text._ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev,"axG",@progbits,_ZNSt10shared_ptrIN6spdlog6loggerEEC5Ev,comdat
	.align 2
	.weak	_ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev
	.type	_ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev, @function
_ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev:
.LFB8898:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8898:
	.size	_ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev, .-_ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev
	.weak	_ZNSt10shared_ptrIN6spdlog6loggerEEC1Ev
	.set	_ZNSt10shared_ptrIN6spdlog6loggerEEC1Ev,_ZNSt10shared_ptrIN6spdlog6loggerEEC2Ev
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_:
.LFB8901:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8901
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1EPS1_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8901:
	.section	.gcc_except_table
.LLSDA8901:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8901-.LLSDACSB8901
.LLSDACSB8901:
.LLSDACSE8901:
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC5IS3_vEEPS1_,comdat
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1IS3_vEEPS1_
	.set	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1IS3_vEEPS1_,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2IS3_vEEPS1_
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_:
.LFB8903:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv@PLT
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_@PLT
	movq	-32(%rbp), %rax
	testq	%rax, %rax
	je	.L262
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE11get_deleterEv@PLT
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt14default_deleteIN21SensorsDataSendServer4ImplEEclEPS1_@PLT
.L262:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8903:
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE5resetEPS1_
	.section	.text._ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv,"axG",@progbits,_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv
	.type	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv, @function
_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv:
.LFB8904:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv@PLT
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8904:
	.size	_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv, .-_ZNSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE7releaseEv
	.section	.text._ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB8905:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8905:
	.size	_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardISt14default_deleteIN21SensorsDataSendServer4ImplEEEOT_RNSt16remove_referenceIS4_E4typeE
	.section	.text._ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv,"axG",@progbits,_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv
	.type	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv, @function
_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv:
.LFB8906:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8906:
	.size	_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv, .-_ZNKSt10unique_ptrIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE3getEv
	.section	.text._ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_,"axG",@progbits,_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_,comdat
	.weak	_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	.type	_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_, @function
_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_:
.LFB8907:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8907
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	$16, %edi
.LEHB17:
	call	_Znwm@PLT
.LEHE17:
	movq	%rax, %rsi
	movq	%rsi, -32(%rbp)
	movq	%rsi, %rdi
.LEHB18:
	call	_ZN21SensorsDataSendServerC1Ev@PLT
.LEHE18:
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC1IS2_vEEPS0_@PLT
	jmp	.L273
.L272:
	endbr64
	movq	%rax, %rbx
	movl	$16, %esi
	movq	-32(%rbp), %rdi
	call	_ZdlPvm@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L273:
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8907:
	.section	.gcc_except_table
.LLSDA8907:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8907-.LLSDACSB8907
.LLSDACSB8907:
	.uleb128 .LEHB17-.LFB8907
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB8907
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L272-.LFB8907
	.uleb128 0
	.uleb128 .LEHB19-.LFB8907
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE8907:
	.section	.text._ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_,"axG",@progbits,_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_,comdat
	.size	_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_, .-_ZSt11make_uniqueI21SensorsDataSendServerJEENSt9_MakeUniqIT_E15__single_objectEDpOT0_
	.section	.text._ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev,"axG",@progbits,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED5Ev,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev
	.type	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev, @function
_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev:
.LFB8909:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L275
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv@PLT
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_@PLT
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_@PLT
.L275:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8909:
	.size	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev, .-_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev
	.weak	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED1Ev
	.set	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED1Ev,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EED2Ev
	.section	.text._ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E,"axG",@progbits,_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC5I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E
	.type	_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E, @function
_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E:
.LFB8916:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8916
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv@PLT
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv@PLT
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC1IS1_I21SensorsDataSendServerEEEPS0_OT_@PLT
	nop
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8916:
	.section	.gcc_except_table
.LLSDA8916:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8916-.LLSDACSB8916
.LLSDACSB8916:
.LLSDACSE8916:
	.section	.text._ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E,"axG",@progbits,_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC5I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E,comdat
	.size	_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E, .-_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E
	.weak	_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC1I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E
	.set	_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC1I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E,_ZNSt10unique_ptrI19InspectionSubServerSt14default_deleteIS0_EEC2I21SensorsDataSendServerS1_IS5_EvEEOS_IT_T0_E
	.section	.text._ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_,"axG",@progbits,_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC5IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_,comdat
	.align 2
	.weak	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_
	.type	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_, @function
_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_:
.LFB8922:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8922
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseC2Ev@PLT
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_@PLT
	testb	%al, %al
	je	.L281
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_@PLT
.LEHE20:
	movq	-24(%rbp), %rax
	movq	_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data@GOTPCREL(%rip), %rdx
	movq	%rdx, 24(%rax)
	movq	-24(%rbp), %rax
	movq	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation@GOTPCREL(%rip), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L281
.L280:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_baseD2Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB21:
	call	_Unwind_Resume@PLT
.LEHE21:
.L281:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8922:
	.section	.gcc_except_table
.LLSDA8922:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8922-.LLSDACSB8922
.LLSDACSB8922:
	.uleb128 .LEHB20-.LFB8922
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L280-.LFB8922
	.uleb128 0
	.uleb128 .LEHB21-.LFB8922
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
.LLSDACSE8922:
	.section	.text._ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_,"axG",@progbits,_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC5IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_,comdat
	.size	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_, .-_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_
	.weak	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC1IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_
	.set	_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC1IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_,_ZNSt8functionIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEEC2IZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_vvEET_
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type:
.LFB8927:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L283
	call	__stack_chk_fail@PLT
.L283:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8927:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type
	.section	.text._ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.type	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, @function
_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v:
.LFB9073:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9073:
	.size	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v, .-_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v
	.section	.text._ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"axG",@progbits,_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,comdat
	.weak	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.type	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, @function
_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
.LFB9079:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9079:
	.size	_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, .-_ZSt3getILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.section	.text._ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv:
.LFB9080:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9080:
	.size	_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implINSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEE10_M_deleterEv
	.section	.text._ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.align 2
	.weak	_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.type	_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv, @function
_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv:
.LFB9110:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9110:
	.size	_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv, .-_ZNKSt12__shared_ptrI20RIOTFrameworkContextLN9__gnu_cxx12_Lock_policyE2EE3getEv
	.section	.text._ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv,"axG",@progbits,_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv
	.type	_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv, @function
_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv:
.LFB9111:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_@PLT
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9111:
	.size	_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv, .-_ZNKSt15__uniq_ptr_implI16FrameWorkEnvInfoSt14default_deleteIS0_EE6_M_ptrEv
	.section	.text._ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB9112:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9112:
	.size	_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_,"axG",@progbits,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC5EOS4_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_
	.type	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_, @function
_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_:
.LFB9114:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev@PLT
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_@PLT
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9114:
	.size	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_, .-_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC1EOS4_
	.set	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC1EOS4_,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2EOS4_
	.section	.text._ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_,"axG",@progbits,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_
	.type	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_, @function
_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_:
.LFB9116:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_@PLT
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE7_M_swapERS2_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9116:
	.size	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_, .-_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE4swapERS4_
	.section	.text._ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv,"axG",@progbits,_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv,comdat
	.align 2
	.weak	_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.type	_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv, @function
_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv:
.LFB9117:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9117:
	.size	_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv, .-_ZNKSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EE3getEv
	.section	.text._ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_,"axG",@progbits,_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_,comdat
	.align 2
	.weak	_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_
	.type	_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_, @function
_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_:
.LFB9118:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-172(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNK6spdlog6logger10should_logENS_5level10level_enumE@PLT
	movb	%al, -146(%rbp)
	movq	-168(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	call	_ZNK6spdlog7details10backtracer7enabledEv@PLT
	movb	%al, -145(%rbp)
	movzbl	-146(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L301
	movzbl	-145(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L304
.L301:
	movq	-184(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3fmt2v617basic_string_viewIcEC1EPKc@PLT
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3fmt2v617basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	-172(%rbp), %ecx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %r10
	leaq	-112(%rbp), %rdi
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%r10, %rdx
	call	_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt2v617basic_string_viewIcEENS_5level10level_enumES6_@PLT
	addq	$32, %rsp
	movzbl	-145(%rbp), %ecx
	movzbl	-146(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb@PLT
	jmp	.L300
.L304:
	nop
.L300:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L303
	call	__stack_chk_fail@PLT
.L303:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9118:
	.size	_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_, .-_ZN6spdlog6logger3logIA31_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_
	.section	.text._ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_,"axG",@progbits,_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_,comdat
	.align 2
	.weak	_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_
	.type	_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_, @function
_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_:
.LFB9120:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$192, %rsp
	movq	%rdi, -168(%rbp)
	movl	%esi, -172(%rbp)
	movq	%rdx, -184(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-172(%rbp), %edx
	movq	-168(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNK6spdlog6logger10should_logENS_5level10level_enumE@PLT
	movb	%al, -146(%rbp)
	movq	-168(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rdi
	call	_ZNK6spdlog7details10backtracer7enabledEv@PLT
	movb	%al, -145(%rbp)
	movzbl	-146(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L306
	movzbl	-145(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	jne	.L309
.L306:
	movq	-184(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3fmt2v617basic_string_viewIcEC1EPKc@PLT
	movq	-168(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN3fmt2v617basic_string_viewIcEC1ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EE@PLT
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rdx
	movl	-172(%rbp), %ecx
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %r10
	leaq	-112(%rbp), %rdi
	subq	$8, %rsp
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%r10, %rdx
	call	_ZN6spdlog7details7log_msgC1ENS_10source_locEN3fmt2v617basic_string_viewIcEENS_5level10level_enumES6_@PLT
	addq	$32, %rsp
	movzbl	-145(%rbp), %ecx
	movzbl	-146(%rbp), %edx
	leaq	-112(%rbp), %rsi
	movq	-168(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb@PLT
	jmp	.L305
.L309:
	nop
.L305:
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L308
	call	__stack_chk_fail@PLT
.L308:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9120:
	.size	_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_, .-_ZN6spdlog6logger3logIA32_cLPS2_0EEEvNS_10source_locENS_5level10level_enumERKT_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev:
.LFB9122:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9122:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev:
.LFB9125:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9125:
	.size	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev, .-_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC1Ev,_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EEC2Ev
	.section	.text._ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB9127:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9127:
	.size	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv:
.LFB9128:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9128:
	.size	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE10_M_deleterEv
	.section	.text._ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev,"axG",@progbits,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC5Ev,comdat
	.align 2
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.type	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev, @function
_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev:
.LFB9130:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC1Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9130:
	.size	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev, .-_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.weak	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC1Ev
	.set	_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC1Ev,_ZNSt12__shared_ptrIN6spdlog6loggerELN9__gnu_cxx12_Lock_policyE2EEC2Ev
	.section	.text._ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_,"axG",@progbits,_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC5EPS1_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_
	.type	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_, @function
_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_:
.LFB9133:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEEC1IS2_S4_Lb1EEEv@PLT
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv@PLT
	movq	%rbx, (%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9133:
	.size	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_, .-_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_
	.weak	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1EPS1_
	.set	_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC1EPS1_,_ZNSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEC2EPS1_
	.section	.text._ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_,"axG",@progbits,_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_,comdat
	.weak	_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	.type	_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_, @function
_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_:
.LFB9135:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN21SensorsDataSendServer4ImplEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L319
	call	__stack_chk_fail@PLT
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9135:
	.size	_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_, .-_ZSt4swapIPN21SensorsDataSendServer4ImplEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	.section	.text._ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv,"axG",@progbits,_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv
	.type	_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv, @function
_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv:
.LFB9136:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_@PLT
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9136:
	.size	_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv, .-_ZNKSt15__uniq_ptr_implIN21SensorsDataSendServer4ImplESt14default_deleteIS1_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_,"axG",@progbits,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC5IS2_vEEPS0_,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_
	.type	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_, @function
_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_:
.LFB9142:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9142
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC1EPS0_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9142:
	.section	.gcc_except_table
.LLSDA9142:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9142-.LLSDACSB9142
.LLSDACSB9142:
.LLSDACSE9142:
	.section	.text._ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_,"axG",@progbits,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC5IS2_vEEPS0_,comdat
	.size	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_, .-_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_
	.weak	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC1IS2_vEEPS0_
	.set	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC1IS2_vEEPS0_,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EEC2IS2_vEEPS0_
	.section	.text._ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv,"axG",@progbits,_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv
	.type	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv, @function
_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv:
.LFB9144:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9144:
	.size	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv, .-_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv
	.section	.text._ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv,"axG",@progbits,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv
	.type	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv, @function
_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv:
.LFB9145:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9145:
	.size	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv, .-_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE11get_deleterEv
	.section	.text._ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_,"axG",@progbits,_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_,comdat
	.weak	_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_
	.type	_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_, @function
_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_:
.LFB9146:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9146:
	.size	_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_, .-_ZSt4moveIRP21SensorsDataSendServerEONSt16remove_referenceIT_E4typeEOS4_
	.section	.text._ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_,"axG",@progbits,_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_,comdat
	.align 2
	.weak	_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_
	.type	_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_, @function
_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_:
.LFB9147:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rbx
	testq	%rbx, %rbx
	je	.L331
	movq	%rbx, %rdi
	call	_ZN21SensorsDataSendServerD1Ev@PLT
	movl	$16, %esi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L331:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9147:
	.size	_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_, .-_ZNKSt14default_deleteI21SensorsDataSendServerEclEPS0_
	.section	.text._ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv,"axG",@progbits,_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv,comdat
	.align 2
	.weak	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv
	.type	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv, @function
_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv:
.LFB9148:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv@PLT
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv@PLT
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9148:
	.size	_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv, .-_ZNSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE7releaseEv
	.section	.text._ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB9149:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9149:
	.size	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_,"axG",@progbits,_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC5IS1_I21SensorsDataSendServerEEEPS0_OT_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_
	.type	_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_, @function
_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_:
.LFB9153:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC1IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_@PLT
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9153:
	.size	_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_, .-_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_
	.weak	_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC1IS1_I21SensorsDataSendServerEEEPS0_OT_
	.set	_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC1IS1_I21SensorsDataSendServerEEEPS0_OT_,_ZNSt15__uniq_ptr_implI19InspectionSubServerSt14default_deleteIS0_EEC2IS1_I21SensorsDataSendServerEEEPS0_OT_
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_:
.LFB9159:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9159:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E21_M_not_empty_functionIS6_EEbRKT_
	.section	.text._ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_:
.LFB9160:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9160:
	.size	_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_:
.LFB9161:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L342
	call	__stack_chk_fail@PLT
.L342:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9161:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_
	.section	.text._ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data,"axG",@progbits,_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data,comdat
	.weak	_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data
	.type	_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data, @function
_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data:
.LFB9162:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcENKUlvE_clEv@PLT
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L345
	call	__stack_chk_fail@PLT
.L345:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9162:
	.size	_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data, .-_ZNSt17_Function_handlerIFSt10unique_ptrI19InspectionSubServerSt14default_deleteIS1_EEvEZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E9_M_invokeERKSt9_Any_data
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation:
.LFB9163:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-52(%rbp), %eax
	cmpl	$3, %eax
	je	.L347
	cmpl	$3, %eax
	jg	.L348
	cmpl	$2, %eax
	je	.L349
	cmpl	$2, %eax
	jg	.L348
	testl	%eax, %eax
	je	.L350
	cmpl	$1, %eax
	je	.L351
	jmp	.L348
.L350:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPKSt9type_infoEERT_v@PLT
	movq	_ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_@GOTPCREL(%rip), %rdx
	movq	%rdx, (%rax)
	jmp	.L348
.L351:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data@PLT
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v@PLT
	movq	%rbx, (%rax)
	jmp	.L348
.L349:
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE@PLT
	jmp	.L348
.L347:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE@PLT
	nop
.L348:
	movl	$0, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L353
	call	__stack_chk_fail@PLT
.L353:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9163:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation
	.section	.text._ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB9168:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_@PLT
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9168:
	.size	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.rodata
	.align 8
.LC11:
	.string	"basic_string::_M_construct null not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag:
.LFB9167:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA9167
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_@PLT
	testb	%al, %al
	je	.L357
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L357
	movl	$1, %eax
	jmp	.L358
.L357:
	movl	$0, %eax
.L358:
	testb	%al, %al
	je	.L359
	leaq	.LC11(%rip), %rdi
.LEHB22:
	call	_ZSt19__throw_logic_errorPKc@PLT
.L359:
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	$15, %rax
	jbe	.L360
	leaq	-32(%rbp), %rcx
	movq	-40(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm@PLT
.LEHE22:
.L360:
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB23:
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv@PLT
.LEHE23:
	movq	%rax, %rcx
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_@PLT
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm@PLT
.LEHE24:
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L363
	jmp	.L366
.L364:
	endbr64
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	call	__cxa_rethrow@PLT
.LEHE25:
.L365:
	endbr64
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB26:
	call	_Unwind_Resume@PLT
.LEHE26:
.L366:
	call	__stack_chk_fail@PLT
.L363:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9167:
	.section	.gcc_except_table
	.align 4
.LLSDA9167:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT9167-.LLSDATTD9167
.LLSDATTD9167:
	.byte	0x1
	.uleb128 .LLSDACSE9167-.LLSDACSB9167
.LLSDACSB9167:
	.uleb128 .LEHB22-.LFB9167
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB23-.LFB9167
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L364-.LFB9167
	.uleb128 0x1
	.uleb128 .LEHB24-.LFB9167
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB9167
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L365-.LFB9167
	.uleb128 0
	.uleb128 .LEHB26-.LFB9167
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE9167:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT9167:
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag,comdat
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag
	.section	.text._ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.type	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE, @function
_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE:
.LFB9264:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9264:
	.size	_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE, .-_ZSt12__get_helperILm0EPNSt10filesystem7__cxx114path5_List5_ImplEJNS3_13_Impl_deleterEEERT0_RSt11_Tuple_implIXT_EJS7_DpT1_EE
	.section	.text._ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,"axG",@progbits,_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_,comdat
	.weak	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.type	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, @function
_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_:
.LFB9265:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9265:
	.size	_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_, .-_ZSt3getILm1EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERSB_
	.section	.text._ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,"axG",@progbits,_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,comdat
	.weak	_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.type	_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, @function
_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_:
.LFB9291:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9291:
	.size	_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, .-_ZSt3getILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.section	.text._ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB9293:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9293:
	.size	_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_,"axG",@progbits,_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_,comdat
	.weak	_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	.type	_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_, @function
_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_:
.LFB9292:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRPN6spdlog6loggerEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movq	(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L376
	call	__stack_chk_fail@PLT
.L376:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9292:
	.size	_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_, .-_ZSt4swapIPN6spdlog6loggerEENSt9enable_ifIXsrSt6__and_IJSt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SH_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev:
.LFB9296:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9296:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EEC2Ev
	.section	.text._ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB9298:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9298:
	.size	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB9299:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9299:
	.size	_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm1EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_,"axG",@progbits,_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_,comdat
	.weak	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_
	.type	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_, @function
_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_:
.LFB9300:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9300:
	.size	_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_, .-_ZSt3getILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS9_
	.section	.text._ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_,"axG",@progbits,_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC5EPS0_,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_
	.type	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_, @function
_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_:
.LFB9302:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC1IS1_S3_Lb1EEEv@PLT
	movq	-32(%rbp), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv@PLT
	movq	%rbx, (%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9302:
	.size	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_, .-_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_
	.weak	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC1EPS0_
	.set	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC1EPS0_,_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EEC2EPS0_
	.section	.text._ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB9304:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9304:
	.size	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv,"axG",@progbits,_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv,comdat
	.align 2
	.weak	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv
	.type	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv, @function
_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv:
.LFB9305:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9305:
	.size	_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv, .-_ZNSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE10_M_deleterEv
	.section	.text._ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv,"axG",@progbits,_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv,comdat
	.align 2
	.weak	_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv
	.type	_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv, @function
_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv:
.LFB9306:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9306:
	.size	_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv, .-_ZNKSt10unique_ptrI21SensorsDataSendServerSt14default_deleteIS0_EE3getEv
	.section	.text._ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_,"axG",@progbits,_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC5IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_,comdat
	.align 2
	.weak	_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_
	.type	_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_, @function
_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_:
.LFB9308:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%r12, %rdx
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_@PLT
	nop
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9308:
	.size	_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_, .-_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_
	.weak	_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC1IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_
	.set	_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC1IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_,_ZNSt5tupleIJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_S2_I21SensorsDataSendServerELb1EEEOT_OT0_
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE:
.LFB9312:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EONSt16remove_referenceIT_E4typeEOS8_@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	call	_ZnwmPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9312:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E15_M_init_functorERSt9_Any_dataOS6_St17integral_constantIbLb1EE
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data:
.LFB9313:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9313:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E14_M_get_pointerERKSt9_Any_data
	.section	.text._ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v
	.type	_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v, @function
_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v:
.LFB9314:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9314:
	.size	_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v, .-_ZNSt9_Any_data9_M_accessIPZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE:
.LFB9315:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv@PLT
	movq	%rax, %rsi
	movl	$1, %edi
	call	_ZnwmPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9315:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E8_M_cloneERSt9_Any_dataRKS8_St17integral_constantIbLb1EE
	.section	.text._ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE,"axG",@progbits,_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE,comdat
	.weak	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	.type	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE, @function
_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE:
.LFB9316:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9316:
	.size	_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE, .-_ZNSt14_Function_base13_Base_managerIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb1EE
	.section	.text._ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,"axG",@progbits,_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_,comdat
	.weak	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.type	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, @function
_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_:
.LFB9321:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9321:
	.size	_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_, .-_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_
	.section	.text._ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB9322:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9322:
	.size	_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB9323:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9323:
	.size	_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.text._ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.type	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_, @function
_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_:
.LFB9394:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9394:
	.size	_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_, .-_ZNSt11_Tuple_implILm0EJPNSt10filesystem7__cxx114path5_List5_ImplENS3_13_Impl_deleterEEE7_M_headERS7_
	.section	.text._ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB9395:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9395:
	.size	_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterEJEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB9410:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9410:
	.size	_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EP16FrameWorkEnvInfoJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_:
.LFB9417:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9417:
	.size	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERS5_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB9418:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9418:
	.size	_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEEJEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB9419:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9419:
	.size	_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm0EPN21SensorsDataSendServer4ImplEJSt14default_deleteIS1_EEERKT0_RKSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv,"axG",@progbits,_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC5IS1_S3_Lb1EEEv,comdat
	.align 2
	.weak	_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv
	.type	_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv, @function
_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv:
.LFB9421:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9421:
	.size	_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv, .-_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv
	.weak	_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC1IS1_S3_Lb1EEEv
	.set	_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC1IS1_S3_Lb1EEEv,_ZNSt5tupleIJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2IS1_S3_Lb1EEEv
	.section	.text._ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB9423:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9423:
	.size	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,"axG",@progbits,_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_,comdat
	.weak	_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.type	_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, @function
_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_:
.LFB9424:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9424:
	.size	_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_, .-_ZSt3getILm1EJP21SensorsDataSendServerSt14default_deleteIS0_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS8_
	.section	.text._ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv,"axG",@progbits,_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv,comdat
	.align 2
	.weak	_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv
	.type	_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv, @function
_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv:
.LFB9425:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_@PLT
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9425:
	.size	_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv, .-_ZNKSt15__uniq_ptr_implI21SensorsDataSendServerSt14default_deleteIS0_EE6_M_ptrEv
	.section	.text._ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB9426:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9426:
	.size	_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC5IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_
	.type	_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_, @function
_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_:
.LFB9428:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_@PLT
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_@PLT
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9428:
	.size	_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_, .-_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_
	.weak	_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC1IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_
	.set	_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC1IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_,_ZNSt11_Tuple_implILm0EJP19InspectionSubServerSt14default_deleteIS0_EEEC2IRS1_JS2_I21SensorsDataSendServerEEvEEOT_DpOT0_
	.section	.text._ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v,"axG",@progbits,_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v,comdat
	.align 2
	.weak	_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v
	.type	_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v, @function
_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v:
.LFB9432:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt9_Any_data9_M_accessEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9432:
	.size	_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v, .-_ZNKSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERKT_v
	.section	.text._ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_,"axG",@progbits,_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_,comdat
	.weak	_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_
	.type	_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_, @function
_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_:
.LFB9433:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9433:
	.size	_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_, .-_ZSt11__addressofIKZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EPT_RS7_
	.section	.text._ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v,"axG",@progbits,_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v,comdat
	.align 2
	.weak	_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v
	.type	_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v, @function
_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v:
.LFB9434:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt9_Any_data9_M_accessEv@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9434:
	.size	_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v, .-_ZNSt9_Any_data9_M_accessIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_EERT_v
	.section	.text._ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,"axG",@progbits,_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_,comdat
	.weak	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.type	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_, @function
_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_:
.LFB9534:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9534:
	.size	_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_, .-_ZNSt10_Head_baseILm0EPNSt10filesystem7__cxx114path5_List5_ImplELb0EE7_M_headERS6_
	.section	.text._ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_:
.LFB9535:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9535:
	.size	_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm1EJNSt10filesystem7__cxx114path5_List13_Impl_deleterEEE7_M_headERS5_
	.section	.text._ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_
	.type	_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_, @function
_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_:
.LFB9557:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9557:
	.size	_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_, .-_ZNSt11_Tuple_implILm0EJP16FrameWorkEnvInfoSt14default_deleteIS0_EEE7_M_headERKS4_
	.section	.text._ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_:
.LFB9561:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9561:
	.size	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_:
.LFB9562:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9562:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteIN21SensorsDataSendServer4ImplEEEE7_M_headERS4_
	.section	.text._ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_
	.type	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_, @function
_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_:
.LFB9563:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9563:
	.size	_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_, .-_ZNSt11_Tuple_implILm0EJPN21SensorsDataSendServer4ImplESt14default_deleteIS1_EEE7_M_headERKS5_
	.section	.text._ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev
	.type	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev, @function
_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev:
.LFB9565:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9565:
	.size	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev, .-_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev
	.weak	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC1Ev
	.set	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC1Ev,_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEEC2Ev
	.section	.text._ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_:
.LFB9567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9567:
	.size	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERS4_
	.section	.text._ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.type	_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, @function
_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE:
.LFB9568:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9568:
	.size	_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, .-_ZSt12__get_helperILm1ESt14default_deleteI21SensorsDataSendServerEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.section	.text._ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,"axG",@progbits,_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_,comdat
	.weak	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.type	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, @function
_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_:
.LFB9569:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9569:
	.size	_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_, .-_ZSt3getILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS8_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC5IS0_I21SensorsDataSendServerEEEOT_,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_:
.LFB9571:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9571:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC1IS0_I21SensorsDataSendServerEEEOT_
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC1IS0_I21SensorsDataSendServerEEEOT_,_ZNSt11_Tuple_implILm1EJSt14default_deleteI19InspectionSubServerEEEC2IS0_I21SensorsDataSendServerEEEOT_
	.section	.text._ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_,"axG",@progbits,_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC5IRS1_EEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_
	.type	_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_, @function
_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_:
.LFB9574:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRP19InspectionSubServerEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9574:
	.size	_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_, .-_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_
	.weak	_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC1IRS1_EEOT_
	.set	_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC1IRS1_EEOT_,_ZNSt10_Head_baseILm0EP19InspectionSubServerLb0EEC2IRS1_EEOT_
	.section	.text._ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,"axG",@progbits,_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_,comdat
	.weak	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.type	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_, @function
_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_:
.LFB9677:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9677:
	.size	_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_, .-_ZNSt10_Head_baseILm1ENSt10filesystem7__cxx114path5_List13_Impl_deleterELb1EE7_M_headERS5_
	.section	.text._ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_:
.LFB9683:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9683:
	.size	_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm0EP16FrameWorkEnvInfoLb0EE7_M_headERKS2_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_:
.LFB9685:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9685:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_, .-_ZNSt10_Head_baseILm1ESt14default_deleteIN21SensorsDataSendServer4ImplEELb1EE7_M_headERS4_
	.section	.text._ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_,"axG",@progbits,_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_,comdat
	.weak	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_
	.type	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_, @function
_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_:
.LFB9686:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9686:
	.size	_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_, .-_ZNSt10_Head_baseILm0EPN21SensorsDataSendServer4ImplELb0EE7_M_headERKS3_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev:
.LFB9688:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9688:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC1Ev
	.set	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC1Ev,_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev
	.type	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev, @function
_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev:
.LFB9691:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9691:
	.size	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev, .-_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev
	.weak	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC1Ev
	.set	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC1Ev,_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EEC2Ev
	.section	.text._ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_,"axG",@progbits,_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_,comdat
	.weak	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_
	.type	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_, @function
_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_:
.LFB9693:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9693:
	.size	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_, .-_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERS2_
	.section	.text._ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_
	.type	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_, @function
_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_:
.LFB9694:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9694:
	.size	_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_, .-_ZNSt11_Tuple_implILm1EJSt14default_deleteI21SensorsDataSendServerEEE7_M_headERS3_
	.section	.text._ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB9695:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9695:
	.size	_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm0EP21SensorsDataSendServerJSt14default_deleteIS0_EEERKT0_RKSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC5IS0_I21SensorsDataSendServerEEEOT_,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_:
.LFB9697:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardISt14default_deleteI21SensorsDataSendServerEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9697:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_, .-_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC1IS0_I21SensorsDataSendServerEEEOT_
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC1IS0_I21SensorsDataSendServerEEEOT_,_ZNSt10_Head_baseILm1ESt14default_deleteI19InspectionSubServerELb1EEC2IS0_I21SensorsDataSendServerEEEOT_
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC5Ev,comdat
	.align 2
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev, @function
_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev:
.LFB9796:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9796:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev, .-_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC1Ev
	.set	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC1Ev,_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EEC2Ev
	.section	.text._ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_:
.LFB9798:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9798:
	.size	_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_, .-_ZNSt10_Head_baseILm1ESt14default_deleteI21SensorsDataSendServerELb1EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_
	.type	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_, @function
_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_:
.LFB9799:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9799:
	.size	_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_, .-_ZNSt11_Tuple_implILm0EJP21SensorsDataSendServerSt14default_deleteIS0_EEE7_M_headERKS4_
	.section	.text._ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E,"axG",@progbits,_ZNSt14default_deleteI19InspectionSubServerEC5I21SensorsDataSendServervEERKS_IT_E,comdat
	.align 2
	.weak	_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E
	.type	_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E, @function
_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E:
.LFB9801:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9801:
	.size	_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E, .-_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E
	.weak	_ZNSt14default_deleteI19InspectionSubServerEC1I21SensorsDataSendServervEERKS_IT_E
	.set	_ZNSt14default_deleteI19InspectionSubServerEC1I21SensorsDataSendServervEERKS_IT_E,_ZNSt14default_deleteI19InspectionSubServerEC2I21SensorsDataSendServervEERKS_IT_E
	.section	.text._ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_:
.LFB9879:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9879:
	.size	_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm0EP21SensorsDataSendServerLb0EE7_M_headERKS2_
	.weak	_ZTV21SensorsDataSendServer
	.section	.data.rel.ro._ZTV21SensorsDataSendServer,"awG",@progbits,_ZTV21SensorsDataSendServer,comdat
	.align 8
	.type	_ZTV21SensorsDataSendServer, @object
	.size	_ZTV21SensorsDataSendServer, 48
_ZTV21SensorsDataSendServer:
	.quad	0
	.quad	_ZTI21SensorsDataSendServer
	.quad	_ZN21SensorsDataSendServer4initEP21InskyInspectionServer
	.quad	_ZN21SensorsDataSendServer6deinitEv
	.quad	_ZN21SensorsDataSendServer6enableEv
	.quad	_ZN21SensorsDataSendServer7disableEv
	.weak	_ZTV19InspectionSubServer
	.section	.data.rel.ro._ZTV19InspectionSubServer,"awG",@progbits,_ZTV19InspectionSubServer,comdat
	.align 8
	.type	_ZTV19InspectionSubServer, @object
	.size	_ZTV19InspectionSubServer, 48
_ZTV19InspectionSubServer:
	.quad	0
	.quad	_ZTI19InspectionSubServer
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.weak	_ZTVN5boost6system14error_categoryE
	.section	.data.rel.ro._ZTVN5boost6system14error_categoryE,"awG",@progbits,_ZTVN5boost6system14error_categoryE,comdat
	.align 8
	.type	_ZTVN5boost6system14error_categoryE, @object
	.size	_ZTVN5boost6system14error_categoryE, 72
_ZTVN5boost6system14error_categoryE:
	.quad	0
	.quad	_ZTIN5boost6system14error_categoryE
	.quad	__cxa_pure_virtual
	.quad	_ZNK5boost6system14error_category23default_error_conditionEi
	.quad	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE
	.quad	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi
	.quad	__cxa_pure_virtual
	.quad	_ZNK5boost6system14error_category7messageEiPcm
	.quad	_ZNK5boost6system14error_category6failedEi
	.weak	_ZTVN5boost6system6detail22interop_error_categoryE
	.section	.data.rel.ro._ZTVN5boost6system6detail22interop_error_categoryE,"awG",@progbits,_ZTVN5boost6system6detail22interop_error_categoryE,comdat
	.align 8
	.type	_ZTVN5boost6system6detail22interop_error_categoryE, @object
	.size	_ZTVN5boost6system6detail22interop_error_categoryE, 72
_ZTVN5boost6system6detail22interop_error_categoryE:
	.quad	0
	.quad	_ZTIN5boost6system6detail22interop_error_categoryE
	.quad	_ZNK5boost6system6detail22interop_error_category4nameEv
	.quad	_ZNK5boost6system14error_category23default_error_conditionEi
	.quad	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE
	.quad	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi
	.quad	_ZNK5boost6system6detail22interop_error_category7messageB5cxx11Ei
	.quad	_ZNK5boost6system6detail22interop_error_category7messageEiPcm
	.quad	_ZNK5boost6system14error_category6failedEi
	.weak	_ZTVN5boost6system6detail21system_error_categoryE
	.section	.data.rel.ro._ZTVN5boost6system6detail21system_error_categoryE,"awG",@progbits,_ZTVN5boost6system6detail21system_error_categoryE,comdat
	.align 8
	.type	_ZTVN5boost6system6detail21system_error_categoryE, @object
	.size	_ZTVN5boost6system6detail21system_error_categoryE, 72
_ZTVN5boost6system6detail21system_error_categoryE:
	.quad	0
	.quad	_ZTIN5boost6system6detail21system_error_categoryE
	.quad	_ZNK5boost6system6detail21system_error_category4nameEv
	.quad	_ZNK5boost6system6detail21system_error_category23default_error_conditionEi
	.quad	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE
	.quad	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi
	.quad	_ZNK5boost6system6detail21system_error_category7messageB5cxx11Ei
	.quad	_ZNK5boost6system6detail21system_error_category7messageEiPcm
	.quad	_ZNK5boost6system14error_category6failedEi
	.weak	_ZTVN5boost6system6detail22generic_error_categoryE
	.section	.data.rel.ro._ZTVN5boost6system6detail22generic_error_categoryE,"awG",@progbits,_ZTVN5boost6system6detail22generic_error_categoryE,comdat
	.align 8
	.type	_ZTVN5boost6system6detail22generic_error_categoryE, @object
	.size	_ZTVN5boost6system6detail22generic_error_categoryE, 72
_ZTVN5boost6system6detail22generic_error_categoryE:
	.quad	0
	.quad	_ZTIN5boost6system6detail22generic_error_categoryE
	.quad	_ZNK5boost6system6detail22generic_error_category4nameEv
	.quad	_ZNK5boost6system14error_category23default_error_conditionEi
	.quad	_ZNK5boost6system14error_category10equivalentEiRKNS0_15error_conditionE
	.quad	_ZNK5boost6system14error_category10equivalentERKNS0_10error_codeEi
	.quad	_ZNK5boost6system6detail22generic_error_category7messageB5cxx11Ei
	.quad	_ZNK5boost6system6detail22generic_error_category7messageEiPcm
	.quad	_ZNK5boost6system14error_category6failedEi
	.weak	_ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_
	.section	.data.rel.ro._ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_,"awG",@progbits,_ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_,comdat
	.align 8
	.type	_ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_, @object
	.size	_ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_, 16
_ZTIZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_
	.weak	_ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_
	.section	.rodata._ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_,"aG",@progbits,_ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_,comdat
	.align 32
	.type	_ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_, @object
	.size	_ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_, 63
_ZTSZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_:
	.string	"ZN21SubServerRegistHelperI21SensorsDataSendServerEC4EPKcEUlvE_"
	.weak	_ZTI21SensorsDataSendServer
	.section	.data.rel.ro._ZTI21SensorsDataSendServer,"awG",@progbits,_ZTI21SensorsDataSendServer,comdat
	.align 8
	.type	_ZTI21SensorsDataSendServer, @object
	.size	_ZTI21SensorsDataSendServer, 24
_ZTI21SensorsDataSendServer:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS21SensorsDataSendServer
	.quad	_ZTI19InspectionSubServer
	.weak	_ZTS21SensorsDataSendServer
	.section	.rodata._ZTS21SensorsDataSendServer,"aG",@progbits,_ZTS21SensorsDataSendServer,comdat
	.align 16
	.type	_ZTS21SensorsDataSendServer, @object
	.size	_ZTS21SensorsDataSendServer, 24
_ZTS21SensorsDataSendServer:
	.string	"21SensorsDataSendServer"
	.weak	_ZTI19InspectionSubServer
	.section	.data.rel.ro._ZTI19InspectionSubServer,"awG",@progbits,_ZTI19InspectionSubServer,comdat
	.align 8
	.type	_ZTI19InspectionSubServer, @object
	.size	_ZTI19InspectionSubServer, 16
_ZTI19InspectionSubServer:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS19InspectionSubServer
	.weak	_ZTS19InspectionSubServer
	.section	.rodata._ZTS19InspectionSubServer,"aG",@progbits,_ZTS19InspectionSubServer,comdat
	.align 16
	.type	_ZTS19InspectionSubServer, @object
	.size	_ZTS19InspectionSubServer, 22
_ZTS19InspectionSubServer:
	.string	"19InspectionSubServer"
	.weak	_ZTIN5boost6system6detail22interop_error_categoryE
	.section	.data.rel.ro._ZTIN5boost6system6detail22interop_error_categoryE,"awG",@progbits,_ZTIN5boost6system6detail22interop_error_categoryE,comdat
	.align 8
	.type	_ZTIN5boost6system6detail22interop_error_categoryE, @object
	.size	_ZTIN5boost6system6detail22interop_error_categoryE, 24
_ZTIN5boost6system6detail22interop_error_categoryE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN5boost6system6detail22interop_error_categoryE
	.quad	_ZTIN5boost6system14error_categoryE
	.weak	_ZTSN5boost6system6detail22interop_error_categoryE
	.section	.rodata._ZTSN5boost6system6detail22interop_error_categoryE,"aG",@progbits,_ZTSN5boost6system6detail22interop_error_categoryE,comdat
	.align 32
	.type	_ZTSN5boost6system6detail22interop_error_categoryE, @object
	.size	_ZTSN5boost6system6detail22interop_error_categoryE, 47
_ZTSN5boost6system6detail22interop_error_categoryE:
	.string	"N5boost6system6detail22interop_error_categoryE"
	.weak	_ZTIN5boost6system6detail21system_error_categoryE
	.section	.data.rel.ro._ZTIN5boost6system6detail21system_error_categoryE,"awG",@progbits,_ZTIN5boost6system6detail21system_error_categoryE,comdat
	.align 8
	.type	_ZTIN5boost6system6detail21system_error_categoryE, @object
	.size	_ZTIN5boost6system6detail21system_error_categoryE, 24
_ZTIN5boost6system6detail21system_error_categoryE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN5boost6system6detail21system_error_categoryE
	.quad	_ZTIN5boost6system14error_categoryE
	.weak	_ZTSN5boost6system6detail21system_error_categoryE
	.section	.rodata._ZTSN5boost6system6detail21system_error_categoryE,"aG",@progbits,_ZTSN5boost6system6detail21system_error_categoryE,comdat
	.align 32
	.type	_ZTSN5boost6system6detail21system_error_categoryE, @object
	.size	_ZTSN5boost6system6detail21system_error_categoryE, 46
_ZTSN5boost6system6detail21system_error_categoryE:
	.string	"N5boost6system6detail21system_error_categoryE"
	.weak	_ZTIN5boost6system6detail22generic_error_categoryE
	.section	.data.rel.ro._ZTIN5boost6system6detail22generic_error_categoryE,"awG",@progbits,_ZTIN5boost6system6detail22generic_error_categoryE,comdat
	.align 8
	.type	_ZTIN5boost6system6detail22generic_error_categoryE, @object
	.size	_ZTIN5boost6system6detail22generic_error_categoryE, 24
_ZTIN5boost6system6detail22generic_error_categoryE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN5boost6system6detail22generic_error_categoryE
	.quad	_ZTIN5boost6system14error_categoryE
	.weak	_ZTSN5boost6system6detail22generic_error_categoryE
	.section	.rodata._ZTSN5boost6system6detail22generic_error_categoryE,"aG",@progbits,_ZTSN5boost6system6detail22generic_error_categoryE,comdat
	.align 32
	.type	_ZTSN5boost6system6detail22generic_error_categoryE, @object
	.size	_ZTSN5boost6system6detail22generic_error_categoryE, 47
_ZTSN5boost6system6detail22generic_error_categoryE:
	.string	"N5boost6system6detail22generic_error_categoryE"
	.weak	_ZTIN5boost6system14error_categoryE
	.section	.data.rel.ro._ZTIN5boost6system14error_categoryE,"awG",@progbits,_ZTIN5boost6system14error_categoryE,comdat
	.align 8
	.type	_ZTIN5boost6system14error_categoryE, @object
	.size	_ZTIN5boost6system14error_categoryE, 16
_ZTIN5boost6system14error_categoryE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN5boost6system14error_categoryE
	.weak	_ZTSN5boost6system14error_categoryE
	.section	.rodata._ZTSN5boost6system14error_categoryE,"aG",@progbits,_ZTSN5boost6system14error_categoryE,comdat
	.align 32
	.type	_ZTSN5boost6system14error_categoryE, @object
	.size	_ZTSN5boost6system14error_categoryE, 32
_ZTSN5boost6system14error_categoryE:
	.string	"N5boost6system14error_categoryE"
	.section	.rodata
.LC12:
	.string	"SensorsDataSendServer"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB10502:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L481
	cmpl	$65535, -8(%rbp)
	jne	.L481
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	leaq	.LC12(%rip), %rsi
	movq	SensorsDataSendServer_regist_helper@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	_ZN21SubServerRegistHelperI21SensorsDataSendServerEC1EPKc@PLT
.L481:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10502:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_SensorsDataSendServer.cpp, @function
_GLOBAL__sub_I_SensorsDataSendServer.cpp:
.LFB10533:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10533:
	.size	_GLOBAL__sub_I_SensorsDataSendServer.cpp, .-_GLOBAL__sub_I_SensorsDataSendServer.cpp
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_SensorsDataSendServer.cpp
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
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
