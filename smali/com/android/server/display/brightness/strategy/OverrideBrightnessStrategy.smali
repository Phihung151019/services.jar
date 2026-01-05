.class public final Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mWindowManagerBrightnessOverride:F

.field public mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "OverrideBrightnessStrategy:"

    const-string v1, "  mWindowManagerBrightnessOverride="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    const-string v2, "  mWindowManagerBrightnessOverrideTag="

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "OverrideBrightnessStrategy"

    return-object p0
.end method

.method public final getReason()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3

    iget-object p1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    iget-object p0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverrideTag:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    iget-object p0, p0, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverrideTag:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/server/display/brightness/BrightnessReason;->mTag:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p0

    iput p0, v0, Lcom/android/server/display/brightness/BrightnessReason;->startBrightness:I

    iget-object p0, v0, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    new-instance p0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iput v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const-string/jumbo p1, "OverrideBrightnessStrategy"

    iput-object p1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    new-instance p1, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p1
.end method
