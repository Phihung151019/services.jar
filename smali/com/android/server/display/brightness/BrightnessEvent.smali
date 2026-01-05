.class public final Lcom/android/server/display/brightness/BrightnessEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public mAdjustmentFlags:I

.field public mAutoBrightnessMode:I

.field public mAutomaticBrightnessEnabled:Z

.field public mBrightness:F

.field public mDisplayBrightnessStrategyName:Ljava/lang/String;

.field public mDisplayId:I

.field public mDisplayPolicy:I

.field public mDisplayState:I

.field public mDisplayStateReason:I

.field public mFlags:I

.field public mHbmMax:F

.field public mHbmMode:I

.field public mInitialBrightness:F

.field public mLux:F

.field public mNits:F

.field public mPercent:F

.field public mPhysicalDisplayId:Ljava/lang/String;

.field public mPhysicalDisplayName:Ljava/lang/String;

.field public mPowerFactor:F

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mRampSpeed:F

.field public mRbcStrength:I

.field public mReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public mRecommendedBrightness:F

.field public mSlowChange:Z

.field public mThermalMax:F

.field public mTime:J

.field public mUnclampedBrightness:F

.field public mWasShortTermModelActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    return-void
.end method


# virtual methods
.method public final copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    iget-object v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iget-wide v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iget-object v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iget-boolean v0, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    iput-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public final equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    iget v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iget p1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public flagsToString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x8

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string/jumbo v1, "user_set "

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "rbc "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const-string/jumbo v1, "invalid_lux "

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const-string/jumbo v1, "doze_scale "

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    const-string/jumbo v1, "low_power_mode "

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_5

    const-string/jumbo v2, "even_dimmer "

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    return p0
.end method

.method public final reset()V
    .locals 4

    new-instance v0, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v0}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    iput v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iput-object v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    iput-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    iput v3, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public final setAdjustmentFlags(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    return-void
.end method

.method public final setAutomaticBrightnessEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    return-void
.end method

.method public final setBrightness(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    return-void
.end method

.method public final setDisplayBrightnessStrategyName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayPolicy(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    return-void
.end method

.method public final setDisplayState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    return-void
.end method

.method public final setDisplayStateReason(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    return-void
.end method

.method public final setHbmMax(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    return-void
.end method

.method public final setHbmMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    return-void
.end method

.method public final setInitialBrightness(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    return-void
.end method

.method public final setNits(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    return-void
.end method

.method public final setPercent(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    return-void
.end method

.method public final setPhysicalDisplayId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    return-void
.end method

.method public final setPhysicalDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    return-void
.end method

.method public final setPowerFactor(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    return-void
.end method

.method public final setRampSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    return-void
.end method

.method public final setRbcStrength()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    return-void
.end method

.method public final setReason(Lcom/android/server/display/brightness/BrightnessReason;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    return-void
.end method

.method public final setSlowChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    return-void
.end method

.method public final setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    return-void
.end method

.method public final setUnclampedBrightness(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    return-void
.end method

.method public final setWasShortTermModelActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/display/brightness/BrightnessEvent;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "BrightnessEvent: brt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    const-string v1, "(user_set)"

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%), nits= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mNits:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", lux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAdjustmentFlags:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", strat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stateReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayStateReason:I

    invoke-static {v1}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/BrightnessEvent;->flagsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", initBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rcmdBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", preBrt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", preLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", wasShortTermModelActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", autoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), unclampedBrt="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mUnclampedBrightness:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", hbmMode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    invoke-static {p1}, Landroid/hardware/display/BrightnessInfo;->hbmToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", thrmMax="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", rbcStrength="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", powerFactor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", physDisp="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), logicalId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mDisplayId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slowChange="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mSlowChange:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", rampSpeed="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessEvent;->mRampSpeed:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
