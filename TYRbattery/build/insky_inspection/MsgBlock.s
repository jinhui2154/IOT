	.file	"MsgBlock.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"highest"
.LC1:
	.string	"high"
.LC2:
	.string	"middle"
.LC3:
	.string	"low"
	.text
	.globl	_Z13priority2enumPKcR13TopicPriority
	.type	_Z13priority2enumPKcR13TopicPriority, @function
_Z13priority2enumPKcR13TopicPriority:
.LFB1334:
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
	cmpq	$0, -8(%rbp)
	jne	.L2
	movl	$0, %eax
	jmp	.L3
.L2:
	movq	-8(%rbp), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L5
.L4:
	movq	-8(%rbp), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L6
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L5
.L6:
	movq	-8(%rbp), %rax
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L5
.L7:
	movq	-8(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	movq	-16(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L5
.L8:
	movl	$0, %eax
	jmp	.L3
.L5:
	movl	$1, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1334:
	.size	_Z13priority2enumPKcR13TopicPriority, .-_Z13priority2enumPKcR13TopicPriority
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
