@size    = constant  i32   7        ,align 4
@max     = global i32   0           ,align 4
@min     = global i32   1000        ,align 4
@sum     = global i32   0           ,align 4
@numbers = global [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4

define float @calculateAverage(i32* %numbers, i32 %size) {
entry:
  %0 = alloca    i32      , align 4
  %1 = load i32, i32* @max, align 4
  %2 = load i32, i32* @min, align 4
  %3 = load i32, i32* @sum, align 4
  %4 = alloca    i32      , align 4
  %i = alloca    i32      , align 4
  store i32 0, i32* %i  
  br label %loop

loop:
  %max_val = load i32, i32* @max, align 4
  %min_val = load i32, i32* @min, align 4

  %value = load i32, i32* @sum, align 4
  %5         = load i32, i32* %i         , align 4  ; index
  %array_idx = getelementptr inbounds [7 x i32], [7 x i32]* @numbers, i32 0, i32 %5
  %6         = load i32, i32* %array_idx , align 4
  %7         = icmp sgt i32 %6, %max_val
  br i1 %7,  label %max_true, label %max_false

max_true:
  store i32 %6, i32* @max, align 4
  br label %max_false

max_false:
  %8 = icmp slt i32 %6, %min_val
  br i1 %8, label %min_true, label %min_false

min_true:
  store i32 %6, i32* @min, align 4
  br label %min_false

min_false:
  %9 = add i32 %value, %6
  store i32 %9, i32* @sum, align 4

  br label %check_loop

check_loop:
  %10 = load i32, i32* %i, align 4  ; 重新加载 i 的当前值
  %next_i = add i32 %10, 1  ; 计算下一个 i 的值
  store i32 %next_i, i32* %i  ; 存储下一个 i 的值
  %11 = icmp slt i32 %next_i, %size


  br i1 %11, label %loop, label %after_loop

after_loop:
  %12 = load i32, i32* @sum, align 4
  %13 = load i32, i32* @max, align 4
  %14 = load i32, i32* @min, align 4


  
  %15 = add i32 %13, %14
  %16 = sub i32 %12, %15              ;remove max and min ,remaining sum
  %17 = sub i32 %size, 2              ;this is size-2
  %18 = sitofp i32 %16 to float
  %19 = sitofp i32 %17 to float
  %20 = fdiv float %18, %19
  ret float %20
}

define i32   @main(){
entry:
   %0         =alloca i32     ,align 4
   %average   =alloca float   ,align 4
   %i         =alloca i32     ,align 4
   store      i32   0,i32* %i ,align 4
   br label   %start_loop
start_loop:
   %1         =load i32,i32* %i,align 4  
   %size_val  = load i32, i32* @size, align 4
   %2         = icmp slt i32 %1, %size_val
   br  i1  %2, label %body_loop,label %exit_loop
body_loop:
   %3         = load  i32, i32* %i                   , align 4
   %array_idx = getelementptr inbounds [7 x i32], [7 x i32]* @numbers, i32 0, i32 %3
   %4         = call  i32 @getint()
   store      i32     %4,      i32* %array_idx       , align 4
   %5         = load  i32, i32* %i                   , align 4
   %next_i    = add   i32 %5, 1
   store      i32     %next_i, i32* %i               , align 4


 


   br         label   %start_loop
exit_loop:

   %array_ptr = getelementptr [7 x i32], [7 x i32]* @numbers, i32 0, i32 0
   %6         =call   float @calculateAverage(i32* %array_ptr, i32 7)
   %7         =fptosi float %6 to i32
   call void @putint(i32 %7)
   ret i32 0
}



declare i32  @getint()
declare void @putint(i32)
declare void @putfloat(float)