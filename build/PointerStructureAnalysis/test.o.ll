; ModuleID = 'test.o'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

; Function Attrs: nounwind ssp uwtable
define void @test2(i32* %b) #0 {
  %1 = alloca i32*, align 8
  store i32* %b, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  store i32 3, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind ssp uwtable
define void @test(i32* %a) #0 {
  %1 = alloca i32*, align 8
  store i32* %a, i32** %1, align 8
  %2 = load i32*, i32** %1, align 8
  store i32 2, i32* %2, align 4
  %3 = load i32*, i32** %1, align 8
  call void @test2(i32* %3)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  store i32 0, i32* %a, align 4
  store i32 1, i32* %b, align 4
  call void @test(i32* %a)
  %4 = load i32, i32* %a, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load i32, i32* %b, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %b, align 4
  br label %12

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* %a, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %a, align 4
  br label %12

; <label>:12                                      ; preds = %9, %6
  ret i32 0
}

attributes #0 = { nounwind ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.2 (clang-700.1.81)"}
