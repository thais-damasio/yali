; ModuleID = 'source-C-CXX/60/470.cpp'
source_filename = "source-C-CXX/60/470.cpp"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external global i8
@num = global [100000 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_470.cpp, i8* null }]
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0
@x.5 = common global i32 0
@y.6 = common global i32 0

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #2
  ret void
}

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"*) unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #2

; Function Attrs: noinline uwtable
define i32 @_Z1fi(i32 %n) #0 {
entry:
  %.reg2mem6 = alloca i32
  %.reg2mem = alloca i32
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @num, i64 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %.reg2mem
  %switchVar = alloca i32
  store i32 -1792929339, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar5 = load i32, i32* %switchVar
  switch i32 %switchVar5, label %switchDefault [
    i32 -1792929339, label %first
    i32 -1854955155, label %if.then
    i32 -1926318901, label %if.else
    i32 1569048391, label %return
    i32 656239781, label %originalBB
    i32 1621098077, label %originalBBpart2
    i32 1708061067, label %originalBBalteredBB
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

first:                                            ; preds = %loopEntry
  %.reload = load volatile i32, i32* %.reg2mem
  %cmp = icmp sgt i32 %.reload, 0
  %2 = select i1 %cmp, i32 -1854955155, i32 -1926318901
  store i32 %2, i32* %switchVar
  br label %loopEnd

if.then:                                          ; preds = %loopEntry
  %3 = load i32, i32* %n.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [100000 x i32], [100000 x i32]* @num, i64 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  store i32 %4, i32* %retval, align 4
  store i32 1569048391, i32* %switchVar
  br label %loopEnd

if.else:                                          ; preds = %loopEntry
  %5 = load i32, i32* %n.addr, align 4
  %6 = sub i32 %5, -1549983533
  %7 = sub i32 %6, 1
  %8 = add i32 %7, -1549983533
  %sub = sub nsw i32 %5, 1
  %call = call i32 @_Z1fi(i32 %8)
  %9 = load i32, i32* %n.addr, align 4
  %10 = add i32 %9, 198130786
  %11 = sub i32 %10, 2
  %12 = sub i32 %11, 198130786
  %sub3 = sub nsw i32 %9, 2
  %call4 = call i32 @_Z1fi(i32 %12)
  %13 = sub i32 %call, 699049714
  %14 = add i32 %13, %call4
  %15 = add i32 %14, 699049714
  %add = add nsw i32 %call, %call4
  store i32 %15, i32* %retval, align 4
  store i32 1569048391, i32* %switchVar
  br label %loopEnd

return:                                           ; preds = %loopEntry
  %16 = load i32, i32* @x.1
  %17 = load i32, i32* @y.2
  %18 = sub i32 %16, 309725724
  %19 = sub i32 %18, 1
  %20 = add i32 %19, 309725724
  %21 = sub i32 %16, 1
  %22 = mul i32 %16, %20
  %23 = urem i32 %22, 2
  %24 = icmp eq i32 %23, 0
  %25 = icmp slt i32 %17, 10
  %26 = and i1 %24, %25
  %27 = xor i1 %24, %25
  %28 = or i1 %26, %27
  %29 = or i1 %24, %25
  %30 = select i1 %28, i32 656239781, i32 1708061067
  store i32 %30, i32* %switchVar
  br label %loopEnd

originalBB:                                       ; preds = %loopEntry
  %31 = load i32, i32* %retval, align 4
  store i32 %31, i32* %.reg2mem6
  %32 = load i32, i32* @x.1
  %33 = load i32, i32* @y.2
  %34 = sub i32 %32, -1185845572
  %35 = sub i32 %34, 1
  %36 = add i32 %35, -1185845572
  %37 = sub i32 %32, 1
  %38 = mul i32 %32, %36
  %39 = urem i32 %38, 2
  %40 = icmp eq i32 %39, 0
  %41 = icmp slt i32 %33, 10
  %42 = xor i1 %40, true
  %43 = xor i1 %41, true
  %44 = xor i1 false, true
  %45 = and i1 %42, false
  %46 = and i1 %40, %44
  %47 = and i1 %43, false
  %48 = and i1 %41, %44
  %49 = or i1 %45, %46
  %50 = or i1 %47, %48
  %51 = xor i1 %49, %50
  %52 = or i1 %42, %43
  %53 = xor i1 %52, true
  %54 = or i1 false, %44
  %55 = and i1 %53, %54
  %56 = or i1 %51, %55
  %57 = or i1 %40, %41
  %58 = select i1 %56, i32 1621098077, i32 1708061067
  store i32 %58, i32* %switchVar
  br label %loopEnd

originalBBpart2:                                  ; preds = %loopEntry
  %.reload7 = load volatile i32, i32* %.reg2mem6
  ret i32 %.reload7

originalBBalteredBB:                              ; preds = %loopEntry
  %59 = load i32, i32* %retval, align 4
  store i32 656239781, i32* %switchVar
  br label %loopEnd

loopEnd:                                          ; preds = %originalBBalteredBB, %originalBB, %return, %if.else, %if.then, %first, %switchDefault
  br label %loopEntry
}

