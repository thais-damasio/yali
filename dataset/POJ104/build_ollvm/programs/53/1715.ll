; ModuleID = 'source-C-CXX/53/1715.cpp'
source_filename = "source-C-CXX/53/1715.cpp"
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
@n = global i32 0, align 4
@k = global i32 0, align 4
@p = global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_1715.cpp, i8* null }]
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
define i32 @_Z5applei(i32 %num) #0 {
entry:
  %.reg2mem19 = alloca i32
  %.reg2mem17 = alloca i32
  %.reg2mem = alloca i32
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %tot = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  store i32 %0, i32* %.reg2mem
  %1 = load i32, i32* @n, align 4
  store i32 %1, i32* %.reg2mem17
  %switchVar = alloca i32
  store i32 2008914443, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar16 = load i32, i32* %switchVar
  switch i32 %switchVar16, label %switchDefault [
    i32 2008914443, label %first
    i32 170457498, label %if.then
    i32 1911247808, label %if.end
    i32 -2113409578, label %originalBB
    i32 730780976, label %originalBBpart2
    i32 -850059303, label %while.cond
    i32 412948817, label %while.body
    i32 -1351261714, label %while.end
    i32 -724589855, label %return
    i32 -596910093, label %originalBB12
    i32 -481858353, label %originalBBpart214
    i32 304024390, label %originalBBalteredBB
    i32 -1985226298, label %originalBB12alteredBB
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

first:                                            ; preds = %loopEntry
  %.reload = load volatile i32, i32* %.reg2mem
  %.reload18 = load volatile i32, i32* %.reg2mem17
  %cmp = icmp eq i32 %.reload, %.reload18
  %2 = select i1 %cmp, i32 170457498, i32 1911247808
  store i32 %2, i32* %switchVar
  br label %loopEnd

if.then:                                          ; preds = %loopEntry
  %3 = load i32, i32* @n, align 4
  %4 = load i32, i32* @p, align 4
  %mul = mul nsw i32 %3, %4
  %5 = load i32, i32* @k, align 4
  %6 = add i32 %mul, -1720829869
  %7 = add i32 %6, %5
  %8 = sub i32 %7, -1720829869
  %add = add nsw i32 %mul, %5
  store i32 %8, i32* %retval, align 4
  store i32 -724589855, i32* %switchVar
  br label %loopEnd

if.end:                                           ; preds = %loopEntry
  %9 = load i32, i32* @x.1
  %10 = load i32, i32* @y.2
  %11 = sub i32 %9, 152268199
  %12 = sub i32 %11, 1
  %13 = add i32 %12, 152268199
  %14 = sub i32 %9, 1
  %15 = mul i32 %9, %13
  %16 = urem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp slt i32 %10, 10
  %19 = and i1 %17, %18
  %20 = xor i1 %17, %18
  %21 = or i1 %19, %20
  %22 = or i1 %17, %18
  %23 = select i1 %21, i32 -2113409578, i32 304024390
  store i32 %23, i32* %switchVar
  br label %loopEnd

originalBB:                                       ; preds = %loopEntry
  %24 = load i32, i32* %num.addr, align 4
  %25 = sub i32 0, %24
  %26 = sub i32 0, 1
  %27 = add i32 %25, %26
  %28 = sub i32 0, %27
  %add1 = add nsw i32 %24, 1
  %call = call i32 @_Z5applei(i32 %28)
  store i32 %call, i32* %v, align 4
  %29 = load i32, i32* @x.1
  %30 = load i32, i32* @y.2
  %31 = sub i32 %29, -1034541991
  %32 = sub i32 %31, 1
  %33 = add i32 %32, -1034541991
  %34 = sub i32 %29, 1
  %35 = mul i32 %29, %33
  %36 = urem i32 %35, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp slt i32 %30, 10
  %39 = xor i1 %37, true
  %40 = xor i1 %38, true
  %41 = xor i1 true, true
  %42 = and i1 %39, true
  %43 = and i1 %37, %41
  %44 = and i1 %40, true
  %45 = and i1 %38, %41
  %46 = or i1 %42, %43
  %47 = or i1 %44, %45
  %48 = xor i1 %46, %47
  %49 = or i1 %39, %40
  %50 = xor i1 %49, true
  %51 = or i1 true, %41
  %52 = and i1 %50, %51
  %53 = or i1 %48, %52
  %54 = or i1 %37, %38
  %55 = select i1 %53, i32 730780976, i32 304024390
  store i32 %55, i32* %switchVar
  br label %loopEnd

originalBBpart2:                                  ; preds = %loopEntry
  store i32 -850059303, i32* %switchVar
  br label %loopEnd

while.cond:                                       ; preds = %loopEntry
  %56 = load i32, i32* %v, align 4
  %57 = load i32, i32* @n, align 4
  %58 = sub i32 0, 1
  %59 = add i32 %57, %58
  %sub = sub nsw i32 %57, 1
  %rem = srem i32 %56, %59
  %cmp2 = icmp ne i32 %rem, 0
  %60 = select i1 %cmp2, i32 412948817, i32 -1351261714
  store i32 %60, i32* %switchVar
  br label %loopEnd

while.body:                                       ; preds = %loopEntry
  %61 = load i32, i32* @p, align 4
  %62 = add i32 %61, 232622976
  %63 = add i32 %62, 1
  %64 = sub i32 %63, 232622976
  %inc = add nsw i32 %61, 1
  store i32 %64, i32* @p, align 4
  %65 = load i32, i32* %num.addr, align 4
  %66 = add i32 %65, 784394034
  %67 = add i32 %66, 1
  %68 = sub i32 %67, 784394034
  %add3 = add nsw i32 %65, 1
  %call4 = call i32 @_Z5applei(i32 %68)
  store i32 %call4, i32* %v, align 4
  store i32 -850059303, i32* %switchVar
  br label %loopEnd

while.end:                                        ; preds = %loopEntry
  %69 = load i32, i32* %v, align 4
  %70 = load i32, i32* %v, align 4
  %71 = load i32, i32* @n, align 4
  %72 = add i32 %71, -1249798330
  %73 = sub i32 %72, 1
  %74 = sub i32 %73, -1249798330
  %sub5 = sub nsw i32 %71, 1
  %div = sdiv i32 %70, %74
  %75 = sub i32 0, %div
  %76 = sub i32 %69, %75
  %add6 = add nsw i32 %69, %div
  %77 = load i32, i32* @k, align 4
  %78 = sub i32 0, %77
  %79 = sub i32 %76, %78
  %add7 = add nsw i32 %76, %77
  store i32 %79, i32* %tot, align 4
  %80 = load i32, i32* %tot, align 4
  store i32 %80, i32* %retval, align 4
  store i32 -724589855, i32* %switchVar
  br label %loopEnd

return:                                           ; preds = %loopEntry
  %81 = load i32, i32* @x.1
  %82 = load i32, i32* @y.2
  %83 = sub i32 0, 1
  %84 = add i32 %81, %83
  %85 = sub i32 %81, 1
  %86 = mul i32 %81, %84
  %87 = urem i32 %86, 2
  %88 = icmp eq i32 %87, 0
  %89 = icmp slt i32 %82, 10
  %90 = xor i1 %88, true
  %91 = xor i1 %89, true
  %92 = xor i1 true, true
  %93 = and i1 %90, true
  %94 = and i1 %88, %92
  %95 = and i1 %91, true
  %96 = and i1 %89, %92
  %97 = or i1 %93, %94
  %98 = or i1 %95, %96
  %99 = xor i1 %97, %98
  %100 = or i1 %90, %91
  %101 = xor i1 %100, true
  %102 = or i1 true, %92
  %103 = and i1 %101, %102
  %104 = or i1 %99, %103
  %105 = or i1 %88, %89
  %106 = select i1 %104, i32 -596910093, i32 -1985226298
  store i32 %106, i32* %switchVar
  br label %loopEnd

originalBB12:                                     ; preds = %loopEntry
  %107 = load i32, i32* %retval, align 4
  store i32 %107, i32* %.reg2mem19
  %108 = load i32, i32* @x.1
  %109 = load i32, i32* @y.2
  %110 = add i32 %108, 1792078414
  %111 = sub i32 %110, 1
  %112 = sub i32 %111, 1792078414
  %113 = sub i32 %108, 1
  %114 = mul i32 %108, %112
  %115 = urem i32 %114, 2
  %116 = icmp eq i32 %115, 0
  %117 = icmp slt i32 %109, 10
  %118 = xor i1 %116, true
  %119 = xor i1 %117, true
  %120 = xor i1 true, true
  %121 = and i1 %118, true
  %122 = and i1 %116, %120
  %123 = and i1 %119, true
  %124 = and i1 %117, %120
  %125 = or i1 %121, %122
  %126 = or i1 %123, %124
  %127 = xor i1 %125, %126
  %128 = or i1 %118, %119
  %129 = xor i1 %128, true
  %130 = or i1 true, %120
  %131 = and i1 %129, %130
  %132 = or i1 %127, %131
  %133 = or i1 %116, %117
  %134 = select i1 %132, i32 -481858353, i32 -1985226298
  store i32 %134, i32* %switchVar
  br label %loopEnd

originalBBpart214:                                ; preds = %loopEntry
  %.reload20 = load volatile i32, i32* %.reg2mem19
  ret i32 %.reload20

originalBBalteredBB:                              ; preds = %loopEntry
  %135 = load i32, i32* %num.addr, align 4
  %_ = shl i32 %135, 1
  %_8 = shl i32 %135, 1
  %136 = add i32 0, -668319896
  %137 = sub i32 %136, %135
  %138 = sub i32 %137, -668319896
  %_9 = sub i32 0, %135
  %139 = add i32 %138, 484130847
  %140 = add i32 %139, 1
  %141 = sub i32 %140, 484130847
  %gen = add i32 %138, 1
  %142 = sub i32 0, -1771079471
  %143 = sub i32 %142, %135
  %144 = add i32 %143, -1771079471
  %_10 = sub i32 0, %135
  %145 = sub i32 0, 1
  %146 = sub i32 %144, %145
  %gen11 = add i32 %144, 1
  %147 = sub i32 0, 1
  %148 = sub i32 %135, %147
  %add1alteredBB = add nsw i32 %135, 1
  %callalteredBB = call i32 @_Z5applei(i32 %148)
  store i32 %callalteredBB, i32* %v, align 4
  store i32 -2113409578, i32* %switchVar
  br label %loopEnd

originalBB12alteredBB:                            ; preds = %loopEntry
  %149 = load i32, i32* %retval, align 4
  store i32 -596910093, i32* %switchVar
  br label %loopEnd

loopEnd:                                          ; preds = %originalBB12alteredBB, %originalBBalteredBB, %originalBB12, %return, %while.end, %while.body, %while.cond, %originalBBpart2, %originalBB, %if.end, %if.then, %first, %switchDefault
  br label %loopEntry
}

