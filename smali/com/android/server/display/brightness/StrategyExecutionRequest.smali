.class public final Lcom/android/server/display/brightness/StrategyExecutionRequest;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCurrentRampScreenBrightnessValue:F

.field public final mCurrentScreenBrightness:F

.field public final mDarkeningRateRatio:F

.field public final mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public final mIsStylusBeingUsed:Z

.field public final mUserSetBrightnessChanged:Z


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZZFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iput p2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    iput-boolean p3, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    iput-boolean p4, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    iput p5, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentRampScreenBrightnessValue:F

    iput p6, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDarkeningRateRatio:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    iget v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentRampScreenBrightnessValue:F

    iget v1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentRampScreenBrightnessValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDarkeningRateRatio:F

    iget p1, p1, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDarkeningRateRatio:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDisplayPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentScreenBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mUserSetBrightnessChanged:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mIsStylusBeingUsed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mCurrentRampScreenBrightnessValue:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget p0, p0, Lcom/android/server/display/brightness/StrategyExecutionRequest;->mDarkeningRateRatio:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
