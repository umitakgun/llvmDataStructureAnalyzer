; ModuleID = 'test.bc'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.11.0"

%class.LinkedList = type { i32 (...)** }
%class.Node = type <{ i32 (...)**, i32, [4 x i8] }>

@_ZTV10LinkedList = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10LinkedList to i8*), i8* bitcast (void (%class.LinkedList*)* @_ZN10LinkedListD1Ev to i8*), i8* bitcast (void (%class.LinkedList*)* @_ZN10LinkedListD0Ev to i8*)], align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS10LinkedList = linkonce_odr constant [13 x i8] c"10LinkedList\00"
@_ZTI10LinkedList = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10LinkedList, i32 0, i32 0) }
@_ZTV4Node = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Node to i8*), i8* bitcast (void (%class.Node*)* @_ZN4NodeD1Ev to i8*), i8* bitcast (void (%class.Node*)* @_ZN4NodeD0Ev to i8*)], align 8
@_ZTS4Node = linkonce_odr constant [6 x i8] c"4Node\00"
@_ZTI4Node = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Node, i32 0, i32 0) }

; Function Attrs: ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %l = alloca %class.LinkedList*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %6 = call noalias i8* @_Znwm(i64 8) #4
  %7 = bitcast i8* %6 to %class.LinkedList*
  invoke void @_ZN10LinkedListC1Ev(%class.LinkedList* %7)
          to label %8 unwind label %13

; <label>:8                                       ; preds = %0
  store %class.LinkedList* %7, %class.LinkedList** %l, align 8
  %9 = load %class.LinkedList*, %class.LinkedList** %l, align 8
  %10 = call noalias i8* @_Znwm(i64 16) #4
  %11 = bitcast i8* %10 to %class.Node*
  invoke void @_ZN4NodeC1Ei(%class.Node* %11, i32 5)
          to label %12 unwind label %17

; <label>:12                                      ; preds = %8
  call void @_ZN10LinkedList10insertNodeEP4Node(%class.LinkedList* %9, %class.Node* %11)
  ret i32 0

; <label>:13                                      ; preds = %0
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  store i8* %15, i8** %4
  %16 = extractvalue { i8*, i32 } %14, 1
  store i32 %16, i32* %5
  call void @_ZdlPv(i8* %6) #5
  br label %21

; <label>:17                                      ; preds = %8
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  store i8* %19, i8** %4
  %20 = extractvalue { i8*, i32 } %18, 1
  store i32 %20, i32* %5
  call void @_ZdlPv(i8* %10) #5
  br label %21

; <label>:21                                      ; preds = %17, %13
  %22 = load i8*, i8** %4
  %23 = load i32, i32* %5
  %24 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #1

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN10LinkedListC1Ev(%class.LinkedList* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %2 = load %class.LinkedList*, %class.LinkedList** %1
  call void @_ZN10LinkedListC2Ev(%class.LinkedList* %2)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #2

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10LinkedList10insertNodeEP4Node(%class.LinkedList* %this, %class.Node* %newNode) #3 align 2 {
  %1 = alloca %class.LinkedList*, align 8
  %2 = alloca %class.Node*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  store %class.Node* %newNode, %class.Node** %2, align 8
  %3 = load %class.LinkedList*, %class.LinkedList** %1
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN4NodeC1Ei(%class.Node* %this, i32 %initialValue) unnamed_addr #0 align 2 {
  %1 = alloca %class.Node*, align 8
  %2 = alloca i32, align 4
  store %class.Node* %this, %class.Node** %1, align 8
  store i32 %initialValue, i32* %2, align 4
  %3 = load %class.Node*, %class.Node** %1
  %4 = load i32, i32* %2, align 4
  call void @_ZN4NodeC2Ei(%class.Node* %3, i32 %4)
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10LinkedListC2Ev(%class.LinkedList* %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %2 = load %class.LinkedList*, %class.LinkedList** %1
  %3 = bitcast %class.LinkedList* %2 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTV10LinkedList, i64 0, i64 2) to i32 (...)**), i32 (...)*** %3
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN10LinkedListD1Ev(%class.LinkedList* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %2 = load %class.LinkedList*, %class.LinkedList** %1
  call void @_ZN10LinkedListD2Ev(%class.LinkedList* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN10LinkedListD0Ev(%class.LinkedList* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.LinkedList*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %4 = load %class.LinkedList*, %class.LinkedList** %1
  invoke void @_ZN10LinkedListD1Ev(%class.LinkedList* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.LinkedList* %4 to i8*
  call void @_ZdlPv(i8* %6) #5
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.LinkedList* %4 to i8*
  call void @_ZdlPv(i8* %11) #5
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8*, i8** %2
  %14 = load i32, i32* %3
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN10LinkedListD2Ev(%class.LinkedList* %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %2 = load %class.LinkedList*, %class.LinkedList** %1
  ret void
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN4NodeC2Ei(%class.Node* %this, i32 %initialValue) unnamed_addr #3 align 2 {
  %1 = alloca %class.Node*, align 8
  %2 = alloca i32, align 4
  store %class.Node* %this, %class.Node** %1, align 8
  store i32 %initialValue, i32* %2, align 4
  %3 = load %class.Node*, %class.Node** %1
  %4 = bitcast %class.Node* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTV4Node, i64 0, i64 2) to i32 (...)**), i32 (...)*** %4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN4NodeD1Ev(%class.Node* %this) unnamed_addr #0 align 2 {
  %1 = alloca %class.Node*, align 8
  store %class.Node* %this, %class.Node** %1, align 8
  %2 = load %class.Node*, %class.Node** %1
  call void @_ZN4NodeD2Ev(%class.Node* %2)
  ret void
}

; Function Attrs: ssp uwtable
define linkonce_odr void @_ZN4NodeD0Ev(%class.Node* %this) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.Node*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.Node* %this, %class.Node** %1, align 8
  %4 = load %class.Node*, %class.Node** %1
  invoke void @_ZN4NodeD1Ev(%class.Node* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.Node* %4 to i8*
  call void @_ZdlPv(i8* %6) #5
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.Node* %4 to i8*
  call void @_ZdlPv(i8* %11) #5
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8*, i8** %2
  %14 = load i32, i32* %3
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZN4NodeD2Ev(%class.Node* %this) unnamed_addr #3 align 2 {
  %1 = alloca %class.Node*, align 8
  store %class.Node* %this, %class.Node** %1, align 8
  %2 = load %class.Node*, %class.Node** %1
  ret void
}

attributes #0 = { ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+sse,+sse2,+sse3,+ssse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { builtin }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final 262876)"}
