; ModuleID = 'main.ll'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"b is greater than 10\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mergeSort() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 42, i32* %10, align 4
  br i1 false, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %0
  %16 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  %17 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %18 = call i64 @clock() #3
  store i64 %18, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %.pre = load i32, i32* %3, align 4
  br label %19

19:                                               ; preds = %33, %15
  %20 = phi i32 [ %26, %33 ], [ 1, %15 ]
  %21 = phi i32 [ %27, %33 ], [ 0, %15 ]
  %22 = phi i32 [ %34, %33 ], [ 0, %15 ]
  %23 = icmp slt i32 %22, %.pre
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  %.pre1 = load i32, i32* %2, align 4
  br label %25

25:                                               ; preds = %30, %24
  %26 = phi i32 [ %31, %30 ], [ %20, %24 ]
  %27 = phi i32 [ %26, %30 ], [ %21, %24 ]
  %28 = phi i32 [ %32, %30 ], [ 0, %24 ]
  %29 = icmp slt i32 %28, %.pre1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = add nsw i32 %27, %26
  store i32 %31, i32* %6, align 4
  store i32 %26, i32* %4, align 4
  store i32 %31, i32* %5, align 4
  %32 = add nsw i32 %28, 1
  store i32 %32, i32* %12, align 4
  br label %25

33:                                               ; preds = %25
  %34 = add nsw i32 %22, 1
  store i32 %34, i32* %11, align 4
  br label %19

35:                                               ; preds = %19
  %36 = call i64 @clock() #3
  store i64 %36, i64* %8, align 8
  %37 = sub nsw i64 %36, %18
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  store double %39, double* %9, align 8
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
