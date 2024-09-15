.arch    armv7-a

@this is global variable with no initialization
.comm    sum,4
.comm    length,4
.comm    array,40,4  @ allocate an array with 40 bytes

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
    push   {fp,lr}
    push   {r4-r5}
    add    fp, sp, #4
    mov    r8,#0          @initialize index zero
    mov    r9,#0          @r9=array
    ldr    r9,_bridge+20
sum_loop:
    cmp     r8, #10
    bge     end_sum_loop
    lsl     r8,r8,#2
    add     r9,r9,r8
    ldr     r9,[r9]       @ load array[r9]
    add     r0,r0,r9      @ sum += array[i]
    add     r8,r8,#1
end_sum_loop:
    mov    r1,#10
    vmov   s1,r1          @s1=10
    vmov   s0,r0          @ move sum to floating point register
    vdiv.f32 s0, s0, s1   @s0=average=sum/10
    mov    r1,r0          @r1=r0=sum
    ldr    r0,_bridge+8   @r0="The sum and averagr of array is :%d, %f\n"
    bl     printf
    pop    {r4-r5}
    pop    {fp,pc}




.global main

main:
    push    {fp,lr}
    add    fp,sp,#4
    ldr    r4,_bridge    @r4=sum
    mov    r4,#0
    ldr    r5,_bridge+4  @r5=length
    mov    r5,#10
    ldr    r0,_bridge+16 @r0="%d"

    mov    r6,#0         @initialize index zero
    ldr    r7,_bridge+20 @r7=array

loop:
    cmp    r6,r5
    bge    end_loop
    mov    r1,r6
    lsl    r1,r1,#2      @r1=r6*4
    add    r1,r7,r1
    bl     __isoc99_scanf
    add    r6,r6,#1
    b loop

end_loop:
    mov    r0,#0
    ldr    r0,_bridge+20
    bl     TackleArray
    pop    {fp,pc}


_bridge:
    .word    sum
    .word    length
    .word    _str0
    .word    _str1
    .word    _str2
    .word    array