; ModuleID = 'source-C-CXX/90/609.cpp'
source_filename = "source-C-CXX/90/609.cpp"
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
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_609.cpp, i8* null }]
@x = common global i32 0
@y = common global i32 0
@x.1 = common global i32 0
@y.2 = common global i32 0
@x.3 = common global i32 0
@y.4 = common global i32 0

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

; Function Attrs: noinline norecurse uwtable
define i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %str1 = alloca [101 x i8], align 16
  %str2 = alloca [101 x i8], align 16
  %i = alloca i8, align 1
  %l = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [101 x i8], [101 x i8]* %str1, i32 0, i32 0
  %call = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSi7getlineEPcl(%"class.std::basic_istream"* @_ZSt3cin, i8* %arraydecay, i64 101)
  %arraydecay1 = getelementptr inbounds [101 x i8], [101 x i8]* %str1, i32 0, i32 0
  %call2 = call i64 @strlen(i8* %arraydecay1) #5
  %conv = trunc i64 %call2 to i8
  store i8 %conv, i8* %l, align 1
  store i8 0, i8* %i, align 1
  %switchVar = alloca i32
  store i32 -1991378226, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar32 = load i32, i32* %switchVar
  switch i32 %switchVar32, label %switchDefault [
    i32 -1991378226, label %for.cond
    i32 -553264083, label %for.body
    i32 -1465465819, label %for.inc
    i32 1290384425, label %for.end
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

for.cond:                                         ; preds = %loopEntry
  %0 = load i8, i8* %i, align 1
  %conv3 = sext i8 %0 to i32
  %1 = load i8, i8* %l, align 1
  %conv4 = sext i8 %1 to i32
  %2 = add i32 %conv4, 1949035360
  %3 = sub i32 %2, 1
  %4 = sub i32 %3, 1949035360
  %sub = sub nsw i32 %conv4, 1
  %cmp = icmp slt i32 %conv3, %4
  %5 = select i1 %cmp, i32 -553264083, i32 1290384425
  store i32 %5, i32* %switchVar
  br label %loopEnd

for.body:                                         ; preds = %loopEntry
  %6 = load i8, i8* %i, align 1
  %idxprom = sext i8 %6 to i64
  %arrayidx = getelementptr inbounds [101 x i8], [101 x i8]* %str1, i64 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv5 = sext i8 %7 to i32
  %8 = load i8, i8* %i, align 1
  %conv6 = sext i8 %8 to i32
  %9 = sub i32 0, %conv6
  %10 = sub i32 0, 1
  %11 = add i32 %9, %10
  %12 = sub i32 0, %11
  %add = add nsw i32 %conv6, 1
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [101 x i8], [101 x i8]* %str1, i64 0, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %13 to i32
  %14 = sub i32 %conv5, -1442583089
  %15 = add i32 %14, %conv9
  %16 = add i32 %15, -1442583089
  %add10 = add nsw i32 %conv5, %conv9
  %conv11 = trunc i32 %16 to i8
  %17 = load i8, i8* %i, align 1
  %idxprom12 = sext i8 %17 to i64
  %arrayidx13 = getelementptr inbounds [101 x i8], [101 x i8]* %str2, i64 0, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx13, align 1
  store i32 -1465465819, i32* %switchVar
  br label %loopEnd

for.inc:                                          ; preds = %loopEntry
  %18 = load i8, i8* %i, align 1
  %19 = sub i8 0, 1
  %20 = sub i8 %18, %19
  %inc = add i8 %18, 1
  store i8 %20, i8* %i, align 1
  store i32 -1991378226, i32* %switchVar
  br label %loopEnd

for.end:                                          ; preds = %loopEntry
  %arrayidx14 = getelementptr inbounds [101 x i8], [101 x i8]* %str1, i64 0, i64 0
  %21 = load i8, i8* %arrayidx14, align 16
  %conv15 = sext i8 %21 to i32
  %22 = load i8, i8* %l, align 1
  %conv16 = sext i8 %22 to i32
  %23 = sub i32 0, 1
  %24 = add i32 %conv16, %23
  %sub17 = sub nsw i32 %conv16, 1
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [101 x i8], [101 x i8]* %str1, i64 0, i64 %idxprom18
  %25 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %25 to i32
  %26 = sub i32 0, %conv20
  %27 = sub i32 %conv15, %26
  %add21 = add nsw i32 %conv15, %conv20
  %conv22 = trunc i32 %27 to i8
  %28 = load i8, i8* %l, align 1
  %conv23 = sext i8 %28 to i32
  %29 = sub i32 0, 1
  %30 = add i32 %conv23, %29
  %sub24 = sub nsw i32 %conv23, 1
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [101 x i8], [101 x i8]* %str2, i64 0, i64 %idxprom25
  store i8 %conv22, i8* %arrayidx26, align 1
  %31 = load i8, i8* %l, align 1
  %idxprom27 = sext i8 %31 to i64
  %arrayidx28 = getelementptr inbounds [101 x i8], [101 x i8]* %str2, i64 0, i64 %idxprom27
  store i8 0, i8* %arrayidx28, align 1
  %arraydecay29 = getelementptr inbounds [101 x i8], [101 x i8]* %str2, i32 0, i32 0
  %call30 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272) @_ZSt4cout, i8* %arraydecay29)
  %call31 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* %call30, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  ret i32 0

