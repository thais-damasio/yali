; ModuleID = 'source-C-CXX/31/1191.cpp'
source_filename = "source-C-CXX/31/1191.cpp"
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
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_1191.cpp, i8* null }]
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
  %a = alloca [101 x i32], align 16
  %b = alloca [101 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %lena = alloca i32, align 4
  %start = alloca i32, align 4
  %cha = alloca [101 x i8], align 16
  %chb = alloca [101 x i8], align 16
  store i32 0, i32* %retval, align 4
  %call = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* @_ZSt3cin, i32* dereferenceable(4) %n)
  %call1 = call i32 @_ZNSi3getEv(%"class.std::basic_istream"* @_ZSt3cin)
  store i32 1, i32* %i, align 4
  %switchVar = alloca i32
  store i32 883167313, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar115 = load i32, i32* %switchVar
  switch i32 %switchVar115, label %switchDefault [
    i32 883167313, label %for.cond
    i32 -158973364, label %for.body
    i32 -1485883748, label %for.cond11
    i32 1856587007, label %for.body13
    i32 1078197761, label %originalBB
    i32 551034080, label %originalBBpart2
    i32 1423610301, label %for.inc
    i32 1106714889, label %for.end
    i32 2132247443, label %originalBB93
    i32 400580000, label %originalBBpart2103
    i32 -1465125264, label %for.cond25
    i32 38048310, label %for.body27
    i32 -1651057623, label %if.then
    i32 2137185275, label %if.end
    i32 780975383, label %for.inc46
    i32 -1376655977, label %for.end48
    i32 577560875, label %for.cond49
    i32 667358813, label %for.body51
    i32 1421805505, label %if.then54
    i32 697334951, label %if.end55
    i32 948612599, label %for.inc56
    i32 711752986, label %originalBB105
    i32 292527585, label %originalBBpart2109
    i32 680195459, label %for.end58
    i32 1112056138, label %originalBB111
    i32 -1514172544, label %originalBBpart2113
    i32 2084108770, label %for.cond59
    i32 -542193431, label %for.body61
    i32 -1235049973, label %for.inc65
    i32 -549610536, label %for.end67
    i32 504858520, label %for.inc70
    i32 -1931211542, label %for.end72
    i32 786756982, label %originalBBalteredBB
    i32 -1520659302, label %originalBB93alteredBB
    i32 -1325521908, label %originalBB105alteredBB
    i32 1074351369, label %originalBB111alteredBB
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

for.cond:                                         ; preds = %loopEntry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %0, %1
  %2 = select i1 %cmp, i32 -158973364, i32 -1931211542
  store i32 %2, i32* %switchVar
  br label %loopEnd

for.body:                                         ; preds = %loopEntry
  %arraydecay = getelementptr inbounds [101 x i8], [101 x i8]* %cha, i32 0, i32 0
  %call2 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSi7getlineEPcl(%"class.std::basic_istream"* @_ZSt3cin, i8* %arraydecay, i64 100)
  %arraydecay3 = getelementptr inbounds [101 x i8], [101 x i8]* %chb, i32 0, i32 0
  %call4 = call dereferenceable(280) %"class.std::basic_istream"* @_ZNSi7getlineEPcl(%"class.std::basic_istream"* @_ZSt3cin, i8* %arraydecay3, i64 100)
  %arraydecay5 = getelementptr inbounds [101 x i8], [101 x i8]* %cha, i32 0, i32 0
  %call6 = call i64 @strlen(i8* %arraydecay5) #5
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %lena, align 4
  %3 = load i32, i32* %lena, align 4
  %conv7 = sext i32 %3 to i64
  %arraydecay8 = getelementptr inbounds [101 x i8], [101 x i8]* %chb, i32 0, i32 0
  %call9 = call i64 @strlen(i8* %arraydecay8) #5
  %4 = sub i64 %conv7, 8352002746565957399
  %5 = sub i64 %4, %call9
  %6 = add i64 %5, 8352002746565957399
  %sub = sub i64 %conv7, %call9
  %conv10 = trunc i64 %6 to i32
  store i32 %conv10, i32* %t, align 4
  store i32 0, i32* %j, align 4
  store i32 -1485883748, i32* %switchVar
  br label %loopEnd

for.cond11:                                       ; preds = %loopEntry
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %lena, align 4
  %cmp12 = icmp slt i32 %7, %8
  %9 = select i1 %cmp12, i32 1856587007, i32 1106714889
  store i32 %9, i32* %switchVar
  br label %loopEnd

for.body13:                                       ; preds = %loopEntry
  %10 = load i32, i32* @x.1
  %11 = load i32, i32* @y.2
  %12 = sub i32 0, 1
  %13 = add i32 %10, %12
  %14 = sub i32 %10, 1
  %15 = mul i32 %10, %13
  %16 = urem i32 %15, 2
  %17 = icmp eq i32 %16, 0
  %18 = icmp slt i32 %11, 10
  %19 = and i1 %17, %18
  %20 = xor i1 %17, %18
  %21 = or i1 %19, %20
  %22 = or i1 %17, %18
  %23 = select i1 %21, i32 1078197761, i32 786756982
  store i32 %23, i32* %switchVar
  br label %loopEnd

originalBB:                                       ; preds = %loopEntry
  %24 = load i32, i32* %j, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [101 x i8], [101 x i8]* %cha, i64 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx, align 1
  %conv14 = sext i8 %25 to i32
  %26 = sub i32 0, 48
  %27 = add i32 %conv14, %26
  %sub15 = sub nsw i32 %conv14, 48
  %28 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %28 to i64
  %arrayidx17 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom16
  store i32 %27, i32* %arrayidx17, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [101 x i8], [101 x i8]* %chb, i64 0, i64 %idxprom18
  %30 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %30 to i32
  %31 = sub i32 0, 48
  %32 = add i32 %conv20, %31
  %sub21 = sub nsw i32 %conv20, 48
  %33 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %33 to i64
  %arrayidx23 = getelementptr inbounds [101 x i32], [101 x i32]* %b, i64 0, i64 %idxprom22
  store i32 %32, i32* %arrayidx23, align 4
  %34 = load i32, i32* @x.1
  %35 = load i32, i32* @y.2
  %36 = add i32 %34, -395217880
  %37 = sub i32 %36, 1
  %38 = sub i32 %37, -395217880
  %39 = sub i32 %34, 1
  %40 = mul i32 %34, %38
  %41 = urem i32 %40, 2
  %42 = icmp eq i32 %41, 0
  %43 = icmp slt i32 %35, 10
  %44 = and i1 %42, %43
  %45 = xor i1 %42, %43
  %46 = or i1 %44, %45
  %47 = or i1 %42, %43
  %48 = select i1 %46, i32 551034080, i32 786756982
  store i32 %48, i32* %switchVar
  br label %loopEnd

originalBBpart2:                                  ; preds = %loopEntry
  store i32 1423610301, i32* %switchVar
  br label %loopEnd

for.inc:                                          ; preds = %loopEntry
  %49 = load i32, i32* %j, align 4
  %50 = sub i32 0, %49
  %51 = sub i32 0, 1
  %52 = add i32 %50, %51
  %53 = sub i32 0, %52
  %inc = add nsw i32 %49, 1
  store i32 %53, i32* %j, align 4
  store i32 -1485883748, i32* %switchVar
  br label %loopEnd

for.end:                                          ; preds = %loopEntry
  %54 = load i32, i32* @x.1
  %55 = load i32, i32* @y.2
  %56 = sub i32 0, 1
  %57 = add i32 %54, %56
  %58 = sub i32 %54, 1
  %59 = mul i32 %54, %57
  %60 = urem i32 %59, 2
  %61 = icmp eq i32 %60, 0
  %62 = icmp slt i32 %55, 10
  %63 = xor i1 %61, true
  %64 = xor i1 %62, true
  %65 = xor i1 false, true
  %66 = and i1 %63, false
  %67 = and i1 %61, %65
  %68 = and i1 %64, false
  %69 = and i1 %62, %65
  %70 = or i1 %66, %67
  %71 = or i1 %68, %69
  %72 = xor i1 %70, %71
  %73 = or i1 %63, %64
  %74 = xor i1 %73, true
  %75 = or i1 false, %65
  %76 = and i1 %74, %75
  %77 = or i1 %72, %76
  %78 = or i1 %61, %62
  %79 = select i1 %77, i32 2132247443, i32 -1520659302
  store i32 %79, i32* %switchVar
  br label %loopEnd

originalBB93:                                     ; preds = %loopEntry
  %80 = load i32, i32* %lena, align 4
  %81 = sub i32 0, 1
  %82 = add i32 %80, %81
  %sub24 = sub nsw i32 %80, 1
  store i32 %82, i32* %j, align 4
  %83 = load i32, i32* @x.1
  %84 = load i32, i32* @y.2
  %85 = sub i32 0, 1
  %86 = add i32 %83, %85
  %87 = sub i32 %83, 1
  %88 = mul i32 %83, %86
  %89 = urem i32 %88, 2
  %90 = icmp eq i32 %89, 0
  %91 = icmp slt i32 %84, 10
  %92 = and i1 %90, %91
  %93 = xor i1 %90, %91
  %94 = or i1 %92, %93
  %95 = or i1 %90, %91
  %96 = select i1 %94, i32 400580000, i32 -1520659302
  store i32 %96, i32* %switchVar
  br label %loopEnd

originalBBpart2103:                               ; preds = %loopEntry
  store i32 -1465125264, i32* %switchVar
  br label %loopEnd

for.cond25:                                       ; preds = %loopEntry
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* %t, align 4
  %cmp26 = icmp sge i32 %97, %98
  %99 = select i1 %cmp26, i32 38048310, i32 -1376655977
  store i32 %99, i32* %switchVar
  br label %loopEnd

for.body27:                                       ; preds = %loopEntry
  %100 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %100 to i64
  %arrayidx29 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom28
  %101 = load i32, i32* %arrayidx29, align 4
  %102 = load i32, i32* %j, align 4
  %103 = load i32, i32* %t, align 4
  %104 = add i32 %102, -1456725488
  %105 = sub i32 %104, %103
  %106 = sub i32 %105, -1456725488
  %sub30 = sub nsw i32 %102, %103
  %idxprom31 = sext i32 %106 to i64
  %arrayidx32 = getelementptr inbounds [101 x i32], [101 x i32]* %b, i64 0, i64 %idxprom31
  %107 = load i32, i32* %arrayidx32, align 4
  %108 = sub i32 %101, -415517331
  %109 = sub i32 %108, %107
  %110 = add i32 %109, -415517331
  %sub33 = sub nsw i32 %101, %107
  %111 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %111 to i64
  %arrayidx35 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom34
  store i32 %110, i32* %arrayidx35, align 4
  %112 = load i32, i32* %j, align 4
  %idxprom36 = sext i32 %112 to i64
  %arrayidx37 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom36
  %113 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp slt i32 %113, 0
  %114 = select i1 %cmp38, i32 -1651057623, i32 2137185275
  store i32 %114, i32* %switchVar
  br label %loopEnd

if.then:                                          ; preds = %loopEntry
  %115 = load i32, i32* %j, align 4
  %idxprom39 = sext i32 %115 to i64
  %arrayidx40 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom39
  %116 = load i32, i32* %arrayidx40, align 4
  %117 = sub i32 0, 10
  %118 = sub i32 %116, %117
  %add = add nsw i32 %116, 10
  %119 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %119 to i64
  %arrayidx42 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom41
  store i32 %118, i32* %arrayidx42, align 4
  %120 = load i32, i32* %j, align 4
  %121 = add i32 %120, -383686502
  %122 = sub i32 %121, 1
  %123 = sub i32 %122, -383686502
  %sub43 = sub nsw i32 %120, 1
  %idxprom44 = sext i32 %123 to i64
  %arrayidx45 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom44
  %124 = load i32, i32* %arrayidx45, align 4
  %125 = sub i32 0, -1
  %126 = sub i32 %124, %125
  %dec = add nsw i32 %124, -1
  store i32 %126, i32* %arrayidx45, align 4
  store i32 2137185275, i32* %switchVar
  br label %loopEnd

if.end:                                           ; preds = %loopEntry
  store i32 780975383, i32* %switchVar
  br label %loopEnd

for.inc46:                                        ; preds = %loopEntry
  %127 = load i32, i32* %j, align 4
  %128 = sub i32 0, -1
  %129 = sub i32 %127, %128
  %dec47 = add nsw i32 %127, -1
  store i32 %129, i32* %j, align 4
  store i32 -1465125264, i32* %switchVar
  br label %loopEnd

for.end48:                                        ; preds = %loopEntry
  store i32 0, i32* %j, align 4
  store i32 577560875, i32* %switchVar
  br label %loopEnd

for.cond49:                                       ; preds = %loopEntry
  %130 = load i32, i32* %j, align 4
  %cmp50 = icmp slt i32 %130, 101
  %131 = select i1 %cmp50, i32 667358813, i32 680195459
  store i32 %131, i32* %switchVar
  br label %loopEnd

for.body51:                                       ; preds = %loopEntry
  %132 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %132 to i64
  %arrayidx53 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom52
  %133 = load i32, i32* %arrayidx53, align 4
  %tobool = icmp ne i32 %133, 0
  %134 = select i1 %tobool, i32 1421805505, i32 697334951
  store i32 %134, i32* %switchVar
  br label %loopEnd

if.then54:                                        ; preds = %loopEntry
  %135 = load i32, i32* %j, align 4
  store i32 %135, i32* %start, align 4
  store i32 680195459, i32* %switchVar
  br label %loopEnd

if.end55:                                         ; preds = %loopEntry
  store i32 948612599, i32* %switchVar
  br label %loopEnd

for.inc56:                                        ; preds = %loopEntry
  %136 = load i32, i32* @x.1
  %137 = load i32, i32* @y.2
  %138 = add i32 %136, -1357160059
  %139 = sub i32 %138, 1
  %140 = sub i32 %139, -1357160059
  %141 = sub i32 %136, 1
  %142 = mul i32 %136, %140
  %143 = urem i32 %142, 2
  %144 = icmp eq i32 %143, 0
  %145 = icmp slt i32 %137, 10
  %146 = and i1 %144, %145
  %147 = xor i1 %144, %145
  %148 = or i1 %146, %147
  %149 = or i1 %144, %145
  %150 = select i1 %148, i32 711752986, i32 -1325521908
  store i32 %150, i32* %switchVar
  br label %loopEnd

originalBB105:                                    ; preds = %loopEntry
  %151 = load i32, i32* %j, align 4
  %152 = sub i32 %151, -771213064
  %153 = add i32 %152, 1
  %154 = add i32 %153, -771213064
  %inc57 = add nsw i32 %151, 1
  store i32 %154, i32* %j, align 4
  %155 = load i32, i32* @x.1
  %156 = load i32, i32* @y.2
  %157 = sub i32 %155, 1213438918
  %158 = sub i32 %157, 1
  %159 = add i32 %158, 1213438918
  %160 = sub i32 %155, 1
  %161 = mul i32 %155, %159
  %162 = urem i32 %161, 2
  %163 = icmp eq i32 %162, 0
  %164 = icmp slt i32 %156, 10
  %165 = xor i1 %163, true
  %166 = xor i1 %164, true
  %167 = xor i1 true, true
  %168 = and i1 %165, true
  %169 = and i1 %163, %167
  %170 = and i1 %166, true
  %171 = and i1 %164, %167
  %172 = or i1 %168, %169
  %173 = or i1 %170, %171
  %174 = xor i1 %172, %173
  %175 = or i1 %165, %166
  %176 = xor i1 %175, true
  %177 = or i1 true, %167
  %178 = and i1 %176, %177
  %179 = or i1 %174, %178
  %180 = or i1 %163, %164
  %181 = select i1 %179, i32 292527585, i32 -1325521908
  store i32 %181, i32* %switchVar
  br label %loopEnd

originalBBpart2109:                               ; preds = %loopEntry
  store i32 577560875, i32* %switchVar
  br label %loopEnd

for.end58:                                        ; preds = %loopEntry
  %182 = load i32, i32* @x.1
  %183 = load i32, i32* @y.2
  %184 = add i32 %182, -1705508336
  %185 = sub i32 %184, 1
  %186 = sub i32 %185, -1705508336
  %187 = sub i32 %182, 1
  %188 = mul i32 %182, %186
  %189 = urem i32 %188, 2
  %190 = icmp eq i32 %189, 0
  %191 = icmp slt i32 %183, 10
  %192 = xor i1 %190, true
  %193 = xor i1 %191, true
  %194 = xor i1 true, true
  %195 = and i1 %192, true
  %196 = and i1 %190, %194
  %197 = and i1 %193, true
  %198 = and i1 %191, %194
  %199 = or i1 %195, %196
  %200 = or i1 %197, %198
  %201 = xor i1 %199, %200
  %202 = or i1 %192, %193
  %203 = xor i1 %202, true
  %204 = or i1 true, %194
  %205 = and i1 %203, %204
  %206 = or i1 %201, %205
  %207 = or i1 %190, %191
  %208 = select i1 %206, i32 1112056138, i32 1074351369
  store i32 %208, i32* %switchVar
  br label %loopEnd

originalBB111:                                    ; preds = %loopEntry
  %209 = load i32, i32* %start, align 4
  store i32 %209, i32* %j, align 4
  %210 = load i32, i32* @x.1
  %211 = load i32, i32* @y.2
  %212 = sub i32 %210, 404533306
  %213 = sub i32 %212, 1
  %214 = add i32 %213, 404533306
  %215 = sub i32 %210, 1
  %216 = mul i32 %210, %214
  %217 = urem i32 %216, 2
  %218 = icmp eq i32 %217, 0
  %219 = icmp slt i32 %211, 10
  %220 = xor i1 %218, true
  %221 = xor i1 %219, true
  %222 = xor i1 true, true
  %223 = and i1 %220, true
  %224 = and i1 %218, %222
  %225 = and i1 %221, true
  %226 = and i1 %219, %222
  %227 = or i1 %223, %224
  %228 = or i1 %225, %226
  %229 = xor i1 %227, %228
  %230 = or i1 %220, %221
  %231 = xor i1 %230, true
  %232 = or i1 true, %222
  %233 = and i1 %231, %232
  %234 = or i1 %229, %233
  %235 = or i1 %218, %219
  %236 = select i1 %234, i32 -1514172544, i32 1074351369
  store i32 %236, i32* %switchVar
  br label %loopEnd

originalBBpart2113:                               ; preds = %loopEntry
  store i32 2084108770, i32* %switchVar
  br label %loopEnd

for.cond59:                                       ; preds = %loopEntry
  %237 = load i32, i32* %j, align 4
  %238 = load i32, i32* %lena, align 4
  %cmp60 = icmp slt i32 %237, %238
  %239 = select i1 %cmp60, i32 -542193431, i32 -549610536
  store i32 %239, i32* %switchVar
  br label %loopEnd

for.body61:                                       ; preds = %loopEntry
  %240 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %240 to i64
  %arrayidx63 = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom62
  %241 = load i32, i32* %arrayidx63, align 4
  %call64 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* @_ZSt4cout, i32 %241)
  store i32 -1235049973, i32* %switchVar
  br label %loopEnd

