.class public final Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# instance fields
.field public mLastTargetBrightness:F


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "LastTargetBrightnessStrategy:"

    const-string v1, "  mLastTargetBrightness="

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;->mLastTargetBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "LastTargetBrightnessStrategy"

    return-object p0
.end method

.method public final getReason()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;->mLastTargetBrightness:F

    invoke-virtual {v0, v2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    new-instance v1, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iget p0, p0, Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;->mLastTargetBrightness:F

    iput p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput-object v0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const-string p0, "LastTargetBrightnessStrategy"

    iput-object p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    iget-boolean p0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    iput-boolean p0, v1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p0
.end method
