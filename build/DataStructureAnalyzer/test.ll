; ModuleID = 'test.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.LinkedList = type { i32 (...)**, %class.Node* }
%class.Node = type <{ i32 (...)**, %class.Node*, i32, [4 x i8] }>

$_ZN10LinkedListC2Ev = comdat any

$_ZN10LinkedList10insertNodeEP4Node = comdat any

$_ZN4NodeC2Ei = comdat any

$_ZN10LinkedList12releaseNodesEP4Nodeb = comdat any

$_ZN10LinkedListD2Ev = comdat any

$_ZN10LinkedListD0Ev = comdat any

$_ZN4NodeD2Ev = comdat any

$_ZN4NodeD0Ev = comdat any

$_ZN10LinkedList10deleteNodeEP4Node = comdat any

$_ZTV10LinkedList = comdat any

$_ZTS10LinkedList = comdat any

$_ZTI10LinkedList = comdat any

$_ZTV4Node = comdat any

$_ZTS4Node = comdat any

$_ZTI4Node = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@_ZTV10LinkedList = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10LinkedList to i8*), i8* bitcast (void (%class.LinkedList*)* @_ZN10LinkedListD2Ev to i8*), i8* bitcast (void (%class.LinkedList*)* @_ZN10LinkedListD0Ev to i8*)], comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS10LinkedList = linkonce_odr constant [13 x i8] c"10LinkedList\00", comdat
@_ZTI10LinkedList = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10LinkedList, i32 0, i32 0) }, comdat
@_ZTV4Node = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Node to i8*), i8* bitcast (void (%class.Node*)* @_ZN4NodeD2Ev to i8*), i8* bitcast (void (%class.Node*)* @_ZN4NodeD0Ev to i8*)], comdat, align 8
@_ZTS4Node = linkonce_odr constant [6 x i8] c"4Node\00", comdat
@_ZTI4Node = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Node, i32 0, i32 0) }, comdat
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }]

define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #1
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) #0

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) #0

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #1

; Function Attrs: uwtable
define i32 @main(i32 %argc, i8** %argv) #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %l = alloca %class.LinkedList*, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %6 = call noalias i8* @_Znwm(i64 16) #6
  %7 = bitcast i8* %6 to %class.LinkedList*
  invoke void @_ZN10LinkedListC2Ev(%class.LinkedList* %7)
          to label %8 unwind label %21

; <label>:8                                       ; preds = %0
  store %class.LinkedList* %7, %class.LinkedList** %l, align 8
  %9 = load %class.LinkedList*, %class.LinkedList** %l, align 8
  %10 = call noalias i8* @_Znwm(i64 24) #6
  %11 = bitcast i8* %10 to %class.Node*
  invoke void @_ZN4NodeC2Ei(%class.Node* %11, i32 5)
          to label %12 unwind label %25

; <label>:12                                      ; preds = %8
  call void @_ZN10LinkedList10insertNodeEP4Node(%class.LinkedList* %9, %class.Node* %11)
  %13 = load %class.LinkedList*, %class.LinkedList** %l, align 8
  %14 = load %class.LinkedList*, %class.LinkedList** %l, align 8
  %15 = getelementptr inbounds %class.LinkedList, %class.LinkedList* %14, i32 0, i32 1
  %16 = load %class.Node*, %class.Node** %15, align 8
  %17 = load %class.LinkedList*, %class.LinkedList** %l, align 8
  %18 = getelementptr inbounds %class.LinkedList, %class.LinkedList* %17, i32 0, i32 1
  %19 = load %class.Node*, %class.Node** %18, align 8
  %20 = icmp eq %class.Node* %19, null
  call void @_ZN10LinkedList12releaseNodesEP4Nodeb(%class.LinkedList* %13, %class.Node* %16, i1 zeroext %20)
  ret i32 0

; <label>:21                                      ; preds = %0
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  store i8* %23, i8** %4
  %24 = extractvalue { i8*, i32 } %22, 1
  store i32 %24, i32* %5
  call void @_ZdlPv(i8* %6) #7
  br label %29