loopEnd:                                          ; preds = %for.inc, %for.body, %for.cond, %switchDefault
  br label %loopEntry
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSi7getlineEPcl(%"class.std::basic_istream"*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* dereferenceable(272), i8*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_609.cpp() #0 section ".text.startup" {
entry:
  %.reg2mem2 = alloca i1
  %.reg2mem = alloca i1
  %0 = load i32, i32* @x.3
  %1 = load i32, i32* @y.4
  %2 = sub i32 %0, -1981364949
  %3 = sub i32 %2, 1
  %4 = add i32 %3, -1981364949
  %5 = sub i32 %0, 1
  %6 = mul i32 %0, %4
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  store i1 %8, i1* %.reg2mem
  %9 = icmp slt i32 %1, 10
  store i1 %9, i1* %.reg2mem2
  %switchVar = alloca i32
  store i32 -889756052, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar1 = load i32, i32* %switchVar
  switch i32 %switchVar1, label %switchDefault [
    i32 -889756052, label %first
    i32 1028429941, label %originalBB
    i32 661358087, label %originalBBpart2
    i32 -1064563965, label %originalBBalteredBB
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

first:                                            ; preds = %loopEntry
  %.reload = load volatile i1, i1* %.reg2mem
  %.reload3 = load volatile i1, i1* %.reg2mem2
  %10 = and i1 %.reload, %.reload3
  %11 = xor i1 %.reload, %.reload3
  %12 = or i1 %10, %11
  %13 = or i1 %.reload, %.reload3
  %14 = select i1 %12, i32 1028429941, i32 -1064563965
  store i32 %14, i32* %switchVar
  br label %loopEnd

originalBB:                                       ; preds = %loopEntry
  call void @__cxx_global_var_init()
  %15 = load i32, i32* @x.3
  %16 = load i32, i32* @y.4
  %17 = sub i32 0, 1
  %18 = add i32 %15, %17
  %19 = sub i32 %15, 1
  %20 = mul i32 %15, %18
  %21 = urem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = icmp slt i32 %16, 10
  %24 = xor i1 %22, true
  %25 = xor i1 %23, true
  %26 = xor i1 false, true
  %27 = and i1 %24, false
  %28 = and i1 %22, %26
  %29 = and i1 %25, false
  %30 = and i1 %23, %26
  %31 = or i1 %27, %28
  %32 = or i1 %29, %30
  %33 = xor i1 %31, %32
  %34 = or i1 %24, %25
  %35 = xor i1 %34, true
  %36 = or i1 false, %26
  %37 = and i1 %35, %36
  %38 = or i1 %33, %37
  %39 = or i1 %22, %23
  %40 = select i1 %38, i32 661358087, i32 -1064563965
  store i32 %40, i32* %switchVar
  br label %loopEnd

originalBBpart2:                                  ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  call void @__cxx_global_var_init()
  store i32 1028429941, i32* %switchVar
  br label %loopEnd

loopEnd:                                          ; preds = %originalBBalteredBB, %originalBB, %first, %switchDefault
  br label %loopEntry
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