; Function Attrs: noinline norecurse uwtable
define i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %out = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %n)
  store i32 1, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @num, i64 0, i64 1), align 4
  store i32 1, i32* getelementptr inbounds ([100000 x i32], [100000 x i32]* @num, i64 0, i64 2), align 8
  %switchVar = alloca i32
  store i32 -1994155437, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar8 = load i32, i32* %switchVar
  switch i32 %switchVar8, label %switchDefault [
    i32 -1994155437, label %while.cond
    i32 1139590896, label %while.body
    i32 1359695134, label %lor.lhs.false
    i32 -2141732956, label %if.then
    i32 2097966201, label %if.else
    i32 -1423809326, label %if.end
    i32 384561589, label %while.end
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

while.cond:                                       ; preds = %loopEntry
  %0 = load i32, i32* %n, align 4
  %1 = sub i32 0, -1
  %2 = sub i32 %0, %1
  %dec = add nsw i32 %0, -1
  store i32 %2, i32* %n, align 4
  %tobool = icmp ne i32 %0, 0
  %3 = select i1 %tobool, i32 1139590896, i32 384561589
  store i32 %3, i32* %switchVar
  br label %loopEnd

while.body:                                       ; preds = %loopEntry
  %call1 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %a)
  %4 = load i32, i32* %a, align 4
  %cmp = icmp eq i32 %4, 1
  %5 = select i1 %cmp, i32 -2141732956, i32 1359695134
  store i32 %5, i32* %switchVar
  br label %loopEnd

lor.lhs.false:                                    ; preds = %loopEntry
  %6 = load i32, i32* %a, align 4
  %cmp2 = icmp eq i32 %6, 2
  %7 = select i1 %cmp2, i32 -2141732956, i32 2097966201
  store i32 %7, i32* %switchVar
  br label %loopEnd

if.then:                                          ; preds = %loopEntry
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 1)
  %call4 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call3, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 -1423809326, i32* %switchVar
  br label %loopEnd

if.else:                                          ; preds = %loopEntry
  %8 = load i32, i32* %a, align 4
  %call5 = call i32 @_Z1fi(i32 %8)
  store i32 %call5, i32* %out, align 4
  %9 = load i32, i32* %out, align 4
  %call6 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %9)
  %call7 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call6, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 -1423809326, i32* %switchVar
  br label %loopEnd

if.end:                                           ; preds = %loopEntry
  store i32 -1994155437, i32* %switchVar
  br label %loopEnd

while.end:                                        ; preds = %loopEntry
  ret i32 0

loopEnd:                                          ; preds = %if.end, %if.else, %if.then, %lor.lhs.false, %while.body, %while.cond, %switchDefault
  br label %loopEntry
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_470.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
