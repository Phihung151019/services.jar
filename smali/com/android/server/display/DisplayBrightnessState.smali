.class public final Lcom/android/server/display/DisplayBrightnessState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mBrightness:F

.field public final mBrightnessAdjustmentFlag:I

.field public final mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public final mBrightnessMaxReason:I

.field public final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mCustomAnimationRate:F

.field public final mCustomHbmAnimationRate:F

.field public final mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public final mIsSlowChange:Z

.field public final mIsUserInitiatedChange:Z

.field public final mMaxBrightness:F

.field public final mMinBrightness:F

.field public final mShouldUpdateScreenBrightnessSetting:Z

.field public final mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    iget-object v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    iget-object v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    iget-boolean v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    iget p1, p1, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomHbmAnimationRate:F

    iput p1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/server/display/DisplayBrightnessState;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/android/server/display/DisplayBrightnessState;

    iget v0, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    iget-boolean v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    iget-boolean v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    iget v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    iget v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    iget v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    iget-boolean v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    iget v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    iget-boolean v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    iget v1, p1, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    iget p1, p1, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getBrightnessAdjustmentFlag()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    return p0
.end method

.method public final getCustomHbmAnimationRate()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    return p0
.end method

.method public final hashCode()I
    .locals 15

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v3, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v10, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isUserInitiatedChange()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    return p0
.end method

.method public final shouldUpdateScreenBrightnessSetting()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayBrightnessState:\n    brightness:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    hdrBrightness:-1.0\n    brightnessReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n    shouldUseAutoBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    isSlowChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    maxBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    minBrightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    customAnimationRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n    shouldUpdateScreenBrightnessSetting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mBrightnessEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mBrightnessAdjustmentFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n    mIsUserInitiatedChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n    mBrightnessMaxReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    invoke-static {v1}, Landroid/hardware/display/BrightnessInfo;->briMaxReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n    mCustomHbmAnimationRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
