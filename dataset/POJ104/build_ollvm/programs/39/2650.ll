; ModuleID = 'source-C-CXX/39/2650.c'
source_filename = "source-C-CXX/39/2650.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%lf%lf%lf%lf%lf\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Invalid input\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.4lf\00", align 1
@x = common global i32 0
@y = common global i32 0

; Function Attrs: noinline nounwind uwtable
define void @main() #0 {
entry:
  %sub17.reg2mem = alloca double
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %m = alloca double, align 8
  %s = alloca double, align 8
  %S = alloca double, align 8
  %n = alloca double, align 8
  %res = alloca double, align 8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), double* %a, double* %b, double* %c, double* %d, double* %m)
  %0 = load double, double* %a, align 8
  %1 = load double, double* %b, align 8
  %add = fadd double %0, %1
  %2 = load double, double* %c, align 8
  %add1 = fadd double %add, %2
  %3 = load double, double* %d, align 8
  %add2 = fadd double %add1, %3
  %div = fdiv double %add2, 2.000000e+00
  store double %div, double* %s, align 8
  %4 = load double, double* %m, align 8
  %div3 = fdiv double %4, 2.000000e+00
  store double %div3, double* %n, align 8
  %5 = load double, double* %n, align 8
  %div4 = fdiv double %5, 1.800000e+02
  %mul = fmul double %div4, 1.000000e+02
  %call5 = call double @cos(double %mul) #3
  store double %call5, double* %res, align 8
  %6 = load double, double* %s, align 8
  %7 = load double, double* %a, align 8
  %sub = fsub double %6, %7
  %8 = load double, double* %s, align 8
  %9 = load double, double* %b, align 8
  %sub6 = fsub double %8, %9
  %mul7 = fmul double %sub, %sub6
  %10 = load double, double* %s, align 8
  %11 = load double, double* %c, align 8
  %sub8 = fsub double %10, %11
  %mul9 = fmul double %mul7, %sub8
  %12 = load double, double* %s, align 8
  %13 = load double, double* %d, align 8
  %sub10 = fsub double %12, %13
  %mul11 = fmul double %mul9, %sub10
  %14 = load double, double* %a, align 8
  %15 = load double, double* %b, align 8
  %mul12 = fmul double %14, %15
  %16 = load double, double* %c, align 8
  %mul13 = fmul double %mul12, %16
  %17 = load double, double* %d, align 8
  %mul14 = fmul double %mul13, %17
  %18 = load double, double* %res, align 8
  %mul15 = fmul double %mul14, %18
  %19 = load double, double* %res, align 8
  %mul16 = fmul double %mul15, %19
  %sub17 = fsub double %mul11, %mul16
  store double %sub17, double* %sub17.reg2mem
  %switchVar = alloca i32
  store i32 -119414871, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar34 = load i32, i32* %switchVar
  switch i32 %switchVar34, label %switchDefault [
    i32 -119414871, label %first
    i32 -1944444722, label %if.then
    i32 -1985005445, label %if.else
    i32 8385251, label %if.end
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

first:                                            ; preds = %loopEntry
  %sub17.reload = load volatile double, double* %sub17.reg2mem
  %cmp = fcmp olt double %sub17.reload, 0.000000e+00
  %20 = select i1 %cmp, i32 -1944444722, i32 -1985005445
  store i32 %20, i32* %switchVar
  br label %loopEnd

if.then:                                          ; preds = %loopEntry
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store i32 8385251, i32* %switchVar
  br label %loopEnd

if.else:                                          ; preds = %loopEntry
  %21 = load double, double* %s, align 8
  %22 = load double, double* %a, align 8
  %sub19 = fsub double %21, %22
  %23 = load double, double* %s, align 8
  %24 = load double, double* %b, align 8
  %sub20 = fsub double %23, %24
  %mul21 = fmul double %sub19, %sub20
  %25 = load double, double* %s, align 8
  %26 = load double, double* %c, align 8
  %sub22 = fsub double %25, %26
  %mul23 = fmul double %mul21, %sub22
  %27 = load double, double* %s, align 8
  %28 = load double, double* %d, align 8
  %sub24 = fsub double %27, %28
  %mul25 = fmul double %mul23, %sub24
  %29 = load double, double* %a, align 8
  %30 = load double, double* %b, align 8
  %mul26 = fmul double %29, %30
  %31 = load double, double* %c, align 8
  %mul27 = fmul double %mul26, %31
  %32 = load double, double* %d, align 8
  %mul28 = fmul double %mul27, %32
  %33 = load double, double* %res, align 8
  %mul29 = fmul double %mul28, %33
  %34 = load double, double* %res, align 8
  %mul30 = fmul double %mul29, %34
  %sub31 = fsub double %mul25, %mul30
  %call32 = call double @sqrt(double %sub31) #3
  store double %call32, double* %S, align 8
  %35 = load double, double* %S, align 8
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), double %35)
  store i32 8385251, i32* %switchVar
  br label %loopEnd

if.end:                                           ; preds = %loopEntry
  ret void

loopEnd:                                          ; preds = %if.else, %if.then, %first, %switchDefault
  br label %loopEntry
}

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare double @cos(double) #2

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
