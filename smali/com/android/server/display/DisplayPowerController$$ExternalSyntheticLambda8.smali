.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/DisplayPowerController;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Lcom/android/server/display/HighBrightnessModeMetadata;

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:Z

.field public final synthetic f$14:Ljava/lang/String;

.field public final synthetic f$15:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/android/server/display/DisplayDevice;

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Lcom/android/server/display/DisplayDeviceConfig;

.field public final synthetic f$8:Landroid/os/IBinder;

.field public final synthetic f$9:Lcom/android/server/display/DisplayDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;ZZILcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/DisplayPowerController;

    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$1:Z

    iput-boolean p3, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$2:Z

    iput p4, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$3:I

    iput-object p5, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/display/DisplayDevice;

    iput-object p6, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$7:Lcom/android/server/display/DisplayDeviceConfig;

    iput-object p9, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$8:Landroid/os/IBinder;

    iput-object p10, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$9:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object p11, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$10:Lcom/android/server/display/HighBrightnessModeMetadata;

    iput p12, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$11:I

    iput p13, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$12:I

    iput-boolean p14, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$13:Z

    iput-object p15, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$14:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$15:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/display/DisplayPowerController;

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$1:Z

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$2:Z

    iget v4, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$3:I

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$4:Lcom/android/server/display/DisplayDevice;

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$5:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$6:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$7:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$8:Landroid/os/IBinder;

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$9:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$10:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget v12, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$11:I

    iget v13, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$12:I

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$13:Z

    iget-object v15, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$14:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;->f$15:Ljava/lang/String;

    move-object/from16 p0, v0

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    move-object/from16 v16, v11

    const/4 v11, 0x1

    if-ne v0, v2, :cond_2

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    move v0, v11

    :goto_1
    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    if-eq v2, v4, :cond_5

    iput v4, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    iput v4, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    if-nez v4, :cond_3

    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    move v0, v11

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    if-nez v4, :cond_4

    move v0, v11

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    iput-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicyChanged:Z

    move v0, v11

    :cond_5
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v4, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    if-eq v2, v5, :cond_a

    iput-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iput-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v0, v10, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    int-to-long v5, v0

    iput-wide v5, v1, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    iget v0, v10, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    iget-object v6, v4, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    iput-object v5, v6, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/android/server/display/NormalBrightnessModeController;->recalculateMaxBrightness()Z

    move-result v5

    move v6, v11

    iget-object v11, v4, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iput-object v9, v11, Lcom/android/server/display/HighBrightnessModeController;->mHighBrightnessModeMetadata:Lcom/android/server/display/HighBrightnessModeMetadata;

    iget v12, v8, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v13, v8, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    move-object v9, v15

    iget-object v15, v8, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_6

    iget-boolean v6, v0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v6, :cond_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    new-instance v6, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v2}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v17, v6

    move-object/from16 v18, v9

    move v9, v14

    move-object/from16 v14, v16

    const/4 v6, 0x0

    move-object/from16 v16, v0

    const/4 v0, 0x1

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    move-object v11, v14

    if-eqz v5, :cond_8

    iget-object v5, v4, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_8
    invoke-virtual {v4, v8, v11, v2}, Lcom/android/server/display/BrightnessRangeController;->updateHdrClamper(Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    iput-object v10, v3, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iput v6, v2, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    iput-boolean v6, v2, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_STATE_CONCURRENCY:Z

    if-eqz v3, :cond_9

    iget v3, v2, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    if-nez v3, :cond_9

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    new-instance v3, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {v3, v2}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v3, v2, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_9
    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    if-eqz v2, :cond_c

    iput-boolean v0, v2, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    iput-boolean v6, v2, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    iput-boolean v0, v2, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    goto :goto_4

    :cond_a
    move v9, v14

    move-object/from16 v18, v15

    move-object/from16 v11, v16

    const/4 v6, 0x0

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-nez v2, :cond_c

    iget-object v2, v4, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v3, v2, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    if-ne v3, v12, :cond_b

    iget v3, v2, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    if-eq v3, v13, :cond_c

    :cond_b
    iput v12, v2, Lcom/android/server/display/HighBrightnessModeController;->mWidth:I

    iput v13, v2, Lcom/android/server/display/HighBrightnessModeController;->mHeight:I

    :cond_c
    :goto_4
    iput-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    move/from16 v17, v6

    new-instance v6, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget v2, v8, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move-object/from16 v9, p0

    move-object/from16 v8, v18

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;I)V

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v10, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    iget-object v4, v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mLightSensorController:Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v12, :cond_d

    const/4 v11, 0x5

    goto :goto_5

    :cond_d
    move/from16 v11, v17

    :goto_5
    iget-object v5, v4, Lcom/android/server/display/brightness/clamper/LightSensorController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, v4, Lcom/android/server/display/brightness/clamper/LightSensorController;->mInjector:Lcom/android/server/display/brightness/clamper/LightSensorController$Injector;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_6

    :cond_e
    iget-object v7, v3, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-static {v5, v7, v3, v11}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v3

    :goto_6
    iput-object v3, v4, Lcom/android/server/display/brightness/clamper/LightSensorController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v3, v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mDisplayDeviceDataListeners:Ljava/util/List;

    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v6}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->adjustLightSensorSubscription()V

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDisplayChanged: mIsEnabled="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsInTransition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDualScreenPolicy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayDevice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    :cond_f
    :goto_7
    return-void
.end method
