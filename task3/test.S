.arch    armv7-a

@this is global variable with no initialization
.comm    sum,4
.comm    length,4
.comm    array,40  @ allocate an array with 40 bytes
.align   2

.text
.align    2


@rodata save  constant
.section    .rodata
.align    2

_str0:
    .ascii    "The sum and averagr of array is :%d, %f\n"
    .align    2

_str1:
    .ascii    "please input array element \n"
    .align    2

_str2:
    .ascii    "%d"
    .align    2


.text
.align     2
.global    TackleArray

TackleArray:    @ function void TackleArray(int a[])
    str   fp,[sp,#-4]!
    mov   fp,sp
    sub   sp,sp,#12
    mov   r0,#0
    mov   r8,#0          @initialize index =0
    ldr   r9,_bridge+20
sum_loop:
    cmp   r8,#10
    bge   .end_sum_loop
    lsl   r10,r8,#2
    add   r11,r10,r9
    ldr   r12,[r11]
    add   r0,r0,r12
    add   r8,r8,#1
    b     sum_loop
.end_sum_loop:
    vmov  s1,#10
    vmov  s0,r0
    vdiv.f32 s0,s0,s1
    mov   r1,r0
    ldr   r0,_bridge+8
    bl    printf
    add   sp,fp,#0
    ldr   fp, [sp],#4          @ pop fp, sp = sp + 4
    bx    lr                   @ recover sp, pc

.global main

main:
    push    {fp,lr}
    add    fp,sp,#4

    ldr    r4,_bridge    @r4=sum
    mov    r0,#0
    str    r0,[r4]

    ldr    r5,_bridge+4  @r5=length
    mov    r0,#10
    str    r0,[r5]

    mov    r6,#0         @initialize index zero
    ldr    r7,_bridge+20 @r7=array

loop:
    cmp    r6,r5
    bge    end_loop
    ldr    r0,_bridge+16 @r0="%d"
    mov    r1,r6
    lsl    r2,r1,#2      @r1=r6*4
    add    r1,r7,r2
    bl     __isoc99_scanf
    add    r6,r6,#1
    b      loop

end_loop:
    mov    r0,#0
    ldr    r0,_bridge+20
    @bl     TackleArray
    pop    {fp,pc}


_bridge:
    .word    sum
    .word    length
    .word    _str0
    .word    _str1
    .word    _str2
    .word    array

    .section .note.GNU-stack,"",%progbits @ do you know what's the use of this :-)