for.inc65:                                        ; preds = %loopEntry
  %242 = load i32, i32* %j, align 4
  %243 = sub i32 0, 1
  %244 = sub i32 %242, %243
  %inc66 = add nsw i32 %242, 1
  store i32 %244, i32* %j, align 4
  store i32 2084108770, i32* %switchVar
  br label %loopEnd

for.end67:                                        ; preds = %loopEntry
  %call68 = call dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call69 = call i32 @_ZNSi3getEv(%"class.std::basic_istream"* @_ZSt3cin)
  store i32 504858520, i32* %switchVar
  br label %loopEnd

for.inc70:                                        ; preds = %loopEntry
  %245 = load i32, i32* %i, align 4
  %246 = sub i32 0, %245
  %247 = sub i32 0, 1
  %248 = add i32 %246, %247
  %249 = sub i32 0, %248
  %inc71 = add nsw i32 %245, 1
  store i32 %249, i32* %i, align 4
  store i32 883167313, i32* %switchVar
  br label %loopEnd

for.end72:                                        ; preds = %loopEntry
  ret i32 0

originalBBalteredBB:                              ; preds = %loopEntry
  %250 = load i32, i32* %j, align 4
  %idxpromalteredBB = sext i32 %250 to i64
  %arrayidxalteredBB = getelementptr inbounds [101 x i8], [101 x i8]* %cha, i64 0, i64 %idxpromalteredBB
  %251 = load i8, i8* %arrayidxalteredBB, align 1
  %conv14alteredBB = sext i8 %251 to i32
  %252 = sub i32 %conv14alteredBB, -832406221
  %253 = sub i32 %252, 48
  %254 = add i32 %253, -832406221
  %_ = sub i32 %conv14alteredBB, 48
  %gen = mul i32 %254, 48
  %255 = sub i32 0, -16036313
  %256 = sub i32 %255, %conv14alteredBB
  %257 = add i32 %256, -16036313
  %_73 = sub i32 0, %conv14alteredBB
  %258 = sub i32 0, %257
  %259 = sub i32 0, 48
  %260 = add i32 %258, %259
  %261 = sub i32 0, %260
  %gen74 = add i32 %257, 48
  %_75 = shl i32 %conv14alteredBB, 48
  %_76 = shl i32 %conv14alteredBB, 48
  %_77 = shl i32 %conv14alteredBB, 48
  %_78 = shl i32 %conv14alteredBB, 48
  %262 = add i32 %conv14alteredBB, 845655696
  %263 = sub i32 %262, 48
  %264 = sub i32 %263, 845655696
  %sub15alteredBB = sub nsw i32 %conv14alteredBB, 48
  %265 = load i32, i32* %j, align 4
  %idxprom16alteredBB = sext i32 %265 to i64
  %arrayidx17alteredBB = getelementptr inbounds [101 x i32], [101 x i32]* %a, i64 0, i64 %idxprom16alteredBB
  store i32 %264, i32* %arrayidx17alteredBB, align 4
  %266 = load i32, i32* %j, align 4
  %idxprom18alteredBB = sext i32 %266 to i64
  %arrayidx19alteredBB = getelementptr inbounds [101 x i8], [101 x i8]* %chb, i64 0, i64 %idxprom18alteredBB
  %267 = load i8, i8* %arrayidx19alteredBB, align 1
  %conv20alteredBB = sext i8 %267 to i32
  %268 = add i32 0, 594140588
  %269 = sub i32 %268, %conv20alteredBB
  %270 = sub i32 %269, 594140588
  %_79 = sub i32 0, %conv20alteredBB
  %271 = sub i32 0, 48
  %272 = sub i32 %270, %271
  %gen80 = add i32 %270, 48
  %273 = add i32 0, 998934732
  %274 = sub i32 %273, %conv20alteredBB
  %275 = sub i32 %274, 998934732
  %_81 = sub i32 0, %conv20alteredBB
  %276 = sub i32 0, %275
  %277 = sub i32 0, 48
  %278 = add i32 %276, %277
  %279 = sub i32 0, %278
  %gen82 = add i32 %275, 48
  %_83 = shl i32 %conv20alteredBB, 48
  %280 = add i32 %conv20alteredBB, 1065615907
  %281 = sub i32 %280, 48
  %282 = sub i32 %281, 1065615907
  %_84 = sub i32 %conv20alteredBB, 48
  %gen85 = mul i32 %282, 48
  %283 = add i32 0, -1521380840
  %284 = sub i32 %283, %conv20alteredBB
  %285 = sub i32 %284, -1521380840
  %_86 = sub i32 0, %conv20alteredBB
  %286 = sub i32 0, %285
  %287 = sub i32 0, 48
  %288 = add i32 %286, %287
  %289 = sub i32 0, %288
  %gen87 = add i32 %285, 48
  %290 = add i32 %conv20alteredBB, -152358537
  %291 = sub i32 %290, 48
  %292 = sub i32 %291, -152358537
  %_88 = sub i32 %conv20alteredBB, 48
  %gen89 = mul i32 %292, 48
  %293 = add i32 0, 227356420
  %294 = sub i32 %293, %conv20alteredBB
  %295 = sub i32 %294, 227356420
  %_90 = sub i32 0, %conv20alteredBB
  %296 = add i32 %295, 126904654
  %297 = add i32 %296, 48
  %298 = sub i32 %297, 126904654
  %gen91 = add i32 %295, 48
  %_92 = shl i32 %conv20alteredBB, 48
  %299 = add i32 %conv20alteredBB, 1224886207
  %300 = sub i32 %299, 48
  %301 = sub i32 %300, 1224886207
  %sub21alteredBB = sub nsw i32 %conv20alteredBB, 48
  %302 = load i32, i32* %j, align 4
  %idxprom22alteredBB = sext i32 %302 to i64
  %arrayidx23alteredBB = getelementptr inbounds [101 x i32], [101 x i32]* %b, i64 0, i64 %idxprom22alteredBB
  store i32 %301, i32* %arrayidx23alteredBB, align 4
  store i32 1078197761, i32* %switchVar
  br label %loopEnd

