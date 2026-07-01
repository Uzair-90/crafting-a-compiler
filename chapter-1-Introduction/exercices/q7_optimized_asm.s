	.file	"q7.c"
	.text
	.p2align 4
	.globl	proc
	.type	proc, @function
proc:
.LFB39:
	.cfi_startproc
	endbr64
	leaq	400000(%rdi), %rax
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L2:
	movdqu	(%rdi), %xmm2
	addq	$16, %rdi
	paddd	%xmm2, %xmm0
	cmpq	%rdi, %rax
	jne	.L2
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	ret
	.cfi_endproc
.LFE39:
	.size	proc, .-proc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Memory allocation failed\n"
.LC4:
	.string	"Result: %d\n"
.LC6:
	.string	"Time taken: %f seconds\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$400000, %edi
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	call	malloc@PLT
	testq	%rax, %rax
	je	.L13
	movdqa	.LC0(%rip), %xmm1
	movq	%rax, %r12
	movq	%rax, %rbx
	leaq	400000(%rax), %rbp
	movdqa	.LC2(%rip), %xmm3
	movdqa	.LC3(%rip), %xmm2
	.p2align 4,,10
	.p2align 3
.L8:
	movdqa	%xmm1, %xmm0
	addq	$16, %rax
	paddd	%xmm3, %xmm1
	paddd	%xmm2, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rbp
	jne	.L8
	call	clock@PLT
	pxor	%xmm0, %xmm0
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L9:
	movdqu	(%rbx), %xmm4
	addq	$16, %rbx
	paddd	%xmm4, %xmm0
	cmpq	%rbx, %rbp
	jne	.L9
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, (%rsp)
	call	clock@PLT
	movdqa	(%rsp), %xmm0
	movl	$2, %edi
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rbx
	xorl	%eax, %eax
	movdqa	%xmm0, %xmm1
	subq	%r13, %rbx
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %edx
	call	__printf_chk@PLT
	leaq	.LC6(%rip), %rsi
	movl	$2, %edi
	pxor	%xmm0, %xmm0
	movl	$1, %eax
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC5(%rip), %xmm0
	call	__printf_chk@PLT
	movq	%r12, %rdi
	call	free@PLT
	xorl	%eax, %eax
.L5:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L13:
	.cfi_restore_state
	movq	stderr(%rip), %rcx
	movl	$25, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %eax
	jmp	.L5
	.cfi_endproc
.LFE40:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	0
	.long	1
	.long	2
	.long	3
	.align 16
.LC2:
	.long	4
	.long	4
	.long	4
	.long	4
	.align 16
.LC3:
	.long	1
	.long	1
	.long	1
	.long	1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
