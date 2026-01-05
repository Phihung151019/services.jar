.class public final Lcom/android/server/display/brightness/StrategySelectionRequest;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mDualScreenPolicy:I

.field public mIsStylusBeingUsed:Z

.field public mIsWearBedtimeModeEnabled:Z

.field public mLastUserSetScreenBrightness:F

.field public mResetAutoBrightnessConfigurationRequested:Z

.field public mTargetDisplayState:I

.field public mUserSetBrightnessChanged:Z

.field public mWaitingDozeBrightness:Z


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategySelectionRequest;

    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    iget v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    iget v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    iget-object v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsWearBedtimeModeEnabled:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mResetAutoBrightnessConfigurationRequested:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mResetAutoBrightnessConfigurationRequested:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDualScreenPolicy:I

    iget v1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDualScreenPolicy:I

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mWaitingDozeBrightness:Z

    iget-boolean p1, p1, Lcom/android/server/display/brightness/StrategySelectionRequest;->mWaitingDozeBrightness:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 9

    iget-object v0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mTargetDisplayState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mLastUserSetScreenBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mUserSetBrightnessChanged:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    iget-boolean v5, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mIsStylusBeingUsed:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mResetAutoBrightnessConfigurationRequested:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget v7, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mDualScreenPolicy:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean p0, p0, Lcom/android/server/display/brightness/StrategySelectionRequest;->mWaitingDozeBrightness:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
