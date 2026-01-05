.class public Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAmbientBrighteningThreshold:F

.field public final mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsIdle:Lcom/android/server/display/config/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

.field public final mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientDarkeningThreshold:F

.field public final mAmbientLightHorizonLong:I

.field public final mAmbientLightHorizonShort:I

.field public final mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field public mAmbientLux:F

.field public mAmbientLuxValid:Z

.field public final mBrighteningLightDebounceConfig:J

.field public final mBrighteningLightDebounceConfigIdle:J

.field public mBrightnessAdjustmentSampleOldBrightness:F

.field public mBrightnessAdjustmentSampleOldLux:F

.field public mBrightnessAdjustmentSamplePending:Z

.field public final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public final mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field public mBrightnessThresoldsType:I

.field public final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field public final mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mCurrentLightSensorRate:I

.field public final mDarkeningLightDebounceConfig:J

.field public final mDarkeningLightDebounceConfigIdle:J

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mDisplayPolicy:I

.field public final mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field public mDisplayState:I

.field public final mDozeScaleFactor:F

.field public mDualScreenPolicy:I

.field public mFastAmbientLux:F

.field public mForceUpdateBrightness:Z

.field public mForegroundAppCategory:I

.field public mForegroundAppPackageName:Ljava/lang/String;

.field public final mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field public final mInitialLightSensorRate:I

.field public mInjectedLuxEvent:Landroid/hardware/SensorEvent;

.field public final mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

.field public mIsBrightnessThrottled:Z

.field public final mIsCameraLightTypeSupported:Z

.field public mIsLightSensorPositionUpdated:Z

.field public mIsRearLightSensor:Z

.field public final mIsUnderDisplayLightSensor:Z

.field public mLastAmbientLuxOfFrontLightSensor:F

.field public mLastHBM:Z

.field public mLastObservedLux:F

.field public mLastObservedLuxTime:J

.field public mLastRealLuxEventDuringInjection:Landroid/hardware/SensorEvent;

.field public mLastSentAmbientLux:F

.field public mLastSentDisplayId:I

.field public final mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorCct:Landroid/hardware/Sensor;

.field public mLightSensorEnableTime:J

.field public mLightSensorEnabled:Z

.field public final mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

.field public mLightSensorPositionUpdatedTime:J

.field public final mLightSensorWarmUpTimeConfig:I

.field public mLoggedAmbientLux:F

.field public mLoggingEnabled:Z

.field public mMinLuxUpdated:Z

.field public mNonInteractiveTime:J

.field public final mNormalLightSensorRate:I

.field public final mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$1;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

.field public mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

.field public mPendingForegroundAppCategory:I

.field public mPendingForegroundAppPackageName:Ljava/lang/String;

.field public mPendingProximity:I

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPreThresholdBrightness:F

.field public mPreThresholdLux:F

.field public mProximity:I

.field public final mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

.field public final mProximityThreshold:F

.field public mRawScreenAutoBrightness:F

.field public mRecentLightSamples:I

.field public final mResetAmbientLuxAfterWarmUpConfig:Z

.field public mScreenAutoBrightness:F

.field public final mScreenBrightnessRangeMaximum:F

.field public final mScreenBrightnessRangeMinimum:F

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSetScreenBrightnessByUserTime:J

.field public final mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

.field public mShouldApplyEarlyWakeUp:Z

.field public mSlowAmbientLux:F

.field public mState:I

.field public final mUseLightSensorBlockingPrevention:Z

.field public mUseNormalBrightnessForDoze:Z