; Function Attrs: noinline norecurse uwtable
define i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) @n)
  %call1 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* %call, i32* dereferenceable(4) @k)
  store i32 1, i32* @p, align 4
  %call2 = call i32 @_Z5applei(i32 1)
  %call3 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %call2)
  ret i32 0
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_1715.cpp() #0 section ".text.startup" {
entry:
  %.reg2mem2 = alloca i1
  %.reg2mem = alloca i1
  %0 = load i32, i32* @x.5
  %1 = load i32, i32* @y.6
  %2 = sub i32 %0, 1192440676
  %3 = sub i32 %2, 1
  %4 = add i32 %3, 1192440676
  %5 = sub i32 %0, 1
  %6 = mul i32 %0, %4
  %7 = urem i32 %6, 2
  %8 = icmp eq i32 %7, 0
  store i1 %8, i1* %.reg2mem
  %9 = icmp slt i32 %1, 10
  store i1 %9, i1* %.reg2mem2
  %switchVar = alloca i32
  store i32 -242498032, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar1 = load i32, i32* %switchVar
  switch i32 %switchVar1, label %switchDefault [
    i32 -242498032, label %first
    i32 -1513725066, label %originalBB
    i32 -133688183, label %originalBBpart2
    i32 569868959, label %originalBBalteredBB
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
  %14 = select i1 %12, i32 -1513725066, i32 569868959
  store i32 %14, i32* %switchVar
  br label %loopEnd

originalBB:                                       ; preds = %loopEntry
  call void @__cxx_global_var_init()
  %15 = load i32, i32* @x.5
  %16 = load i32, i32* @y.6
  %17 = sub i32 0, 1
  %18 = add i32 %15, %17
  %19 = sub i32 %15, 1
  %20 = mul i32 %15, %18
  %21 = urem i32 %20, 2
  %22 = icmp eq i32 %21, 0
  %23 = icmp slt i32 %16, 10
  %24 = and i1 %22, %23
  %25 = xor i1 %22, %23
  %26 = or i1 %24, %25
  %27 = or i1 %22, %23
  %28 = select i1 %26, i32 -133688183, i32 569868959
  store i32 %28, i32* %switchVar
  br label %loopEnd

originalBBpart2:                                  ; preds = %loopEntry
  ret void

originalBBalteredBB:                              ; preds = %loopEntry
  call void @__cxx_global_var_init()
  store i32 -1513725066, i32* %switchVar
  br label %loopEnd

loopEnd:                                          ; preds = %originalBBalteredBB, %originalBB, %first, %switchDefault
  br label %loopEntry
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