originalBB93alteredBB:                            ; preds = %loopEntry
  %303 = load i32, i32* %lena, align 4
  %304 = add i32 %303, 59415486
  %305 = sub i32 %304, 1
  %306 = sub i32 %305, 59415486
  %_94 = sub i32 %303, 1
  %gen95 = mul i32 %306, 1
  %307 = sub i32 0, 752112497
  %308 = sub i32 %307, %303
  %309 = add i32 %308, 752112497
  %_96 = sub i32 0, %303
  %310 = sub i32 0, %309
  %311 = sub i32 0, 1
  %312 = add i32 %310, %311
  %313 = sub i32 0, %312
  %gen97 = add i32 %309, 1
  %314 = sub i32 %303, 963473603
  %315 = sub i32 %314, 1
  %316 = add i32 %315, 963473603
  %_98 = sub i32 %303, 1
  %gen99 = mul i32 %316, 1
  %317 = sub i32 %303, -1432731532
  %318 = sub i32 %317, 1
  %319 = add i32 %318, -1432731532
  %_100 = sub i32 %303, 1
  %gen101 = mul i32 %319, 1
  %320 = add i32 %303, -737384934
  %321 = sub i32 %320, 1
  %322 = sub i32 %321, -737384934
  %sub24alteredBB = sub nsw i32 %303, 1
  store i32 %322, i32* %j, align 4
  store i32 2132247443, i32* %switchVar
  br label %loopEnd

