	.text
	.file	"main.c"
	.globl	mergeSort               # -- Begin function mergeSort
	.p2align	4, 0x90
	.type	mergeSort,@function
mergeSort:                              # @mergeSort
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$0, -4(%rbp)
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	mergeSort, .Lfunc_end0-mergeSort
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -44(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -12(%rbp)
	movl	$42, -36(%rbp)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_2
# %bb.1:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
.LBB1_2:
	leaq	-24(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	leaq	-20(%rbp), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	__isoc99_scanf
	callq	clock
	movq	%rax, -32(%rbp)
	movl	$0, -8(%rbp)
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	addl	$1, -8(%rbp)
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB1_8
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$0, -4(%rbp)
	.p2align	4, 0x90
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=2
	movl	-12(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movl	%eax, -16(%rbp)
	movl	%ecx, -12(%rbp)
	addl	$1, -4(%rbp)
	jmp	.LBB1_5
.LBB1_8:
	callq	clock
	movq	%rax, -64(%rbp)
	subq	-32(%rbp), %rax
	cvtsi2sd	%rax, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"b is greater than 10\n"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d"
	.size	.L.str.1, 3

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
