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
	.ascii	"b is greater than 10\012\000"
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
	.ascii	"\266\344\270\272: %f \347\247\222\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	ldr	r2, .L15+8
.LPIC6:
	add	r2, pc
	ldr	r3, .L15+12
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #68]
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
	ldr	r3, .L15+16
.LPIC0:
	add	r3, pc
	str	r3, [r7, #40]
	ldr	r1, [r7, #40]
	movs	r0, #1
	bl	__printf_chk(PLT)
.L4:
	ldr	r3, .L15+20
.LPIC1:
	add	r3, pc
	str	r3, [r7, #48]
	ldr	r1, [r7, #48]
	movs	r0, #1
	bl	__printf_chk(PLT)
	mov	r3, r7
	mov	r1, r3
	ldr	r3, .L15+24
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	ldr	r3, .L15+28
.LPIC3:
	add	r3, pc
	str	r3, [r7, #44]
	ldr	r1, [r7, #44]
	movs	r0, #1
	bl	__printf_chk(PLT)
	adds	r3, r7, #4
	mov	r1, r3
	ldr	r3, .L15+32
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	__isoc99_scanf(PLT)
	bl	clock(PLT)
	str	r0, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L8
.L11:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L9
.L10:
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
.L9:
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L10
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L8:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	blt	.L11
	bl	clock(PLT)
	str	r0, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L15
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #56]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r3, .L15+36
.LPIC5:
	add	r3, pc
	str	r3, [r7, #52]
	ldrd	r2, [r7, #56]
	strd	r2, [sp]
	mov	r3, r0
	mov	r2, r1
	ldr	r1, [r7, #52]
	movs	r0, #1
	bl	__printf_chk(PLT)
	movs	r3, #0
	ldr	r1, .L15+40
.LPIC7:
	add	r1, pc
	ldr	r2, .L15+12
	ldr	r2, [r1, r2]
	ldr	r1, [r2]
	ldr	r2, [r7, #68]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L14
	bl	__stack_chk_fail(PLT)
.L14:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	3
.L15:
	.word	0
	.word	1093567616
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
