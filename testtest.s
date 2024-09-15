	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.global	mergeSort
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	mergeSort, %function
mergeSort:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mergeSort, .-mergeSort
	.section	.rodata
	.align	2
.LC0:
	.ascii	"b is greater than 10\000"
	.align	2
.LC1:
	.ascii	"\350\257\267\350\276\223\345\205\245\346\226\220\346"
	.ascii	"\263\242\351\202\243\345\245\221\346\225\260\345\210"
	.ascii	"\227\347\232\204\351\241\271\346\225\260 n: \000"
	.align	2
.LC2:
	.ascii	"%d\000"
	.align	2
.LC3:
	.ascii	"\350\257\267\350\276\223\345\205\245\350\256\241\347"
	.ascii	"\256\227\346\254\241\346\225\260 count: \000"
	.align	2
.LC4:
	.ascii	"\350\256\241\347\256\227 %d \351\241\271\346\226\220"
	.ascii	"\346\263\242\351\202\243\345\245\221\346\225\260\345"
	.ascii	"\210\227\357\274\214\351\207\215\345\244\215 %d \346"
	.ascii	"\254\241\347\232\204\346\200\273\350\200\227\346\227"
	.ascii	"\266\344\270\272: %f \346\257\253\347\247\222\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	ldr	r2, .L11+16
.LPIC6:
	add	r2, pc
	ldr	r3, .L11+20
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	mov	r3,#0
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #1
	str	r3, [r7, #12]
	movs	r3, #42
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r3, #10
	ble	.L4
	ldr	r3, .L11+24
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
.L4:
	ldr	r3, .L11+28
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L11+32
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L11+36
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L11+40
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L5
.L8:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L6
.L7:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L6:
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	blt	.L8
	bl	clock(PLT)
	str	r0, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L11
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #40]
	vldr.64	d7, [r7, #40]
	vldr.64	d6, .L11+8
	vmul.f64	d7, d7, d6
	vstr.64	d7, [r7, #40]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldrd	r2, [r7, #40]
	strd	r2, [sp]
	mov	r2, r0
	ldr	r3, .L11+44
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	ldr	r1, .L11+48
.LPIC7:
	add	r1, pc
	ldr	r2, .L11+20
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #52]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L10
	bl	__stack_chk_fail(PLT)
.L10:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	3
.L11:
	.word	0
	.word	1093567616
	.word	0
	.word	1083129856
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