; <label>:25                                      ; preds = %8
  %26 = landingpad { i8*, i32 }
          cleanup
  %27 = extractvalue { i8*, i32 } %26, 0
  store i8* %27, i8** %4
  %28 = extractvalue { i8*, i32 } %26, 1
  store i32 %28, i32* %5
  call void @_ZdlPv(i8* %10) #7
  br label %29

; <label>:29                                      ; preds = %25, %21
  %30 = load i8*, i8** %4
  %31 = load i32, i32* %5
  %32 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %33 = insertvalue { i8*, i32 } %32, i32 %31, 1
  resume { i8*, i32 } %33
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #3

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedListC2Ev(%class.LinkedList* %this) unnamed_addr #4 comdat align 2 {
  %1 = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %2 = load %class.LinkedList*, %class.LinkedList** %1
  %3 = bitcast %class.LinkedList* %2 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTV10LinkedList, i64 0, i64 2) to i32 (...)**), i32 (...)*** %3
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #5

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedList10insertNodeEP4Node(%class.LinkedList* %this, %class.Node* %newNode) #4 comdat align 2 {
  %1 = alloca %class.LinkedList*, align 8
  %2 = alloca %class.Node*, align 8
  %tail = alloca %class.Node*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  store %class.Node* %newNode, %class.Node** %2, align 8
  %3 = load %class.LinkedList*, %class.LinkedList** %1
  %4 = getelementptr inbounds %class.LinkedList, %class.LinkedList* %3, i32 0, i32 1
  %5 = load %class.Node*, %class.Node** %4, align 8
  %6 = icmp eq %class.Node* %5, null
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %class.Node*, %class.Node** %2, align 8
  %9 = getelementptr inbounds %class.LinkedList, %class.LinkedList* %3, i32 0, i32 1
  store %class.Node* %8, %class.Node** %9, align 8
  br label %29

; <label>:10                                      ; preds = %0
  %11 = getelementptr inbounds %class.LinkedList, %class.LinkedList* %3, i32 0, i32 1
  %12 = load %class.Node*, %class.Node** %11, align 8
  %13 = getelementptr inbounds %class.Node, %class.Node* %12, i32 0, i32 1
  %14 = load %class.Node*, %class.Node** %13, align 8
  store %class.Node* %14, %class.Node** %tail, align 8
  br label %15

; <label>:15                                      ; preds = %21, %10
  %16 = load %class.Node*, %class.Node** %tail, align 8
  %17 = getelementptr inbounds %class.Node, %class.Node* %16, i32 0, i32 1
  %18 = load %class.Node*, %class.Node** %17, align 8
  %19 = icmp ne %class.Node* %18, null
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %15
  br label %21

; <label>:21                                      ; preds = %20
  %22 = load %class.Node*, %class.Node** %tail, align 8
  %23 = getelementptr inbounds %class.Node, %class.Node* %22, i32 0, i32 1
  %24 = load %class.Node*, %class.Node** %23, align 8
  store %class.Node* %24, %class.Node** %tail, align 8
  br label %15

; <label>:25                                      ; preds = %15
  %26 = load %class.Node*, %class.Node** %2, align 8
  %27 = load %class.Node*, %class.Node** %tail, align 8
  %28 = getelementptr inbounds %class.Node, %class.Node* %27, i32 0, i32 1
  store %class.Node* %26, %class.Node** %28, align 8
  br label %29