originalBB105alteredBB:                           ; preds = %loopEntry
  %323 = load i32, i32* %j, align 4
  %324 = sub i32 0, 1
  %325 = add i32 %323, %324
  %_106 = sub i32 %323, 1
  %gen107 = mul i32 %325, 1
  %326 = add i32 %323, 780615827
  %327 = add i32 %326, 1
  %328 = sub i32 %327, 780615827
  %inc57alteredBB = add nsw i32 %323, 1
  store i32 %328, i32* %j, align 4
  store i32 711752986, i32* %switchVar
  br label %loopEnd

originalBB111alteredBB:                           ; preds = %loopEntry
  %329 = load i32, i32* %start, align 4
  store i32 %329, i32* %j, align 4
  store i32 1112056138, i32* %switchVar
  br label %loopEnd

loopEnd:                                          ; preds = %originalBB111alteredBB, %originalBB105alteredBB, %originalBB93alteredBB, %originalBBalteredBB, %for.inc70, %for.end67, %for.inc65, %for.body61, %for.cond59, %originalBBpart2113, %originalBB111, %for.end58, %originalBBpart2109, %originalBB105, %for.inc56, %if.end55, %if.then54, %for.body51, %for.cond49, %for.end48, %for.inc46, %if.end, %if.then, %for.body27, %for.cond25, %originalBBpart2103, %originalBB93, %for.end, %for.inc, %originalBBpart2, %originalBB, %for.body13, %for.cond11, %for.body, %for.cond, %switchDefault
  br label %loopEntry
}

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"*, i32* dereferenceable(4)) #1

declare i32 @_ZNSi3getEv(%"class.std::basic_istream"*) #1

declare dereferenceable(280) %"class.std::basic_istream"* @_ZNSi7getlineEPcl(%"class.std::basic_istream"*, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"*, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dereferenceable(272) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* dereferenceable(272)) #1

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_1191.cpp() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
