; ModuleID = 'source-C-CXX/39/590.c'
source_filename = "source-C-CXX/39/590.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%lf\0A%lf\0A%lf\0A%lf\0A%lf\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid input\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.4lf\0A\00", align 1
@x = common global i32 0
@y = common global i32 0

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %.reg2mem = alloca double
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  %d = alloca double, align 8
  %e = alloca double, align 8
  %s = alloca double, align 8
  %S = alloca double, align 8
  %p = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 0x400921FB4D12D84A, double* %p, align 8
  %call = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), double* %a, double* %b, double* %c, double* %d, double* %e)
  %0 = load double, double* %a, align 8
  %1 = load double, double* %b, align 8
  %add = fadd double %0, %1
  %2 = load double, double* %c, align 8
  %add1 = fadd double %add, %2
  %3 = load double, double* %d, align 8
  %add2 = fadd double %add1, %3
  %mul = fmul double 5.000000e-01, %add2
  store double %mul, double* %s, align 8
  %4 = load double, double* %s, align 8
  %5 = load double, double* %a, align 8
  %sub = fsub double %4, %5
  %6 = load double, double* %s, align 8
  %7 = load double, double* %b, align 8
  %sub3 = fsub double %6, %7
  %mul4 = fmul double %sub, %sub3
  %8 = load double, double* %s, align 8
  %9 = load double, double* %c, align 8
  %sub5 = fsub double %8, %9
  %mul6 = fmul double %mul4, %sub5
  %10 = load double, double* %s, align 8
  %11 = load double, double* %d, align 8
  %sub7 = fsub double %10, %11
  %mul8 = fmul double %mul6, %sub7
  %12 = load double, double* %a, align 8
  %13 = load double, double* %b, align 8
  %mul9 = fmul double %12, %13
  %14 = load double, double* %c, align 8
  %mul10 = fmul double %mul9, %14
  %15 = load double, double* %d, align 8
  %mul11 = fmul double %mul10, %15
  %16 = load double, double* %e, align 8
  %div = fdiv double %16, 3.600000e+02
  %17 = load double, double* %p, align 8
  %mul12 = fmul double %div, %17
  %call13 = call double @cos(double %mul12) #3
  %mul14 = fmul double %mul11, %call13
  %18 = load double, double* %e, align 8
  %div15 = fdiv double %18, 3.600000e+02
  %19 = load double, double* %p, align 8
  %mul16 = fmul double %div15, %19
  %call17 = call double @cos(double %mul16) #3
  %mul18 = fmul double %mul14, %call17
  %sub19 = fsub double %mul8, %mul18
  %call20 = call double @sqrt(double %sub19) #3
  store double %call20, double* %S, align 8
  %20 = load double, double* %s, align 8
  %21 = load double, double* %a, align 8
  %sub21 = fsub double %20, %21
  %22 = load double, double* %s, align 8
  %23 = load double, double* %b, align 8
  %sub22 = fsub double %22, %23
  %mul23 = fmul double %sub21, %sub22
  %24 = load double, double* %s, align 8
  %25 = load double, double* %c, align 8
  %sub24 = fsub double %24, %25
  %mul25 = fmul double %mul23, %sub24
  %26 = load double, double* %s, align 8
  %27 = load double, double* %d, align 8
  %sub26 = fsub double %26, %27
  %mul27 = fmul double %mul25, %sub26
  %28 = load double, double* %a, align 8
  %29 = load double, double* %b, align 8
  %mul28 = fmul double %28, %29
  %30 = load double, double* %c, align 8
  %mul29 = fmul double %mul28, %30
  %31 = load double, double* %d, align 8
  %mul30 = fmul double %mul29, %31
  %32 = load double, double* %e, align 8
  %div31 = fdiv double %32, 3.600000e+02
  %33 = load double, double* %p, align 8
  %mul32 = fmul double %div31, %33
  %call33 = call double @cos(double %mul32) #3
  %mul34 = fmul double %mul30, %call33
  %34 = load double, double* %e, align 8
  %div35 = fdiv double %34, 3.600000e+02
  %35 = load double, double* %p, align 8
  %mul36 = fmul double %div35, %35
  %call37 = call double @cos(double %mul36) #3
  %mul38 = fmul double %mul34, %call37
  %sub39 = fsub double %mul27, %mul38
  store double %sub39, double* %t, align 8
  %36 = load double, double* %t, align 8
  store double %36, double* %.reg2mem
  %switchVar = alloca i32
  store i32 2011577032, i32* %switchVar
  br label %loopEntry

loopEntry:                                        ; preds = %entry, %loopEnd
  %switchVar42 = load i32, i32* %switchVar
  switch i32 %switchVar42, label %switchDefault [
    i32 2011577032, label %first
    i32 542627441, label %if.then
    i32 -37371353, label %if.else
    i32 1057438643, label %if.end
  ]

switchDefault:                                    ; preds = %loopEntry
  br label %loopEnd

first:                                            ; preds = %loopEntry
  %.reload = load volatile double, double* %.reg2mem
  %cmp = fcmp olt double %.reload, 0.000000e+00
  %37 = select i1 %cmp, i32 542627441, i32 -37371353
  store i32 %37, i32* %switchVar
  br label %loopEnd

if.then:                                          ; preds = %loopEntry
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i32 1057438643, i32* %switchVar
  br label %loopEnd

if.else:                                          ; preds = %loopEntry
  %38 = load double, double* %S, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), double %38)
  store i32 1057438643, i32* %switchVar
  br label %loopEnd

if.end:                                           ; preds = %loopEntry
  ret i32 0

loopEnd:                                          ; preds = %if.else, %if.then, %first, %switchDefault
  br label %loopEntry
}

declare i32 @__isoc99_scanf(i8*, ...) #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind
declare double @cos(double) #2

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
