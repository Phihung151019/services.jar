.class public final Lcom/android/server/display/brightness/clamper/SecBrightnessLowPowerModeModifier;
.super Lcom/android/server/display/brightness/clamper/BrightnessModifier;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDisplayStateSupplier:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

.field public mTemporaryDisplayBrightnessStateBuilder:Lcom/android/server/display/DisplayBrightnessState$Builder;


# virtual methods
.method public final apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 0

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/SecBrightnessLowPowerModeModifier;->mTemporaryDisplayBrightnessStateBuilder:Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-super {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "BrightnessLowPowerModeModifier:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p1, "BrightnessModifier:"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "  mApplied="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessModifier;->mApplied:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBrightnessAdjusted(FLandroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)F
    .locals 0

    iget p0, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    mul-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public final getModifier()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final setAmbientLux(F)V
    .locals 0

    return-void
.end method

.method public final shouldApply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 0

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/SecBrightnessLowPowerModeModifier;->mDisplayStateSupplier:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;

    iget-object p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget p1, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayState:I

    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/SecBrightnessLowPowerModeModifier;->mTemporaryDisplayBrightnessStateBuilder:Lcom/android/server/display/DisplayBrightnessState$Builder;

    iget-object p0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/16 p1, 0xe

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldListenToLightSensor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
