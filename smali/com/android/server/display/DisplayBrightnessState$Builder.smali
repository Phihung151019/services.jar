.class public final Lcom/android/server/display/DisplayBrightnessState$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBrightness:F

.field public mBrightnessAdjustmentFlag:I

.field public mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mBrightnessMaxReason:I

.field public mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mCustomAnimationRate:F

.field public mCustomHbmAnimationRate:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mIsSlowChange:Z

.field public mIsUserInitiatedChange:Z

.field public mMaxBrightness:F

.field public mMinBrightness:F

.field public mShouldUpdateScreenBrightnessSetting:Z

.field public mShouldUseAutoBrightness:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    iput v1, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    iput v0, p0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomHbmAnimationRate:F

    return-void
.end method

.method public static from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;
    .locals 2

    new-instance v0, Lcom/android/server/display/DisplayBrightnessState$Builder;

    invoke-direct {v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;-><init>()V

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    iput v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightness:F

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iput-object v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUseAutoBrightness:Z

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsSlowChange:Z

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    iput v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMaxBrightness:F

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    iput v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mMinBrightness:F

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    iput v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomAnimationRate:F

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mShouldUpdateScreenBrightnessSetting:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mShouldUpdateScreenBrightnessSetting:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iput-object v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessAdjustmentFlag:I

    iput v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessAdjustmentFlag:I

    iget-boolean v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mIsUserInitiatedChange:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mIsUserInitiatedChange:Z

    iget v1, p0, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    iput v1, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mBrightnessMaxReason:I

    iget p0, p0, Lcom/android/server/display/DisplayBrightnessState;->mCustomHbmAnimationRate:F

    iput p0, v0, Lcom/android/server/display/DisplayBrightnessState$Builder;->mCustomHbmAnimationRate:F

    return-object v0
.end method
