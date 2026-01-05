.class public final Lcom/android/server/display/brightness/strategy/FallbackBrightnessStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "FallbackBrightnessStrategy"

    return-object p0
.end method

.method public final getReason()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final strategySelectionPostProcessor(Lcom/android/server/display/brightness/StrategySelectionNotifyRequest;)V
    .locals 0

    return-void
.end method

.method public final updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 3

    new-instance p0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {p0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    const/4 v0, 0x1

    iget v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    iget-boolean v2, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setModifier(I)V

    :cond_0
    new-instance v2, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v2}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iput v1, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput-object p0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const-string p0, "FallbackBrightnessStrategy"

    iput-object p0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iput-boolean v0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    iget-boolean p0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    iput-boolean p0, v2, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    new-instance p0, Lcom/android/server/display/DisplayBrightnessState;

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayBrightnessState;-><init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V

    return-object p0
.end method