.field public final mWeightingIntercept:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Ljava/util/List;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/AutomaticBrightnessController$Injector;",
            "Lcom/android/server/display/AutomaticBrightnessController$Callbacks;",
            "Landroid/os/Looper;",
            "Landroid/hardware/SensorManager;",
            "Landroid/hardware/Sensor;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/BrightnessMappingStrategy;",
            ">;IFFFIIJJJJZ",
            "Lcom/android/server/display/config/HysteresisLevels;",
            "Lcom/android/server/display/config/HysteresisLevels;",
            "Lcom/android/server/display/config/HysteresisLevels;",
            "Lcom/android/server/display/config/HysteresisLevels;",
            "Landroid/content/Context;",
            "Lcom/android/server/display/BrightnessRangeController;",
            "Lcom/android/server/display/brightness/clamper/BrightnessClamperController;",
            "IIFF",
            "Lcom/android/server/display/feature/DisplayManagerFlags;",
            "Lcom/android/server/display/config/HysteresisLevels;",
            "Lcom/android/server/display/config/HysteresisLevels;",
            "Ljava/util/List<",
            "Lcom/android/server/display/BrightnessMappingStrategy$UserPoint;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p11

    move-object/from16 v5, p26

    move/from16 v6, p30

    move/from16 v7, p32

    move-object/from16 v8, p36

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    const/high16 v10, 0x43fa0000    # 500.0f

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    const/high16 v10, 0x7fc00000    # Float.NaN

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    iput v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    iput v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    const/4 v10, 0x2

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentDisplayId:I

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    iput-boolean v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    sget-object v12, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    iput-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    new-instance v12, Lcom/android/server/display/AutomaticBrightnessController$1;

    const/4 v13, 0x1

    invoke-direct {v12, p0, v13}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;I)V

    iput-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$1;

    new-instance v12, Lcom/android/server/display/AutomaticBrightnessController$3;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;I)V

    iput-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

    new-instance v12, Lcom/android/server/display/AutomaticBrightnessController$3;

    const/4 v13, 0x1

    invoke-direct {v12, p0, v13}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;I)V

    iput-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

    move-object/from16 v12, p1

    iput-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInjector:Lcom/android/server/display/AutomaticBrightnessController$Injector;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v12, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    iput-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v13, p2

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v13, p8

    iput v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:F

    move/from16 v13, p9

    iput v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:F

    move/from16 v13, p7

    iput v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    move/from16 v13, p10

    iput v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    iput v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    move/from16 v13, p12

    iput v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const-wide/16 v13, 0x3e8

    iput-wide v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    const-wide/16 v13, 0x7d0

    iput-wide v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    move-wide/from16 v13, p17

    iput-wide v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfigIdle:J

    move-wide/from16 v13, p19

    iput-wide v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfigIdle:J

    move/from16 v13, p21

    iput-boolean v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    move/from16 v13, p29

    iput v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    move-object/from16 v13, p22

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    move-object/from16 v13, p34

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

    move-object/from16 v13, p35

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

    move-object/from16 v13, p24

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsIdle:Lcom/android/server/display/config/HysteresisLevels;

    new-instance v13, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-direct {v13, p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    new-instance v13, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-direct {v13, p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v13, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-virtual {p0, v9}, Lcom/android/server/display/AutomaticBrightnessController;->notifyHbmInfo(Z)V

    new-instance v9, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v13, p3

    invoke-direct {v9, p0, v13}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    new-instance v9, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    int-to-long v13, v4

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const-wide/16 v10, 0x0

    cmp-long v4, v13, v10

    if-lez v4, :cond_a

    int-to-float v4, v6

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v6

    long-to-float v6, v13

    div-float/2addr v4, v6

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v4, v13

    iput v4, v9, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    new-array v6, v4, [F

    iput-object v6, v9, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    new-array v4, v4, [J

    iput-object v4, v9, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iput-object v12, v9, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    iput-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_2

    const v6, 0x10041

    if-eq v2, v6, :cond_1

    const v6, 0x10044

    const-string v9, "AutomaticBrightnessController"

    if-eq v2, v6, :cond_0

    const-string/jumbo v2, "Not found pre-defined light sensor"

    invoke-static {v9, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "Using SEM_TYPE_CAMERA_LIGHT for ABC"

    invoke-static {v9, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    goto :goto_0

    :cond_2
    const v2, 0x10033

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    :cond_3
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz v2, :cond_4

    iput-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    iput-wide v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    :cond_4
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_TABLET:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "Palm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Ear"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityThreshold:F

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    goto :goto_1

    :cond_6
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v2, :cond_7

    const v2, 0x10068

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_7

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    :cond_7
    :goto_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$TaskStackListenerImpl;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppPackageName:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingForegroundAppCategory:I

    move-object/from16 v1, p27

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    move-object/from16 v1, p28

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iput-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    move-object/from16 v1, p33

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    const-string v1, "DisplaySolution"

    invoke-virtual {v5, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v7}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessFromNits(F)F

    move-result v1

    move/from16 v2, p31

    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    :cond_8
    if-eqz v8, :cond_9

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    invoke-interface {v8, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_9
    move-wide/from16 v1, p37

    iput-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lightSensorRate must be above 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final calculateAmbientLux(JJ)F
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v6, ")"

    const-string v7, ", "

    const-string v8, "AutomaticBrightnessController"

    if-eqz v5, :cond_0

    const-string/jumbo v5, "calculateAmbientLux("

    invoke-static {v5, v1, v2, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v9, v5, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v9, :cond_1

    const-string/jumbo v0, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_1
    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz v10, :cond_2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v9}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v0

    return v0

    :cond_2
    sub-long v3, v1, v3

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    add-int/lit8 v12, v9, -0x1

    if-ge v10, v12, :cond_3

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    cmp-long v13, v13, v3

    if-gtz v13, :cond_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "calculateAmbientLux: selected endIndex="

    const-string v10, ", point=("

    invoke-static {v11, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v13

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v6, 0x0

    const-wide/16 v9, 0x64

    move-wide/from16 v18, v9

    move v10, v12

    move-wide/from16 v12, v18

    move v9, v6

    :goto_1
    if-lt v10, v11, :cond_7

    invoke-virtual {v5, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v14

    if-ne v10, v11, :cond_5

    cmp-long v16, v14, v3

    if-gez v16, :cond_5

    move-wide v14, v3

    :cond_5
    sub-long/2addr v14, v1

    long-to-float v1, v12

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v16, v1, v2

    move/from16 p3, v2

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    move/from16 p4, v1

    int-to-float v1, v2

    add-float v16, v16, v1

    mul-float v16, v16, p4

    long-to-float v1, v14

    mul-float v17, v1, p3

    int-to-float v2, v2

    add-float v17, v17, v2

    mul-float v17, v17, v1

    sub-float v1, v16, v17

    invoke-virtual {v5, v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    move-wide/from16 p3, v3

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "calculateAmbientLux: ["

    invoke-static {v3, v14, v15, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "]: lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", weight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-float/2addr v6, v1

    mul-float/2addr v2, v1

    add-float/2addr v9, v2

    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v12, v14

    goto :goto_1

    :cond_7
    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "calculateAmbientLux: totalWeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", newAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v1, v9, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    div-float/2addr v9, v6

    return v9
.end method

.method public final configure(ILandroid/hardware/display/BrightnessConfiguration;FZFZIIZZZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p7

    move/from16 v2, p1

    move/from16 v3, p12

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v5, p2

    invoke-virtual {v2, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v2

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x3

    iget-object v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    const/4 v9, 0x1

    if-nez v2, :cond_1

    if-eqz p11, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/android/server/power/PowerHistorian$MessageRecord;

    const-string/jumbo v11, "ShortTermModel: reset data, change configuration"

    invoke-direct {v10, v11}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v10}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p10, :cond_3

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    iput v6, v8, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    iput v5, v8, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    iput-boolean v4, v8, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_3
    :goto_1
    move v2, v9

    :goto_2
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    iget-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    const-string v12, "AutomaticBrightnessController"

    const/4 v13, 0x2

    if-ne v10, v1, :cond_4

    move v1, v4

    goto/16 :goto_5

    :cond_4
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Display policy transitioning from "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eq v1, v7, :cond_8

    if-ne v1, v13, :cond_6

    goto :goto_3

    :cond_6
    if-eq v10, v7, :cond_7

    if-ne v10, v13, :cond_8

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    goto :goto_4

    :cond_8
    :goto_3
    if-eq v1, v7, :cond_9

    if-ne v1, v13, :cond_c

    :cond_9
    if-eq v10, v7, :cond_c

    if-ne v10, v13, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v11, :cond_b

    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    :cond_b
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    :goto_4
    move v1, v9

    goto :goto_5

    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    sub-long/2addr v14, v5

    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v5

    cmp-long v1, v14, v5

    if-lez v1, :cond_c

    iput-boolean v4, v8, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    const-string/jumbo v1, "ShortTermModel: invalidate user data"

    invoke-static {v12, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_5
    or-int/2addr v1, v2

    move/from16 v2, p8

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    move/from16 v2, p9

    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseNormalBrightnessForDoze:Z

    if-eqz p6, :cond_e

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v2

    or-int/2addr v1, v2

    :cond_e
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mState:I

    if-ne v2, v9, :cond_f

    move v2, v9

    goto :goto_6

    :cond_f
    move v2, v4

    :goto_6
    if-eqz p4, :cond_14

    if-eqz v2, :cond_14

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v5, :cond_10

    :goto_7
    move v5, v4

    goto :goto_9

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x258

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_12

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz v6, :cond_11

    sget v6, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_12

    :cond_11
    invoke-virtual {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    goto :goto_8

    :cond_12
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz v6, :cond_13

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v7, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setScreenBrightnessByUser: cancel currentLux: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_13
    :goto_8
    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v6, p3

    invoke-virtual {v0, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    move-result v5

    :goto_9
    or-int/2addr v1, v5

    :cond_14
    if-nez p4, :cond_16

    if-eqz p6, :cond_15

    goto :goto_a

    :cond_15
    move v5, v4

    goto :goto_b

    :cond_16
    :goto_a
    move v5, v9

    :goto_b
    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    if-eqz v5, :cond_19

    if-eqz v2, :cond_19

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v5, :cond_18

    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    iget-boolean v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v5, :cond_17

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_c

    :cond_17
    const/high16 v5, -0x40800000    # -1.0f

    :goto_c
    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:F

    goto :goto_d

    :cond_18
    invoke-virtual {v6, v13}, Landroid/os/Handler;->removeMessages(I)V

    :goto_d
    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v13, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    if-eq v5, v3, :cond_1a

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    move v1, v9

    :cond_1a
    if-eqz v11, :cond_20

    iget-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

    if-nez v2, :cond_1d

    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eqz v2, :cond_1b

    goto :goto_e

    :cond_1b
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_1f

    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    iput-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iput v4, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iput v4, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iput v4, v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    if-eqz v11, :cond_1c

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1c
    const-string/jumbo v2, "setLightSensorEnabledForCAB: false"

    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_1d
    :goto_e
    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_1f

    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eqz v11, :cond_1e

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v5, v3, v7, v2, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_1e
    const-string/jumbo v2, "setLightSensorEnabledForCAB: true"

    invoke-static {v12, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    goto :goto_10

    :cond_1f
    :goto_f
    move v2, v4

    :goto_10
    or-int/2addr v1, v2

    goto :goto_13

    :cond_20
    if-nez v2, :cond_22

    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eqz v2, :cond_21

    goto :goto_11

    :cond_21
    move v2, v4

    goto :goto_12

    :cond_22
    :goto_11
    move v2, v9

    :goto_12
    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v2

    or-int/2addr v1, v2

    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setProximitySensorEnabled(Z)V

    :cond_23
    :goto_13
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    iget-object v2, v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->mModifiersAggregatedState:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;

    iget v2, v2, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    if-eqz v2, :cond_24

    move v2, v9

    goto :goto_14

    :cond_24
    move v2, v4

    :goto_14
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessThrottled:Z

    if-eq v3, v2, :cond_25

    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsBrightnessThrottled:Z

    goto :goto_15

    :cond_25
    move v9, v1

    :goto_15
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/android/server/display/EarlyWakeUpManager$1;->run()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    :cond_26
    if-eqz v9, :cond_27

    invoke-virtual {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_27
    return-void
.end method

.method public getAmbientLux()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return p0
.end method

.method public final getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F
    .locals 4

    const/high16 v0, 0x7fc00000    # Float.NaN

    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    iput v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdLux:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    iput v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mPreThresholdBrightness:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mRecommendedBrightness:F

    iget v2, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    or-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->shouldApplyDozeScaleFactor()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    :cond_2
    or-int/2addr v1, v3

    iput v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result v1

    iput v1, p1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    :cond_3
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->shouldApplyDozeScaleFactor()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr p1, p0

    return p1

    :cond_5
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    return p0
.end method

.method public final getRawAutomaticScreenBrightness()F
    .locals 0

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    return p0
.end method

.method public final isInIdleMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextAmbientLightBrighteningTransition(J)J
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfigIdle:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    :goto_2
    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final nextAmbientLightDarkeningTransition(J)J
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfigIdle:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    :goto_2
    add-long/2addr p1, v0

    return-wide p1
.end method

.method public final notifyHbmInfo(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "high_brightness_mode_pms_enter"

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onSensorChangedInternal(Landroid/hardware/SensorEvent;)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v1, "AutomaticBrightnessController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onSensorChanged: 1st lux : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_10

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v0, v2

    iget-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    aget v0, v0, v6

    const/4 v7, 0x0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1

    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onSensorChanged: min lux : "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_LIGHT_SENSOR_BLOCKING_PREVENTION_MULTI:Z

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    cmpl-float p1, p1, v7

    if-lez p1, :cond_2

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    if-nez p1, :cond_2

    move v2, v6

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eq p1, v2, :cond_4

    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorPositionUpdatedTime:J

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v2, :cond_3

    const-string p1, "Front -> Rear"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "Rear -> Front"

    :goto_0
    const-string/jumbo v0, "onSensorChanged: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    float-to-int p1, v5

    const-wide/32 v0, 0x20000

    const-string v2, "ALS"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const-string v6, "AutomaticBrightnessController"

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    if-eq v7, v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "adjustLightSensorRate: previousRate="

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", currentRate="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-virtual {v2, v8}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v2, v8, v9, v7, p1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_6
    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    int-to-long v7, p1

    sub-long v7, v3, v7

    invoke-virtual {v1, v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    iget p1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v7, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    const/4 v8, 0x0

    if-ne v2, v7, :cond_8

    mul-int/lit8 p1, v7, 0x2

    new-array v2, p1, [F

    new-array v9, p1, [J

    iget v10, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v7, v10

    iget-object v11, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v11, v10, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v11, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v10, v11, v9, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v10, :cond_7

    iget-object v11, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v11, v8, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v11, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v10, v8, v9, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iput-object v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iput-object v9, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iput p1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iput v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    move p1, v2

    :cond_8
    iget-object v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide v3, v2, p1

    iget-object v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput v5, v2, p1

    iput-wide v3, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastTime:J

    iput v5, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mLastLux:F

    add-int/2addr p1, v0

    iput p1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iget v2, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne p1, v2, :cond_9

    iput v8, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    :cond_9
    iget p1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/2addr p1, v0

    iput p1, v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    iput-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsCameraLightTypeSupported:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-string v2, ", mAmbientLux="

    const-wide/16 v9, 0x0

    if-nez p1, :cond_b

    invoke-virtual {p0, v3, v4, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_b
    invoke-virtual {p0, v3, v4, v9, v10}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result p1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v3, p1, v3

    if-gez v3, :cond_c

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v3, p1, v3

    if-lez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    if-eqz v3, :cond_10

    :cond_c
    iput-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceUpdateBrightness:Z

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateAmbientLux: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_d

    const-string p1, "Brightened"

    goto :goto_1

    :cond_d
    const-string p1, "Darkened"

    :goto_1
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": mBrighteningLuxThreshold="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", mAmbientLightRingBuffer="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    :cond_10
    :goto_2
    return-void
.end method

.method public final resetShortTermModel()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "notifyShortTermResetValid()"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    :goto_0
    const-string p0, "AutomaticBrightnessController"

    const-string/jumbo v0, "Resetting short term model"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final sendAmbientLux(F)V
    .locals 6

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentAmbientLux:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendAmbientLux("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentAmbientLux:F

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_PAPAYA_DQE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "exynos_display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ExynosDisplaySolutionManager;

    if-eqz v0, :cond_1

    float-to-int v2, p1

    const/4 v3, 0x0

    const-string/jumbo v4, "atc_user"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/hardware/display/ExynosDisplaySolutionManager;->setDisplayFeature(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISPLAY_QUALITY:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    const-string v2, "DisplayQuality"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    if-eqz v0, :cond_2

    float-to-int v2, p1

    invoke-virtual {v0, v2}, Lcom/samsung/android/displayquality/SemDisplayQualityManager;->enhanceDisplayOutdoorVisibilityByLux(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_7

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDualScreenPolicy:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentDisplayId:I

    if-eq v5, v4, :cond_7

    :cond_3
    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_5

    if-ne v2, v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentDisplayId:I

    :cond_5
    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastSentDisplayId:I

    if-eq p0, v4, :cond_7

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->updateAutoBrightnessLux(II)V

    return-void

    :cond_6
    float-to-int p0, p1

    invoke-virtual {v0, v3, p0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->updateAutoBrightnessLux(II)V

    :cond_7
    :goto_1
    return-void
.end method

.method public final setAmbientLux(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    const-string v1, "AutomaticBrightnessController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setAmbientLux("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    const-string p1, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/HysteresisLevels;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/HysteresisLevels;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v0, p1}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "notifyAmbientLuxChanged(lux=%f)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {p1, p0}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$mmaybeReset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;F)Z

    return-void
.end method

.method public final setLightSensorEnabled(Z)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

    const/16 v2, 0x8

    const-string v3, "AutomaticBrightnessController"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez p1, :cond_3

    iput-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const-string/jumbo p1, "setLightSensorEnabled: true"

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorCct:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    :goto_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v3, v1, p1, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    const-wide/16 p0, 0x320

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v4

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz p1, :cond_3

    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/lit8 v6, p1, 0x1

    iput-boolean v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const/high16 v6, 0x7fc00000    # Float.NaN

    if-eqz p1, :cond_2

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    :cond_2
    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    iput v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdBrightness:F

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iput v5, p1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iput v5, p1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    iput v5, p1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->sendAmbientLux(F)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo p1, "setLightSensorEnabled: false"

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    iput-boolean v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_3
    return v5
.end method

.method public final setProximitySensorEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Lcom/android/server/display/AutomaticBrightnessController$3;

    const-string v2, "AutomaticBrightnessController"

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    const-string/jumbo p1, "setProximitySensorEnabled::registerListener"

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v1, p0, v2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorEnabled:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingProximity:I

    iget-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mOnProximityChangedRunnable:Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string/jumbo p1, "setProximitySensorEnabled::unregisterListener"

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    return-void
.end method

.method public final setScreenBrightnessByUser(FF)Z
    .locals 4

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    iput p1, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    iput p2, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ShortTermModel: anchor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    const-string/jumbo v0, "change BrighteningLightDebounceConfig"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_DPUC:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/DisplayPowerController;FFF)V

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_2
    return p1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldApplyDozeScaleFactor()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseNormalBrightnessForDoze:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayState:I

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setProximitySensorEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/EarlyWakeUpManager$1;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    :cond_1
    return-void
.end method

.method public final switchMode(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Switching to mode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->autoBrightnessModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutomaticBrightnessController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getUserLux()F

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getUserBrightness()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v8}, Lcom/android/server/display/BrightnessMappingStrategy;->getShortTermModelTimeout()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mPreviousShortTermModel: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPausedShortTermModel:Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMappingStrategyMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/BrightnessMappingStrategy;

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v5, :cond_5

    iget p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v5, p1}, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->-$$Nest$mmaybeReset(Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;F)Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, v5, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    iget v1, v5, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(FF)Z

    :cond_4
    iput v2, v5, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mAnchor:F

    iput v3, v5, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mBrightness:F

    iput-boolean v0, v5, Lcom/android/server/display/AutomaticBrightnessController$ShortTermModel;->mIsValid:Z

    :cond_5
    :goto_2
    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method public final updateAmbientLux(J)V
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-string v6, ", mAmbientLux="

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonShort:I

    const-string v8, "AutomaticBrightnessController"

    const/4 v9, 0x1

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    if-eqz v3, :cond_4

    :cond_0
    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v10, v3

    iget-wide v12, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v10, v12

    cmp-long v3, v1, v10

    if-gez v3, :cond_2

    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "updateAmbientLux: Sensor not ready yet: time="

    const-string v3, ", timeWhenSensorWarmedUp="

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v5, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_2
    int-to-long v10, v7

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0, v9}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    :cond_4
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    const/4 v10, 0x0

    const-wide/16 v11, 0x9c4

    const/4 v13, 0x2

    if-eqz v3, :cond_7

    iput-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mMinLuxUpdated:Z

    iget-wide v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    add-long/2addr v14, v11

    cmp-long v3, v1, v14

    if-ltz v3, :cond_6

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v3, v13, :cond_5

    goto :goto_0

    :cond_5
    move v3, v9

    goto :goto_1

    :cond_6
    :goto_0
    const-string/jumbo v0, "updateAmbientLux: min lux is ignored"

    invoke-static {v8, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    move v3, v10

    :goto_1
    iget-boolean v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUseLightSensorBlockingPrevention:Z

    const v15, 0x10068

    move-wide/from16 v16, v11

    if-eqz v14, :cond_8

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v11}, Landroid/hardware/Sensor;->getType()I

    move-result v11

    if-ne v11, v15, :cond_8

    iget-boolean v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    if-eqz v11, :cond_8

    iget-wide v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorPositionUpdatedTime:J

    const-wide/16 v18, 0x12c

    add-long v11, v11, v18

    cmp-long v18, v1, v11

    if-gez v18, :cond_8

    invoke-virtual {v5, v9, v11, v12}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v11

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v18

    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizonLong:I

    move/from16 v20, v14

    int-to-long v13, v10

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSlowAmbientLux:F

    int-to-long v13, v7

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v7

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    iget-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSetScreenBrightnessByUserTime:J

    add-long v13, v13, v16

    cmp-long v7, v1, v13

    if-gez v7, :cond_9

    move v7, v9

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_2
    if-eqz v20, :cond_16

    iget-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v10}, Landroid/hardware/Sensor;->getType()I

    move-result v10

    if-ne v10, v15, :cond_15

    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    if-eqz v10, :cond_13

    const-wide/16 v13, 0x0

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSlowAmbientLux:F

    invoke-virtual {v0, v1, v2, v13, v14}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    iget-boolean v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v10, :cond_b

    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "Last front lux: "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", Current rear lux: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastAmbientLuxOfFrontLightSensor:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v10, v13}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    div-float/2addr v10, v13

    const/high16 v13, 0x40a00000    # 5.0f

    cmpg-float v10, v10, v13

    if-gtz v10, :cond_a

    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_a

    move v10, v9

    goto :goto_3

    :cond_a
    const/4 v10, 0x2

    goto :goto_3

    :cond_b
    const/4 v10, 0x0

    :goto_3
    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    if-eq v13, v10, :cond_12

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v13, v10, v13

    if-gtz v13, :cond_c

    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v13, :cond_d

    :cond_c
    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_e

    :cond_d
    move v3, v9

    :cond_e
    iget v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v10}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "updateAmbientLux("

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-eqz v13, :cond_f

    const-string/jumbo v13, "Rear"

    goto :goto_4

    :cond_f
    const-string v13, "Front"

    :goto_4
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessThresoldsType:I

    if-eq v13, v9, :cond_11

    const/4 v14, 0x2

    if-eq v13, v14, :cond_10

    const-string v13, "DEFAULT"

    goto :goto_5

    :cond_10
    const-string/jumbo v13, "TOUCH_LOW"

    goto :goto_5

    :cond_11
    const-string/jumbo v13, "TOUCH_HIGH"

    :goto_5
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "): "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%6.0f"

    const-string v15, " < "

    invoke-static {v14, v13, v10, v15}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v1, "%8.1f"

    invoke-static {v13, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v14, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[api] "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsLightSensorPositionUpdated:Z

    goto :goto_6

    :cond_13
    const/4 v1, 0x0

    :goto_6
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_14

    iget-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mIsRearLightSensor:Z

    if-nez v2, :cond_14

    move v10, v9

    goto :goto_8

    :cond_14
    :goto_7
    move v10, v1

    goto :goto_8

    :cond_15
    const/4 v1, 0x0

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximity:I

    if-ne v2, v9, :cond_14

    const/4 v10, 0x1

    goto :goto_8

    :cond_16
    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSlowAmbientLux:F

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    cmpl-float v9, v1, v2

    if-ltz v9, :cond_17

    iget v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    cmpl-float v2, v9, v2

    if-ltz v2, :cond_17

    cmp-long v2, v11, p1

    if-gtz v2, :cond_17

    if-eqz v7, :cond_19

    :cond_17
    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_18

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_18

    cmp-long v1, v18, p1

    if-gtz v1, :cond_18

    if-eqz v10, :cond_19

    :cond_18
    if-eqz v3, :cond_1c

    :cond_19
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    iget-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateAmbientLux: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFastAmbientLux:F

    iget v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPreThresholdLux:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    const-string v2, "Brightened"

    goto :goto_9

    :cond_1a
    const-string v2, "Darkened"

    :goto_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": mAmbientBrighteningThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mAmbientDarkeningThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mAmbientLightRingBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v11

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v18

    :cond_1c
    move-wide/from16 v1, v18

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-lez v3, :cond_1d

    goto :goto_a

    :cond_1d
    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v1, v1

    add-long v1, p1, v1

    :goto_a
    iget-boolean v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mClock:Lcom/android/server/display/AutomaticBrightnessController$RealClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    const/4 v9, 0x1

    invoke-virtual {v5, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method public final updateAutoBrightness(Z)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForegroundAppCategory:I

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result v3

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRawScreenAutoBrightness:F

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v5, v4, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v5, v5, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v6

    invoke-static {v3, v5, v6}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget-object v7, v4, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v7, v7, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v4

    invoke-static {v6, v7, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    invoke-static {v6, v4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    cmpl-float v4, v4, v5

    const-string v6, "AutomaticBrightnessController"

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_5

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateAutoBrightness : "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%3d"

    const-string v9, "("

    invoke-static {v8, v7, v4, v9}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "%.2f"

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "%6.0f"

    const-string v9, " < "

    invoke-static {v8, v3, v4, v9}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v10, "%8.1f"

    invoke-static {v7, v10, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v9, " (adj:"

    invoke-static {v8, v3, v4, v9}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v8, "%+.1f"

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, " (1st)"

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[api] "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/power/PowerHistorian$MessageRecord;

    invoke-direct {v7, v3}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v7}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggedAmbientLux:F

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz v4, :cond_5

    sget v4, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v0

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    if-eq v4, v3, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "HBM is "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_4

    const-string v7, "Enabled"

    goto :goto_2

    :cond_4
    const-string v7, "Disabled"

    :goto_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". mScreenAutoBrightness = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastHBM:Z

    invoke-virtual {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->notifyHbmInfo(Z)V

    :cond_5
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-static {v3, v5}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLoggingEnabled:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:F

    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mIsUnderDisplayLightSensor:Z

    if-eqz v3, :cond_7

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientDarkeningThreshold:F

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrighteningThreshold:F

    const/4 v7, 0x4

    new-array v7, v7, [F

    aput v3, v7, v0

    aput v4, v7, v1

    const/4 v0, 0x2

    aput v5, v7, v0

    aput v6, v7, v2

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->setBrightnessHysteresisParameter([F)V

    :cond_7
    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    :cond_8
    :goto_3
    return-void
.end method
