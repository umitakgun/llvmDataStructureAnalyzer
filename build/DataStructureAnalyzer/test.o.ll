; ModuleID = 'test.o'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.LinkedList = type { i32 (...)** }
%class.Node = type <{ i32 (...)**, i32, [4 x i8] }>

$_ZN10LinkedListC2Ev = comdat any

$_ZN10LinkedList10insertNodeEP4Node = comdat any

$_ZN4NodeC2Ei = comdat any

$_ZN10LinkedListD2Ev = comdat any

$_ZN10LinkedListD0Ev = comdat any

$_ZN4NodeD2Ev = comdat any

$_ZN4NodeD0Ev = comdat any

$_ZTV10LinkedList = comdat any

$_ZTS10LinkedList = comdat any

$_ZTI10LinkedList = comdat any

$_ZTV4Node = comdat any

$_ZTS4Node = comdat any

$_ZTI4Node = comdat any

@_ZTV10LinkedList = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI10LinkedList to i8*), i8* bitcast (void (%class.LinkedList*)* @_ZN10LinkedListD2Ev to i8*), i8* bitcast (void (%class.LinkedList*)* @_ZN10LinkedListD0Ev to i8*)], comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global i8*
@_ZTS10LinkedList = linkonce_odr constant [13 x i8] c"10LinkedList\00", comdat
@_ZTI10LinkedList = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @_ZTS10LinkedList, i32 0, i32 0) }, comdat
@_ZTV4Node = linkonce_odr unnamed_addr constant [4 x i8*] [i8* null, i8* bitcast ({ i8*, i8* }* @_ZTI4Node to i8*), i8* bitcast (void (%class.Node*)* @_ZN4NodeD2Ev to i8*), i8* bitcast (void (%class.Node*)* @_ZN4NodeD0Ev to i8*)], comdat, align 8
@_ZTS4Node = linkonce_odr constant [6 x i8] c"4Node\00", comdat
@_ZTI4Node = linkonce_odr constant { i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv117__class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @_ZTS4Node, i32 0, i32 0) }, comdat

; Function Attrs: norecurse uwtable
define i32 @main(i32 %argc, i8** %argv) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %l = alloca %class.LinkedList*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias i8* @_Znwm(i64 8) #5
  %0 = bitcast i8* %call to %class.LinkedList*
  invoke void @_ZN10LinkedListC2Ev(%class.LinkedList* %0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store %class.LinkedList* %0, %class.LinkedList** %l, align 8
  %1 = load %class.LinkedList*, %class.LinkedList** %l, align 8
  %call1 = call noalias i8* @_Znwm(i64 16) #5
  %2 = bitcast i8* %call1 to %class.Node*
  invoke void @_ZN4NodeC2Ei(%class.Node* %2, i32 5)
          to label %invoke.cont3 unwind label %lpad2

invoke.cont3:                                     ; preds = %invoke.cont
  call void @_ZN10LinkedList10insertNodeEP4Node(%class.LinkedList* %1, %class.Node* %2)
  ret i32 0

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  store i8* %4, i8** %exn.slot, align 8
  %5 = extractvalue { i8*, i32 } %3, 1
  store i32 %5, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call) #6
  br label %eh.resume

lpad2:                                            ; preds = %invoke.cont
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  store i8* %7, i8** %exn.slot, align 8
  %8 = extractvalue { i8*, i32 } %6, 1
  store i32 %8, i32* %ehselector.slot, align 4
  call void @_ZdlPv(i8* %call1) #6
  br label %eh.resume

eh.resume:                                        ; preds = %lpad2, %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val4 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val4
}

; Function Attrs: nobuiltin
declare noalias i8* @_Znwm(i64) #1

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedListC2Ev(%class.LinkedList* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %this.addr, align 8
  %this1 = load %class.LinkedList*, %class.LinkedList** %this.addr, align 8
  %0 = bitcast %class.LinkedList* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTV10LinkedList, i64 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) #3

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedList10insertNodeEP4Node(%class.LinkedList* %this, %class.Node* %newNode) #2 comdat align 2 {
entry:
  %this.addr = alloca %class.LinkedList*, align 8
  %newNode.addr = alloca %class.Node*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %this.addr, align 8
  store %class.Node* %newNode, %class.Node** %newNode.addr, align 8
  %this1 = load %class.LinkedList*, %class.LinkedList** %this.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4NodeC2Ei(%class.Node* %this, i32 %initialValue) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %class.Node*, align 8
  %initialValue.addr = alloca i32, align 4
  store %class.Node* %this, %class.Node** %this.addr, align 8
  store i32 %initialValue, i32* %initialValue.addr, align 4
  %this1 = load %class.Node*, %class.Node** %this.addr, align 8
  %0 = bitcast %class.Node* %this1 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @_ZTV4Node, i64 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8
  %1 = load i32, i32* %initialValue.addr, align 4
  %value = getelementptr inbounds %class.Node, %class.Node* %this1, i32 0, i32 1
  store i32 %1, i32* %value, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN10LinkedListD2Ev(%class.LinkedList* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %class.LinkedList*, align 8
  store %class.LinkedList* %this, %class.LinkedList** %this.addr, align 8
  %this1 = load %class.LinkedList*, %class.LinkedList** %this.addr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN10LinkedListD0Ev(%class.LinkedList* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.LinkedList*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.LinkedList* %this, %class.LinkedList** %this.addr, align 8
  %this1 = load %class.LinkedList*, %class.LinkedList** %this.addr, align 8
  invoke void @_ZN10LinkedListD2Ev(%class.LinkedList* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %class.LinkedList* %this1 to i8*
  call void @_ZdlPv(i8* %0) #6
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %class.LinkedList* %this1 to i8*
  call void @_ZdlPv(i8* %4) #6
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

; Function Attrs: nounwind uwtable
define linkonce_odr void @_ZN4NodeD2Ev(%class.Node* %this) unnamed_addr #2 comdat align 2 {
entry:
  %this.addr = alloca %class.Node*, align 8
  store %class.Node* %this, %class.Node** %this.addr, align 8
  %this1 = load %class.Node*, %class.Node** %this.addr, align 8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr void @_ZN4NodeD0Ev(%class.Node* %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %this.addr = alloca %class.Node*, align 8
  %exn.slot = alloca i8*
  %ehselector.slot = alloca i32
  store %class.Node* %this, %class.Node** %this.addr, align 8
  %this1 = load %class.Node*, %class.Node** %this.addr, align 8
  invoke void @_ZN4NodeD2Ev(%class.Node* %this1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = bitcast %class.Node* %this1 to i8*
  call void @_ZdlPv(i8* %0) #6
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  store i8* %2, i8** %exn.slot, align 8
  %3 = extractvalue { i8*, i32 } %1, 1
  store i32 %3, i32* %ehselector.slot, align 4
  %4 = bitcast %class.Node* %this1 to i8*
  call void @_ZdlPv(i8* %4) #6
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %exn = load i8*, i8** %exn.slot, align 8
  %sel = load i32, i32* %ehselector.slot, align 4
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0
  %lpad.val2 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1
  resume { i8*, i32 } %lpad.val2
}

attributes #0 = { norecurse uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { builtin }
attributes #6 = { builtin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.0 (trunk 256814)"}
