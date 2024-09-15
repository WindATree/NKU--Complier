	.file	"main.c"
	.text
	.globl	mergeSort
	.type	mergeSort, @function
mergeSort:
.LFB23:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	mergeSort, .-mergeSort
	.section	.rodata
.LC0:
	.string	"b is greater than 10\n"
	.align 8
.LC1:
	.string	"\350\257\267\350\276\223\345\205\245\346\226\220\346\263\242\351\202\243\345\245\221\346\225\260\345\210\227\347\232\204\351\241\271\346\225\260 n: "
.LC2:
	.string	"%d"
.LC3:
	.string	"\350\257\267\350\276\223\345\205\245\350\256\241\347\256\227\346\254\241\346\225\260 count: "
	.align 8
.LC5:
	.string	"\350\256\241\347\256\227 %d \351\241\271\346\226\220\346\263\242\351\202\243\345\245\221\346\225\260\345\210\227\357\274\214\351\207\215\345\244\215 %d \346\254\241\347\232\204\346\200\273\350\200\227\346\227\266\344\270\272: %f \347\247\222\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -88(%rbp)
	movl	$1, -84(%rbp)
	movl	$42, -72(%rbp)
	cmpl	$10, -84(%rbp)
	jle	.L4
	leaq	.LC0(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
.L4:
	leaq	.LC1(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC3(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$0, %eax
	call	__printf_chk@PLT
	leaq	-92(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	call	clock@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -80(%rbp)
	jmp	.L8
.L11:
	movl	$0, -76(%rbp)
	jmp	.L9
.L10:
	movl	-88(%rbp), %edx
	movl	-84(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-84(%rbp), %eax
	movl	%eax, -88(%rbp)
	movl	-68(%rbp), %eax
	movl	%eax, -84(%rbp)
	addl	$1, -76(%rbp)
.L9:
	movl	-96(%rbp), %eax
	cmpl	%eax, -76(%rbp)
	jl	.L10
	addl	$1, -80(%rbp)
.L8:
	movl	-92(%rbp), %eax
	cmpl	%eax, -80(%rbp)
	jl	.L11
	call	clock@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	-64(%rbp), %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-92(%rbp), %ecx
	movl	-96(%rbp), %edx
	leaq	.LC5(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rsi, %xmm0
	movq	%rax, %rsi
	movl	$1, %edi
	movl	$1, %eax
	call	__printf_chk@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L14
	call	__stack_chk_fail@PLT
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
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
