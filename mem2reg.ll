; ModuleID = 'main.ll'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"b is greater than 10\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mergeSort() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = icmp sgt i32 1, 10
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %1)
  %8 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %2)
  %9 = call i64 @clock() #3
  br label %10

10:                                               ; preds = %22, %6
  %.04 = phi i32 [ 0, %6 ], [ %23, %22 ]
  %.02 = phi i32 [ 1, %6 ], [ %.13, %22 ]
  %.01 = phi i32 [ 0, %6 ], [ %.1, %22 ]
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %.04, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %19, %13
  %.13 = phi i32 [ %.02, %13 ], [ %18, %19 ]
  %.1 = phi i32 [ %.01, %13 ], [ %.13, %19 ]
  %.0 = phi i32 [ 0, %13 ], [ %20, %19 ]
  %15 = load i32, i32* %1, align 4
  %16 = icmp slt i32 %.0, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = add nsw i32 %.1, %.13
  br label %19

19:                                               ; preds = %17
  %20 = add nsw i32 %.0, 1
  br label %14

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21
  %23 = add nsw i32 %.04, 1
  br label %10

24:                                               ; preds = %10
  %25 = call i64 @clock() #3
  %26 = sub nsw i64 %25, %9
  %27 = sitofp i64 %26 to double
  %28 = fdiv double %27, 1.000000e+06
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