; <label>:29                                      ; preds = %25, %7
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4NodeC2Ei(%class.Node* %this, i32 %initialValue) unnamed_addr #4 comdat align 2 {
  %1 = alloca %class.Node*, align 8
  %2 = alloca i32, align 4
  store %class.Node* %this, %class.Node** %1, align 8
  store i32 %initialValue, i32* %2, align 4
  %3 = load %class.Node*, %class.Node** %1
  %4 = bitcast %class.Node* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTV4Node, i64 0, i64 2) to i32 (...)**), i32 (...)*** %4
  %5 = load i32, i32* %2, align 4
  %6 = getelementptr inbounds %class.Node, %class.Node* %3, i32 0, i32 2
  store i32 %5, i32* %6, align 4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN10LinkedList12releaseNodesEP4Nodeb(%class.LinkedList* %this, %class.Node* %head, i1 zeroext %breakPoint) #2 comdat align 2 {
  %1 = alloca %class.LinkedList*, align 8
  %2 = alloca %class.Node*, align 8
  %3 = alloca i8, align 1
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  store %class.Node* %head, %class.Node** %2, align 8
  %4 = zext i1 %breakPoint to i8
  store i8 %4, i8* %3, align 1
  %5 = load %class.LinkedList*, %class.LinkedList** %1
  %6 = load i8, i8* %3, align 1
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %9

; <label>:8                                       ; preds = %0
  br label %18

; <label>:9                                       ; preds = %0
  %10 = load %class.Node*, %class.Node** %2, align 8
  %11 = getelementptr inbounds %class.Node, %class.Node* %10, i32 0, i32 1
  %12 = load %class.Node*, %class.Node** %11, align 8
  %13 = load %class.Node*, %class.Node** %2, align 8
  %14 = getelementptr inbounds %class.Node, %class.Node* %13, i32 0, i32 1
  %15 = load %class.Node*, %class.Node** %14, align 8
  %16 = icmp eq %class.Node* %15, null
  call void @_ZN10LinkedList12releaseNodesEP4Nodeb(%class.LinkedList* %5, %class.Node* %12, i1 zeroext %16)
  %17 = load %class.Node*, %class.Node** %2, align 8
  call void @_ZN10LinkedList10deleteNodeEP4Node(%class.LinkedList* %5, %class.Node* %17)
  br label %18

; <label>:18                                      ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedListD2Ev(%class.LinkedList* %this) unnamed_addr #4 comdat align 2 {
  %1 = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %2 = load %class.LinkedList*, %class.LinkedList** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN10LinkedListD0Ev(%class.LinkedList* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.LinkedList*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  %4 = load %class.LinkedList*, %class.LinkedList** %1
  invoke void @_ZN10LinkedListD2Ev(%class.LinkedList* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.LinkedList* %4 to i8*
  call void @_ZdlPv(i8* %6) #7
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.LinkedList* %4 to i8*
  call void @_ZdlPv(i8* %11) #7
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8*, i8** %2
  %14 = load i32, i32* %3
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4NodeD2Ev(%class.Node* %this) unnamed_addr #4 comdat align 2 {
  %1 = alloca %class.Node*, align 8
  store %class.Node* %this, %class.Node** %1, align 8
  %2 = load %class.Node*, %class.Node** %1
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4NodeD0Ev(%class.Node* %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca %class.Node*, align 8
  %2 = alloca i8*
  %3 = alloca i32
  store %class.Node* %this, %class.Node** %1, align 8
  %4 = load %class.Node*, %class.Node** %1
  invoke void @_ZN4NodeD2Ev(%class.Node* %4)
          to label %5 unwind label %7

; <label>:5                                       ; preds = %0
  %6 = bitcast %class.Node* %4 to i8*
  call void @_ZdlPv(i8* %6) #7
  ret void

; <label>:7                                       ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %2
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %3
  %11 = bitcast %class.Node* %4 to i8*
  call void @_ZdlPv(i8* %11) #7
  br label %12

; <label>:12                                      ; preds = %7
  %13 = load i8*, i8** %2
  %14 = load i32, i32* %3
  %15 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedList10deleteNodeEP4Node(%class.LinkedList* %this, %class.Node* %deleteNode) #4 comdat align 2 {
  %1 = alloca %class.LinkedList*, align 8
  %2 = alloca %class.Node*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %1, align 8
  store %class.Node* %deleteNode, %class.Node** %2, align 8
  %3 = load %class.LinkedList*, %class.LinkedList** %1
  ret void
}

define internal void @_GLOBAL__sub_I_test.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { builtin }
attributes #7 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final 264341)"}
