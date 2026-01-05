.class public Lcom/android/server/display/BrightnessRangeController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public final mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

.field public final mModeChangeCallback:Ljava/lang/Runnable;

.field public final mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

.field public final mUseHdrClamper:Z


# direct methods
.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iput-object p2, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    iput-object p4, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    iget-object p1, p6, Lcom/android/server/display/feature/DisplayManagerFlags;->mNewHdrBrightnessModifier:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    iget-object p1, p3, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    iput-object p1, p4, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    invoke-virtual {p0, p8, p7, p3}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public final getCurrentBrightnessMax()F
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    iget p0, p0, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final getHdrBrightnessValue()F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result p0

    return p0
.end method

.method public final getHdrTransitionRate()F
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mTransitionRate:F

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mUseSlowTransition:Z

    :cond_1
    return v1
.end method

.method public final onAmbientLuxChange(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    iput p1, v0, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iput p1, v1, Lcom/android/server/display/HighBrightnessModeController;->mAmbientLux:F

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v2, v2, Lcom/android/server/display/config/HighBrightnessModeData;->minimumLux:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    if-eq v2, v3, :cond_2

    iput-boolean v2, v1, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    iput p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    :cond_4
    return-void
.end method

.method public final onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(IFF)V

    return-void
.end method

.method public final setAutoBrightnessEnabled(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-boolean v4, v0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    if-eq v3, v4, :cond_1

    iput-boolean v3, v0, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    invoke-virtual {v0}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    const/4 v5, 0x3

    if-ne p1, v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iput-boolean v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessOffByState:Z

    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    if-ne v4, v5, :cond_4

    goto :goto_4

    :cond_4
    sget-boolean v5, Lcom/android/server/display/HighBrightnessModeController;->DEBUG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setAutoBrightnessEnabled( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "HighBrightnessModeController"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v4, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsAutoBrightnessEnabled:Z

    iput-boolean v2, v3, Lcom/android/server/display/HighBrightnessModeController;->mIsInAllowedAmbientRange:Z

    invoke-virtual {v3}, Lcom/android/server/display/HighBrightnessModeController;->recalculateTimeAllowance()V

    :cond_6
    :goto_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_7
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v2

    :goto_5
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    if-eq v1, p1, :cond_9

    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAutoBrightnessEnabled:Z

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    :cond_9
    return-void
.end method

.method public final updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/BrightnessRangeController;->mUseHdrClamper:Z

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    if-nez v0, :cond_2

    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_2
    iget v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    :goto_0
    iget-object p3, p3, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    iget v2, p1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHdrClamper:Lcom/android/server/display/brightness/clamper/HdrClamper;

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    mul-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrListener:Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;

    iput p1, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    if-eq p2, p1, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControlHdrLayerInfoListener;->unregister(Landroid/os/IBinder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    iput-object v1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    :cond_3
    if-eqz p2, :cond_4

    iget p1, v0, Lcom/android/server/display/brightness/clamper/HdrClamper$HdrLayerInfoListener;->mHdrMinPixels:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/server/display/config/HdrBrightnessData;->maxBrightnessLimits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControlHdrLayerInfoListener;->register(Landroid/os/IBinder;)V

    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mRegisteredDisplayToken:Landroid/os/IBinder;

    :cond_4
    iget p1, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mAmbientLux:F

    iget-boolean p2, p0, Lcom/android/server/display/brightness/clamper/HdrClamper;->mHdrVisible:Z

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/display/brightness/clamper/HdrClamper;->recalculateBrightnessCap(Lcom/android/server/display/config/HdrBrightnessData;FZ)V

    :cond_5
    return-void
.end method
