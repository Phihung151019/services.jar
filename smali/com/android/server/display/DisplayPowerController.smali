.class public final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# static fields
.field public static final BRIGHTNESS_RANGE_BOUNDARIES:[F

.field public static final BRIGHTNESS_RANGE_INDEX:[I

.field public static final COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public static final COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final DEBUG:Z

.field public static final RATE_FROM_DOZE_TO_ON:F

.field public static final SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

.field public static sLastScreenBrightnessSettingChangedTime:J


# instance fields
.field public defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public mActualDisplayState:I

.field public final mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

.field public final mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

.field public final mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field public mAppliedForceDimming:Z

.field public mAutoBrightnessEnabled:Z

.field public mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

.field public mBatteryLevelCritical:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mBlanker:Lcom/android/server/display/DisplayManagerService$1;

.field public mBootCompleted:Z

.field public mBrightnessAnimationConsumerInvoked:Z

.field public final mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

.field public final mBrightnessBucketsInDozeConfig:Z

.field public final mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

.field public mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mBrightnessRampDecreaseMaxTimeIdleMillis:J

.field public mBrightnessRampDecreaseMaxTimeMillis:J

.field public mBrightnessRampIncreaseMaxTimeIdleMillis:J

.field public mBrightnessRampIncreaseMaxTimeMillis:J

.field public mBrightnessRampRateFastDecrease:F

.field public mBrightnessRampRateFastIncrease:F

.field public mBrightnessRampRateHdrDecrease:F

.field public mBrightnessRampRateHdrIncrease:F

.field public mBrightnessRampRateSlowDecrease:F

.field public mBrightnessRampRateSlowDecreaseIdle:F

.field public mBrightnessRampRateSlowIncrease:F

.field public mBrightnessRampRateSlowIncreaseIdle:F

.field public final mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

.field final mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

.field public final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

.field public mClampedMaxBrightness:F

.field public final mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

.field public final mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

.field public final mColorFadeEnabled:Z

.field public final mColorFadeFadesConfig:Z

.field public mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field public mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayBlanksAfterDozeConfig:Z

.field public final mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

.field public final mDisplayBrightnessFollowers:Landroid/util/SparseArray;

.field public mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public final mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

.field public mDisplayReadyLocked:Z

.field public final mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

.field public mDisplayStatsId:I

.field public final mDozeScaleFactor:F

.field public mDozing:Z

.field public mDualScreenPolicy:I

.field public mDualScreenPolicyChanged:Z

.field public final mEarlyWakeUpEnabled:Z

.field public final mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

.field public final mExtraDimStrength:I

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mFollowerRampSpeed:F

.field public mFollowerRampSpeedAtHbm:F

.field public mForceDimSettingEnabled:Z

.field public mForceSlowChange:Z

.field public mFreezeBrightnessMode:Z

.field public mFreezeBrightnessModeSelector:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field public mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

.field public mIdleStylusTimeoutMillisConfig:J

.field public mInitialAutoBrightnessUpdated:Z

.field public final mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

.field public final mIsCoverDisplay:Z

.field public mIsDisplayInternal:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public mIsOutdoorModeEnabled:Z

.field public final mIsSupportedAodMode:Z

.field public mIsWearBedtimeModeEnabled:Z

.field public mLastAmbientLux:F

.field public mLastAutomaticScreenBrightness:F

.field public mLastBatteryLevelCriticalTime:J

.field public final mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mLastCoverClosedState:Z

.field public mLastNotifiedBrightness:F

.field public mLastOriginalTarget:F

.field public mLastScreenBrightnessSettingBeforeForceDim:F

.field public mLastStatsBrightness:F

.field public mLastStylusUsageEventTime:J

.field public mLcdFlashModeEnabled:Z

.field public mLeadDisplayId:I

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLock:Ljava/lang/Object;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mMoreFastRampRate:F

.field public mNeedPrepareColorFade:Z

.field public mNitsRange:[F

.field public final mOnBrightnessAnimationConsumer:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

.field public final mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

.field public final mOnBrightnessModeChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

.field public mPassRampAnimation:Z

.field public mPendingEarlyWakeUpRequestLocked:Z

.field public mPendingForceSlowChangeLocked:Z

.field public mPendingOverrideDozeScreenStateLocked:I

.field public mPendingRequestChangedLocked:Z

.field public mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPendingScreenOff:Z

.field public mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

.field public mPendingScreenOnByAodReady:Z

.field public mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field public mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

.field public mPendingTransitionOffInDualCase:Z

.field public mPendingUpdatePowerStateLocked:Z

.field public mPhysicalDisplayName:Ljava/lang/String;

.field public final mPowerHistorian:Lcom/android/server/power/PowerHistorian;

.field public mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field public mPowerState:Lcom/android/server/display/DisplayPowerState;

.field public mPrevScreenBrightness:F

.field public final mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

.field public final mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

.field public mReportedScreenStateToPolicy:I

.field public mResetBrightnessConfiguration:Z

.field public final mScreenBrightnessDimConfig:F

.field public mScreenBrightnessDozeConfig:F

.field public final mScreenBrightnessMinimumDimAmount:F

.field public final mScreenBrightnessModeSettingName:Ljava/lang/String;

.field public mScreenBrightnessOverridePackage:Ljava/lang/String;

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

.field public final mScreenExtendedBrightnessRangeMaximum:F

.field public mScreenOffBlockStartRealTime:J

.field public mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

.field public mScreenOnBlockByDisplayOffloadStartRealTime:J

.field public mScreenOnBlockStartRealTime:J

.field public mScreenTurningOnWasBlockedByDisplayOffload:Z

.field public mSeamlessAodReady:Z

.field public final mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field public final mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

.field public mStopped:Z

.field public final mTag:Ljava/lang/String;

.field public final mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

.field public mUniqueDisplayId:Ljava/lang/String;

.field public mUseSoftwareAutoBrightnessConfig:Z

.field public mWaitingAutoBrightnessFromDoze:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;

.field public final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method public static -$$Nest$mhandleSettingsChange(Lcom/android/server/display/DisplayPowerController;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    iget-object v2, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput v1, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updatePendingAutoBrightnessAdjustments()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->updateGameAutoBrightnessLock()V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "auto_dim_screen"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    const-string v0, " sb: %.3f abAdj: %.3f sbLock: %s fd: %s"

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v3, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getPendingAutoBrightnessAdjustment()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isGameAutoBrightnessLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "[api] handleSettingsChange:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "DisplayPowerController"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3e3851ec    # 0.18f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    const/4 v0, 0x0

    const/16 v1, 0x26

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    const-wide/16 v1, -0x1

    sput-wide v1, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FULLSCREEN_AOD:Z

    if-eqz v1, :cond_0

    const v0, 0x3cf5c28f    # 0.03f

    :cond_0
    sput v0, Lcom/android/server/display/DisplayPowerController;->RATE_FROM_DOZE_TO_ON:F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41f00000    # 30.0f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x42700000    # 60.0f
        0x428c0000    # 70.0f
        0x42a00000    # 80.0f
        0x42b40000    # 90.0f
        0x42c80000    # 100.0f
        0x43480000    # 200.0f
        0x43960000    # 300.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x44160000    # 600.0f
        0x442f0000    # 700.0f
        0x44480000    # 800.0f
        0x44610000    # 900.0f
        0x447a0000    # 1000.0f
        0x44960000    # 1200.0f
        0x44af0000    # 1400.0f
        0x44c80000    # 1600.0f
        0x44e10000    # 1800.0f
        0x44fa0000    # 2000.0f
        0x450ca000    # 2250.0f
        0x451c4000    # 2500.0f
        0x452be000    # 2750.0f
        0x453b8000    # 3000.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p6

    move-object/from16 v1, p12

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    new-instance v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/util/MutableFloat;

    const/high16 v6, 0x7fc00000    # Float.NaN

    invoke-direct {v5, v6}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    new-instance v5, Landroid/util/MutableFloat;

    invoke-direct {v5, v6}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    new-instance v5, Landroid/util/MutableFloat;

    invoke-direct {v5, v6}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    new-instance v5, Landroid/util/MutableFloat;

    invoke-direct {v5, v6}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    new-instance v5, Landroid/util/MutableInt;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    new-instance v5, Landroid/util/MutableFloat;

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v5, v8}, Landroid/util/MutableFloat;-><init>(F)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    new-instance v5, Landroid/util/MutableInt;

    invoke-direct {v5, v7}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    new-instance v5, Landroid/util/MutableInt;

    invoke-direct {v5, v7}, Landroid/util/MutableInt;-><init>(I)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    new-instance v5, Landroid/util/MutableBoolean;

    invoke-direct {v5, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->screenBrightnessOverridePackage:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    new-instance v4, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v4}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    new-instance v4, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v4}, Lcom/android/server/display/brightness/BrightnessReason;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const-class v8, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v9, 0x14

    invoke-direct {v4, v8, v9}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    const-string/jumbo v4, "screen_brightness_mode"

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    const-wide/16 v8, -0x1

    iput-wide v8, v0, Lcom/android/server/display/DisplayPowerController;->mLastStylusUsageEventTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, v0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    iput v7, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    sget-object v4, Lcom/android/server/power/PowerHistorian;->INSTANCE:Lcom/android/server/power/PowerHistorian;

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    iput v6, v0, Lcom/android/server/display/DisplayPowerController;->mPrevScreenBrightness:F

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationEndRunnable:Lcom/android/server/display/DisplayPowerController$3;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    new-instance v5, Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-direct {v5}, Lcom/android/server/display/DisplayPowerController$Injector;-><init>()V

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    new-instance v5, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;-><init>(I)V

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    iput-object v15, v0, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    iget v14, v15, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v5, v15, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v6, v5, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    move-object/from16 v8, p4

    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v9, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v10, v10, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    int-to-long v10, v10

    iput-wide v10, v0, Lcom/android/server/display/DisplayPowerController;->mIdleStylusTimeoutMillisConfig:J

    iget-boolean v10, v15, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget-boolean v10, v15, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    iget v10, v5, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move v10, v11

    goto :goto_0

    :cond_0
    move v10, v7

    :goto_0
    iput-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    new-instance v10, Lcom/android/server/display/WakelockController;

    move-object/from16 v12, p2

    invoke-direct {v10, v14, v12}, Lcom/android/server/display/WakelockController;-><init>(ILandroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v19

    new-instance v13, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v13, v3, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    new-instance v16, Lcom/android/server/display/DisplayPowerProximityStateController;

    new-instance v23, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;-><init>()V

    move-object/from16 v22, v8

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v20, v13

    move/from16 v21, v14

    invoke-direct/range {v16 .. v23}, Lcom/android/server/display/DisplayPowerProximityStateController;-><init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Ljava/lang/Runnable;ILandroid/hardware/SensorManager;Lcom/android/server/display/DisplayPowerProximityStateController$Injector;)V

    move-object/from16 v8, v16

    move/from16 v3, v21

    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    new-instance v10, Lcom/android/server/display/state/DisplayStateController;

    const v12, 0x1110255

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    invoke-direct {v10, v8, v12, v3}, Lcom/android/server/display/state/DisplayStateController;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;ZI)V

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    const-string v8, "DisplayPowerController["

    const-string/jumbo v10, "]"

    invoke-static {v3, v8, v10}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v10, v10, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    new-instance v10, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v10, v3}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    new-instance v10, Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v10, v3}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(I)V

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v10, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableBatteryStatsForAllDisplays:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v10}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v10

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    iget v10, v5, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-eq v10, v11, :cond_1

    const/4 v13, 0x2

    if-eq v10, v13, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v10, :cond_3

    if-ne v3, v11, :cond_3

    goto :goto_2

    :cond_3
    iput-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    :goto_3
    new-instance v10, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-direct {v10, v0, v9}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const-class v13, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const-class v13, Lcom/samsung/android/aod/AODManagerInternal;

    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/aod/AODManagerInternal;

    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    move-object/from16 v13, p5

    iput-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayManagerService$1;

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v14, p9

    iput-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v12, "bedtime_mode"

    invoke-static {v14, v12, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v11, :cond_5

    move v14, v11

    goto :goto_4

    :cond_5
    move v14, v7

    :goto_4
    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v12}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v11, -0x1

    invoke-virtual {v14, v12, v7, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    if-nez v3, :cond_6

    move-object/from16 v10, p14

    iput-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    :cond_6
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v10, v10, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    invoke-static {v10}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v10

    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->loadBrightnessRampRates()V

    const v10, 0x1130007

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v10, 0x5

    invoke-direct {v12, v10, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const-class v10, Landroid/os/PowerManager;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v10

    invoke-static {v10}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v10

    iput v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    const v11, 0x1050123

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    move-object v11, v9

    sget v9, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    sget-boolean v18, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    const/4 v14, 0x1

    if-eqz v18, :cond_7

    if-ne v3, v14, :cond_7

    goto :goto_5

    :cond_7
    move v14, v7

    :goto_5
    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v14, :cond_8

    const-string/jumbo v14, "sub_screen_brightness_mode"

    iput-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    :cond_8
    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    const v14, 0x3e99999a    # 0.3f

    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    const v14, 0x3f666666    # 0.9f

    iput v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v14

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    move-object/from16 v20, v6

    iget-object v6, v7, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    if-eqz v14, :cond_9

    iget-object v14, v14, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v14, :cond_9

    iget-boolean v1, v14, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v1, :cond_a

    :cond_9
    const/4 v14, 0x0

    :cond_a
    invoke-virtual {v15}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    move/from16 v21, v3

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v3

    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object v10, v4

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v19, v8

    move v8, v3

    move-object v3, v11

    new-instance v11, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda14;

    invoke-direct {v11, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v22, v5

    move v5, v1

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController;

    move/from16 v23, v2

    new-instance v2, Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v7, v7, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    move-object/from16 v13, p10

    move-object/from16 v24, v10

    move-object v10, v14

    move/from16 v15, v23

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v14}, Lcom/android/server/display/HighBrightnessModeController;-><init>(Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;IILandroid/os/IBinder;Ljava/lang/String;FFLcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;Ljava/lang/Runnable;Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/content/Context;)V

    move-object v10, v3

    move-object v3, v12

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object v2, v1

    new-instance v1, Lcom/android/server/display/BrightnessRangeController;

    new-instance v5, Lcom/android/server/display/NormalBrightnessModeController;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightnessLimits:Ljava/util/Map;

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    iput v6, v5, Lcom/android/server/display/NormalBrightnessModeController;->mAmbientLux:F

    iput-boolean v15, v5, Lcom/android/server/display/NormalBrightnessModeController;->mAutoBrightnessEnabled:Z

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/server/display/NormalBrightnessModeController;->mMaxBrightness:F

    new-instance v6, Lcom/android/server/display/brightness/clamper/HdrClamper;

    new-instance v7, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    invoke-direct {v7, v3}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/display/brightness/clamper/HdrClamper;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/HdrClamper$Injector;)V

    move-object/from16 v7, p12

    move-object/from16 v8, v20

    move-object/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/BrightnessRangeController;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;Lcom/android/server/display/brightness/clamper/HdrClamper;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;)V

    move-object v12, v3

    move-object/from16 v20, v8

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    new-instance v1, Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v4, v2, Landroid/view/DisplayInfo;->brightnessDefault:F

    new-instance v6, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v2, 0x6

    invoke-direct {v6, v2, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    new-instance v7, Landroid/os/HandlerExecutor;

    invoke-direct {v7, v10}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object/from16 v2, p1

    move-object/from16 v5, p8

    move-object/from16 v8, p12

    move/from16 v3, v21

    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/DisplayBrightnessController;-><init>(Landroid/content/Context;IFLcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    new-instance v3, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v12}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    move-object/from16 v5, p6

    iget-object v11, v5, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object v8, v10

    move-object v10, v2

    move-object v2, v8

    move-object v8, v4

    move-object/from16 v13, v20

    move/from16 v14, v21

    invoke-direct/range {v8 .. v14}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;I)V

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v8

    move-object v5, v1

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-object/from16 v7, p4

    move-object/from16 v6, p12

    move-object v9, v5

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;-><init>(Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/hardware/SensorManager;F)V

    move-object v3, v2

    move-object v2, v5

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    invoke-virtual {v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v1, v4}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    iget-object v1, v9, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-object/from16 v10, v24

    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->loadNitsRange(Landroid/content/res/Resources;)V

    move-object/from16 v5, p3

    invoke-virtual {v0, v2, v5}, Lcom/android/server/display/DisplayPowerController;->setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V

    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v5, :cond_d

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    const/4 v11, 0x1

    if-eqz v14, :cond_c

    if-eqz v18, :cond_b

    if-ne v14, v11, :cond_b

    goto :goto_6

    :cond_b
    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    goto :goto_7

    :cond_c
    :goto_6
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    new-instance v5, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {v5, v2, v14, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;ILcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    goto :goto_7

    :cond_d
    const/4 v11, 0x1

    move-object/from16 v5, p7

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    :goto_7
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-nez v4, :cond_e

    const v4, 0x111014d

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_e

    move v7, v11

    goto :goto_8

    :cond_e
    move v7, v15

    :goto_8
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const v4, 0x1110037

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const v4, 0x111014b

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const v4, 0x111014c

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    move/from16 v4, p11

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v4, :cond_f

    new-instance v4, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mShutdownReceiver:Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_f
    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessModeChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    if-eqz v4, :cond_10

    new-instance v4, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v4, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    new-instance v5, Lcom/android/server/display/EarlyWakeUpManager;

    move-object/from16 p10, p5

    move-object/from16 p9, v4

    move-object/from16 p6, v5

    move/from16 p8, v14

    move-object/from16 p11, v17

    move-object/from16 p7, v19

    invoke-direct/range {p6 .. p11}, Lcom/android/server/display/EarlyWakeUpManager;-><init>(Ljava/lang/String;ILcom/android/server/display/DisplayPowerController$4;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/WakelockController;)V

    move-object/from16 v4, p7

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    goto :goto_9

    :cond_10
    move-object/from16 v4, v19

    :goto_9
    if-nez v14, :cond_11

    new-instance v5, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    iget-object v6, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    invoke-direct {v5, v2, v6, v3}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    iput-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    new-instance v6, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    invoke-direct {v6, v5, v3}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;)V

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v9, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v9, "package"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v9, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;

    invoke-direct {v9, v5, v7, v6, v8}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Landroid/content/ContentResolver;Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;Landroid/content/IntentFilter;)V

    invoke-virtual {v3, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->handleSettingsChangedLocked()V

    :cond_11
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v3, :cond_12

    move v7, v11

    goto :goto_a

    :cond_12
    move v7, v15

    :goto_a
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz v7, :cond_13

    new-instance v3, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    :cond_13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    const/4 v5, -0x2

    invoke-static {v2, v3, v15, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v11, :cond_14

    move v7, v11

    goto :goto_b

    :cond_14
    move v7, v15

    :goto_b
    invoke-virtual {v1, v7}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create new DPC instance, mDisplayId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " AutomaticBrightnessController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " defaultModeBrightnessMapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logDisplayPolicyChanged(I)V
    .locals 2

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-virtual {v0, p0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method


# virtual methods
.method public final animateScreenBrightness(FFFZF)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Animating brightness: target="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v3, p1, p2

    const-string v4, ""

    if-eqz v3, :cond_1

    invoke-static {p2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v3

    const-string v5, ", sdrTarget="

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, ", rate=%.3f"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_2

    const-string v3, ", DR="

    invoke-static {v0, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ", rateAtHbm=%.3f"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v4, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget v5, v2, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v6, 0x0

    if-eq v4, v5, :cond_5

    const/4 v7, 0x6

    if-eq v4, v7, :cond_4

    if-ne v5, v7, :cond_5

    :cond_4
    move v4, v1

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    iget v4, v0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v5, v2, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-eq v4, v5, :cond_7

    const/16 v4, 0x380

    invoke-virtual {v0, v4}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v5

    invoke-virtual {v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v2

    if-eq v5, v2, :cond_7

    :goto_4
    invoke-virtual {v0}, Lcom/android/server/display/brightness/BrightnessReason;->changesToString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/power/PowerHistorian$MessageRecord;

    invoke-direct {v4, v0}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v4}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v2, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2, p1, p3, p5, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFZ)Z

    move-result v2

    iget-object v4, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v4, p2, p3, p5, p4}, Lcom/android/server/display/RampAnimator;->setAnimationTarget(FFFZ)Z

    move-result p2

    or-int/2addr p2, v2

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p3

    iget-boolean p4, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    if-eq p3, p4, :cond_a

    const/4 p5, 0x0

    iget-object v2, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAnimationCallback:Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    if-eqz p3, :cond_8

    iput-boolean v1, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p3, v1, v2, p5}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-eqz p4, :cond_a

    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/android/server/display/DisplayPowerController$4;->onAnimationEnd()V

    :cond_9
    iget-object p3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p3, v1, v2, p5}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    iput-boolean v6, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mAwaitingCallback:Z

    :cond_a
    :goto_5
    if-eqz p2, :cond_c

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_TOKEN:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 p3, 0x7

    invoke-virtual {p2, p3}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessAnimationConsumerInvoked:Z

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessAnimationConsumer:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;->accept(Ljava/lang/Object;)V

    :cond_b
    float-to-int p2, p1

    const-wide/32 p3, 0x20000

    const-string/jumbo p5, "TargetScreenBrightness"

    invoke-static {p3, p4, p5, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string/jumbo p2, "debug.tracing.screen_brightness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p2

    const-string p4, "Failed to set a system property: key=debug.tracing.screen_brightness value="

    const-string p5, " "

    invoke-static {p4, p3, p5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    :cond_c
    return-void
.end method

.method public final animateScreenStateChange(IIZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "animateScreenStateChange: target="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eq p1, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "animateScreenStateChange: mColorFadeOffAnimator.cancel()"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_0

    :cond_4
    move v5, v2

    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_5
    if-eq p1, v3, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    invoke-virtual {p0, v3, p2, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v0, :cond_8

    if-eq p1, v3, :cond_8

    invoke-virtual {p0, v3, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ne p1, v1, :cond_f

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz p1, :cond_9

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_DISABLE_CLOCK_TRANSITION:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-ne p1, v5, :cond_9

    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    :cond_9
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastWakeUpReason:I

    const/16 p3, 0xc

    if-ne p1, p3, :cond_b

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p3, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float p3, p3, v4

    if-nez p3, :cond_a

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, v1}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo p3, "draw ColorFade due to unfolding"

    invoke-static {p1, p3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    :cond_a
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mNeedPrepareColorFade:Z

    :cond_b
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_2

    :cond_c
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean p1, p1, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-ne p1, v1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object p2, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p1, p1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object p1, p1, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mOverrideBrightnessStrategy:Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    iget p1, p1, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->mWindowManagerBrightnessOverride:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-ne p1, v3, :cond_e

    :cond_d
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "animateScreenStateChange is returned because lux is not yet valid!"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_e
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_f
    if-ne p1, v6, :cond_12

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-ne p1, v1, :cond_10

    goto/16 :goto_2

    :cond_10
    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_2

    :cond_11
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_12
    if-ne p1, v5, :cond_16

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq p1, v5, :cond_13

    goto :goto_2

    :cond_13
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq p1, v5, :cond_15

    invoke-virtual {p0, v6, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_2

    :cond_14
    invoke-virtual {p0, v5, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    :cond_15
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_16
    const/4 v5, 0x6

    if-ne p1, v5, :cond_1a

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {p1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq p1, v5, :cond_17

    goto :goto_2

    :cond_17
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq p1, v5, :cond_19

    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_2

    :cond_18
    invoke-virtual {p0, v5, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    :cond_19
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    return-void

    :cond_1a
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-nez p1, :cond_1b

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p1, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    :cond_1b
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v0, p1, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1d

    invoke-virtual {p0, v3, p2, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIZ)Z

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    :cond_1c
    :goto_2
    return-void

    :cond_1d
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-nez p2, :cond_1f

    sget-boolean p2, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    if-eqz p2, :cond_1e

    move p2, v6

    goto :goto_3

    :cond_1e
    move p2, v3

    goto :goto_3

    :cond_1f
    move p2, v1

    :goto_3
    if-eqz p3, :cond_21

    iget-object p3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget p1, p1, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq p1, v3, :cond_21

    if-ne p2, v6, :cond_20

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    :cond_20
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    sget-object p2, Lcom/android/server/display/DisplayPowerController;->COLOR_FADE_DEFAULT_INTERPOLATOR:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_21
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public final clampScreenBrightness(F)F
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result p0

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final clampScreenBrightnessForFinal(F)F
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v0, v0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v0, v0, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    invoke-static {p1, v0, p0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public final clearAdaptiveBrightnessLongtermModelBuilder()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "clearBrightnessEvents()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "  mCachedBrightnessInfo.brightnessReason ="

    const-string v3, "  mCachedBrightnessInfo.brightnessMaxReason ="

    const-string v4, "  mCachedBrightnessInfo.hbmTransitionPoint="

    const-string v5, "  mCachedBrightnessInfo.hbmMode="

    const-string v6, "  mCachedBrightnessInfo.brightnessMax="

    const-string v7, "  mCachedBrightnessInfo.brightnessMin="

    const-string v8, "  mCachedBrightnessInfo.adjustedBrightness="

    const-string v9, "  mCachedBrightnessInfo.brightness="

    const-string v10, "  mPendingUpdatePowerStateLocked="

    const-string v11, "  mPendingRequestChangedLocked="

    const-string v12, "  mPendingRequestLocked="

    const-string v13, "  mDisplayReadyLocked="

    const-string v14, "  mDisplayBrightnessFollowers="

    const-string v15, "  mLightSensor="

    move-object/from16 v16, v2

    const-string v2, "  mLeadDisplayId="

    move-object/from16 v17, v3

    const-string v3, "  mDisplayId="

    move-object/from16 v18, v4

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    move-object/from16 v19, v5

    :try_start_0
    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    move-object/from16 v20, v6

    const-string/jumbo v6, "dump"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v5, "Display Power Controller:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "-------------------------"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Display Power Controller Locked State:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Display Power Controller Configuration:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mScreenBrightnessDozeConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    const-string v4, "  mScreenBrightnessDimConfig="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    const-string v4, "  mUseSoftwareAutoBrightnessConfig="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mSkipScreenOnBrightnessRamp=false"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mColorFadeFadesConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    const-string v4, "  mColorFadeEnabled="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const-string v4, "  mIsDisplayInternal="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    invoke-static {v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v4, v4, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v4, v4, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v4, v4, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v4, v4, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v4, v4, Landroid/util/MutableInt;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v4, v4, Landroid/util/MutableFloat;->value:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v4, v4, Landroid/util/MutableInt;->value:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v4, v4, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mDisplayBlanksAfterDozeConfig="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const-string v4, "  mBrightnessBucketsInDozeConfig="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    const-string v4, "  mDozeScaleFactor="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  --SEC_PMS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  AUTO_BRIGHTNESS_TYPE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    const-string v4, "  USE_SEC_LONG_TERM_MODEL="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    const-string v4, "  USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL="

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERMISSIBLE_RATIO_FOR_LONGTERM_MODEL:Z

    const-string v4, "  extraDim mExtraDimStrength= "

    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mExtraDimStrength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  extraDim mExtraDimIsActive= false"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  mForceDimSettingEnabled= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    invoke-static {v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V

    const-wide/16 v0, 0x32

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final getAmbientBrightnessInfo(F)Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientBrightnessThresholds:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v2, p1}, Lcom/android/server/display/config/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v3

    invoke-virtual {v2, p1}, Lcom/android/server/display/config/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getAmbientBrightnessInfo : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "%6d"

    const-string v6, "("

    invoke-static {v5, v1, v4, v6}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%.2f"

    invoke-static {v1, v5, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%6.0f"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v5, "%8.1f"

    invoke-static {v1, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, " (adj:"

    invoke-static {v3, p1, v4, v0}, Lcom/android/server/am/FreecessPkgStatus$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%+.1f"

    invoke-static {v1, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 4

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "getAmbientBrightnessStats: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mAmbientBrightnessStatsTracker:Lcom/android/server/display/AmbientBrightnessStatsTracker;

    if-eqz p0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AmbientBrightnessStatsTracker;->mAmbientBrightnessStats:Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;

    iget-object v2, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/server/display/AmbientBrightnessStatsTracker$AmbientBrightnessStats;->mStats:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    if-eqz v0, :cond_3

    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public final getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "getBrightnessEvents: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/BrightnessTracker;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    goto :goto_0

    :cond_2
    filled-new-array {p1}, [I

    move-result-object p0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v3, v0

    :goto_1
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_5

    aget v4, p0, v3

    if-eqz p2, :cond_4

    if-eq v4, p1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v0

    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    array-length p1, v1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    array-length p1, v1

    if-ge v0, p1, :cond_8

    aget-object p1, v1, v0

    iget p1, p1, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_6

    aget-object p1, v1, v0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance p1, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object p2, v1, v0

    invoke-direct {p1, p2, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;
    .locals 13

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/hardware/display/BrightnessInfo;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    iget v3, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    iget v4, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    iget v5, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    iget v6, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget v7, v0, Landroid/util/MutableInt;->value:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    iget v8, v0, Landroid/util/MutableFloat;->value:F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v9, v0, Landroid/util/MutableInt;->value:I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    iget v0, v0, Landroid/util/MutableInt;->value:I

    const/4 v10, 0x6

    if-ne v0, v10, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v10, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->screenBrightnessOverridePackage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    iget-boolean v12, p0, Landroid/util/MutableBoolean;->value:Z

    invoke-direct/range {v2 .. v12}, Landroid/hardware/display/BrightnessInfo;-><init>(FFFFIFIZLjava/lang/String;Z)V

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getFinalBrightness(FI)F
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    if-ltz v3, :cond_0

    cmpl-float v3, v1, v4

    if-eqz v3, :cond_0

    mul-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result p1

    const/16 v1, 0x80

    invoke-virtual {v5, p1, v1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v4

    if-lez v1, :cond_1

    const/16 p1, 0x800

    invoke-virtual {v5, v4, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v4

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    cmpl-float v3, v1, v2

    const/16 v6, 0x100

    if-ltz v3, :cond_2

    cmpg-float v3, p1, v1

    if-gez v3, :cond_2

    invoke-virtual {v5, v1, v6}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    cmpl-float v3, p1, v1

    if-lez v3, :cond_3

    invoke-virtual {v5, v1, v6}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    int-to-float v1, v1

    cmpl-float v7, p1, v1

    if-lez v7, :cond_4

    const/16 p1, 0x400

    invoke-virtual {v5, v1, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    cmpl-float v8, v1, v2

    const/16 v9, 0x200

    if-ltz v8, :cond_5

    cmpl-float v8, p1, v1

    if-lez v8, :cond_5

    invoke-virtual {v5, v1, v9}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v1

    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    invoke-virtual {v5, v7}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    cmpg-float v8, p1, v1

    if-gez v8, :cond_6

    invoke-virtual {v5, v1, v9}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v1

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    const/high16 v8, 0x80000

    if-eq v1, v7, :cond_8

    const/4 v9, 0x2

    if-eq v1, v9, :cond_7

    goto :goto_0

    :cond_7
    cmpg-float v1, p1, v4

    if-gtz v1, :cond_9

    invoke-static {v6}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    invoke-virtual {v5, p1, v8}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    goto :goto_0

    :cond_8
    cmpl-float v1, p1, v4

    if-lez v1, :cond_9

    invoke-virtual {v5, v4, v8}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, v4

    :cond_9
    :goto_0
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    move-result p2

    if-eqz p2, :cond_a

    const p2, 0x3ec28f5c    # 0.38f

    cmpl-float v1, p1, p2

    if-lez v1, :cond_a

    const/16 p1, 0x4000

    invoke-virtual {v5, p2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move p1, p2

    :cond_a
    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz p2, :cond_b

    const/16 p1, 0x2000

    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    goto :goto_1

    :cond_b
    move v2, p1

    :goto_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-nez p2, :cond_c

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-eqz p2, :cond_e

    :cond_c
    iget p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_e

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-eqz p1, :cond_d

    sget p1, Lcom/android/server/power/PowerManagerUtil;->LCD_FLASH_BRIGHTNESS:I

    if-eq p1, v3, :cond_d

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    goto :goto_2

    :cond_d
    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    :goto_2
    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/16 p1, 0x1000

    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz p1, :cond_f

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    goto :goto_3

    :cond_e
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    if-eqz p2, :cond_f

    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz p1, :cond_f

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz p1, :cond_f

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    :cond_f
    :goto_3
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenCurtainEnabled:Z

    if-eqz p1, :cond_10

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    const/16 p1, 0x31

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v2

    const/high16 p1, 0x40000

    invoke-virtual {v5, v2, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    :cond_10
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eqz p2, :cond_11

    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez p1, :cond_11

    cmpl-float p1, v2, v4

    if-lez p1, :cond_11

    const/high16 p1, 0x200000

    invoke-virtual {v5, v4, p1}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    goto :goto_4

    :cond_11
    move v4, v2

    :goto_4
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p2, p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-eq p1, p2, :cond_12

    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    if-nez p2, :cond_12

    iput-boolean v7, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    :cond_12
    return v4
.end method

.method public final handleBrightnessModeChange()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setUseAutoBrightness(Z)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    iget-object v0, v0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    if-eq v3, v0, :cond_3

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerHistorian:Lcom/android/server/power/PowerHistorian;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/power/PowerHistorian$MessageRecord;

    const-string/jumbo v3, "ShortTermModel: reset data, manual"

    invoke-direct {v2, v3}, Lcom/android/server/power/PowerHistorian$MessageRecord;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/power/PowerHistorian;->addRecord(ILcom/android/server/power/PowerHistorian$Record;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessModeChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[api] handleBrightnessModeChange: shouldUseAutoBrightness= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initialize(I)V
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/server/display/ColorFade;

    const-class v5, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    iget v6, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-direct {v4, v6, v5}, Lcom/android/server/display/ColorFade;-><init>(ILandroid/hardware/display/DisplayManagerInternal;)V

    iput-object v1, v4, Lcom/android/server/display/ColorFade;->mSemDvfsManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-boolean v2, v4, Lcom/android/server/display/ColorFade;->mIsSemDvfsSupported:Z

    move-object v9, v4

    goto :goto_0

    :cond_0
    move-object v9, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/display/DisplayPowerState;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v12

    iget-object v8, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayManagerService$1;

    iget v10, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    move v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;IILjava/util/concurrent/Executor;)V

    iput-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    const/4 p1, 0x0

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

    new-array v3, v0, [F

    fill-array-data v3, :array_0

    invoke-static {v7, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xa0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Lcom/android/server/display/DisplayPowerController$2;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v3, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v5, 0x140

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    new-instance v4, Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/server/display/RampAnimator$DualRampAnimator;-><init>(Ljava/lang/Object;Lcom/android/server/display/DisplayPowerState$1;Lcom/android/server/display/DisplayPowerState$1;)V

    iput-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setAnimatorRampSpeeds(Z)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/DisplayPowerController$4;

    iput-object v3, v0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/DisplayPowerController$4;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayPowerController;->noteScreenBrightness(F)V

    sget-object v0, Lcom/android/server/power/HqmDataDispatcher$HqmDataDispatcherHolder;->INSTANCE:Lcom/android/server/power/HqmDataDispatcher;

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v0

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_5

    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    const-string/jumbo v3, "Start"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p1, :cond_5

    iget-object v4, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "BrightnessTracker"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iput v3, p1, Lcom/android/server/display/BrightnessTracker;->mCurrentUserId:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    invoke-virtual {p1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_2
    new-instance p1, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object p1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda12;

    iget-object v0, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    iget-object v1, v0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "BrightnessSetting"

    const-string v3, "Duplicate Listener added"

    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v0, v0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSettingName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "screen_brightness_for_als"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_7
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "game_autobrightness_lock"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "auto_dim_screen"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final isLightSensorCovered()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean p0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    return p0
.end method

.method public final loadBrightnessRampRates()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    iget-wide v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    return-void
.end method

.method public final loadNitsRange(Landroid/content/res/Resources;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iget-object p1, v1, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    :goto_1
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Screen brightness nits configuration is unavailable; falling back"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x107015e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mNitsRange:[F

    return-void
.end method

.method public final logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v2, v2, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v3, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    cmpl-float v4, p2, v4

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move/from16 v21, v6

    goto :goto_0

    :cond_0
    const/16 v21, 0x0

    :goto_0
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mBrightness:F

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v9

    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v8, v4, 0x20

    const/high16 v10, -0x40800000    # -1.0f

    if-eqz v8, :cond_1

    iget v8, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mPowerFactor:F

    move v13, v8

    goto :goto_1

    :cond_1
    move v13, v10

    :goto_1
    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mRbcStrength:I

    :goto_2
    move v14, v4

    goto :goto_3

    :cond_2
    const/4 v4, -0x1

    goto :goto_2

    :goto_3
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    if-nez v4, :cond_3

    move v15, v10

    goto :goto_4

    :cond_3
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMax:F

    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v4

    move v15, v4

    :goto_4
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mThermalMax:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v4, v8

    if-nez v8, :cond_4

    :goto_5
    move/from16 v16, v10

    goto :goto_6

    :cond_4
    invoke-virtual {v7, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v10

    goto :goto_5

    :goto_6
    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v0, :cond_11

    iget v0, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mInitialBrightness:F

    invoke-virtual {v7, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v8

    iget v10, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mLux:F

    iget-object v11, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mPhysicalDisplayId:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mWasShortTermModelActive:Z

    iget-boolean v0, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutomaticBrightnessEnabled:Z

    iget-object v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v4, v4, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    packed-switch v4, :pswitch_data_0

    const/16 v19, 0x0

    goto :goto_8

    :pswitch_0
    const/16 v4, 0xa

    :goto_7
    move/from16 v19, v4

    goto :goto_8

    :pswitch_1
    const/16 v4, 0x9

    goto :goto_7

    :pswitch_2
    const/16 v4, 0x8

    goto :goto_7

    :pswitch_3
    const/4 v4, 0x7

    goto :goto_7

    :pswitch_4
    const/4 v4, 0x6

    goto :goto_7

    :pswitch_5
    const/4 v4, 0x5

    goto :goto_7

    :pswitch_6
    const/4 v4, 0x4

    goto :goto_7

    :pswitch_7
    const/4 v4, 0x3

    goto :goto_7

    :pswitch_8
    const/16 v19, 0x2

    goto :goto_8

    :pswitch_9
    move/from16 v19, v6

    :goto_8
    const/4 v4, 0x0

    :goto_9
    sget-object v5, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_BOUNDARIES:[F

    array-length v7, v5

    if-ge v4, v7, :cond_6

    aget v5, v5, v4

    cmpg-float v5, v9, v5

    if-gez v5, :cond_5

    sget-object v5, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_RANGE_INDEX:[I

    aget v4, v5, v4

    :goto_a
    move/from16 v20, v4

    goto :goto_b

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_6
    const/16 v4, 0x26

    goto :goto_a

    :goto_b
    iget v4, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mHbmMode:I

    if-ne v4, v6, :cond_7

    move/from16 v22, v6

    :goto_c
    const/4 v5, 0x2

    goto :goto_d

    :cond_7
    const/16 v22, 0x0

    goto :goto_c

    :goto_d
    if-ne v4, v5, :cond_8

    move/from16 v23, v6

    goto :goto_e

    :cond_8
    const/16 v23, 0x0

    :goto_e
    and-int/lit8 v4, v2, 0x2

    if-lez v4, :cond_9

    move/from16 v24, v6

    :goto_f
    move-object/from16 v4, p3

    goto :goto_10

    :cond_9
    const/16 v24, 0x0

    goto :goto_f

    :goto_10
    iget v4, v4, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    and-int/2addr v2, v6

    if-lez v2, :cond_a

    move/from16 v26, v6

    goto :goto_11

    :cond_a
    const/16 v26, 0x0

    :goto_11
    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_b

    move/from16 v27, v6

    goto :goto_12

    :cond_b
    const/16 v27, 0x0

    :goto_12
    and-int/lit8 v2, v3, 0x2

    if-lez v2, :cond_c

    move/from16 v28, v6

    goto :goto_13

    :cond_c
    const/16 v28, 0x0

    :goto_13
    and-int/lit8 v2, v3, 0x4

    if-lez v2, :cond_d

    move/from16 v29, v6

    goto :goto_14

    :cond_d
    const/16 v29, 0x0

    :goto_14
    and-int/lit8 v2, v3, 0x8

    if-lez v2, :cond_e

    move/from16 v30, v6

    goto :goto_15

    :cond_e
    const/16 v30, 0x0

    :goto_15
    iget v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mAutoBrightnessMode:I

    if-ne v1, v6, :cond_f

    move/from16 v31, v6

    goto :goto_16

    :cond_f
    const/16 v31, 0x0

    :goto_16
    and-int/lit8 v1, v3, 0x20

    if-lez v1, :cond_10

    move/from16 v32, v6

    goto :goto_17

    :cond_10
    const/16 v32, 0x0

    :goto_17
    const/16 v7, 0x1ee

    const/16 v18, 0x1

    move/from16 v17, v0

    move/from16 v25, v4

    invoke-static/range {v7 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IFFFLjava/lang/String;ZFIFFZIIIZZZZIZZZZZZZ)V

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final noteScreenBrightness(F)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToIntSetting(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    :goto_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-interface {v2, v1, v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenBrightness(III)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    xor-int/lit8 v1, p0, 0x1

    :cond_3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    :cond_4
    return-void
.end method

.method public final noteScreenState(II)V
    .locals 9

    const-string/jumbo v0, "noteDualScreenState: State="

    const/16 v1, 0x24d

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    invoke-static {v1, p1, v2, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v1, :cond_3

    :try_start_0
    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v4, :cond_2

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v1, :cond_1

    if-nez v3, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-eq v1, v2, :cond_3

    :cond_0
    if-ne v3, v2, :cond_1

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", dualScreenPolicy="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-interface {v0, v3, p1, p2, v1}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(IIII)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, v3, p1, p2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mHqmDataDispatcher:Lcom/android/server/power/HqmDataDispatcher;

    if-eqz p2, :cond_b

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsFirstDisplay:Z

    xor-int/lit8 v3, p0, 0x1

    :cond_4
    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz p0, :cond_b

    if-ne v3, v2, :cond_b

    :goto_1
    invoke-virtual {p2, v3}, Lcom/android/server/power/HqmDataDispatcher;->getDisplayStat(I)Lcom/android/server/power/HqmDataDispatcher$DisplayStat;

    move-result-object p0

    iget v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    if-ne p1, v5, :cond_7

    goto :goto_3

    :cond_7
    move v2, v4

    :goto_3
    iget-object v6, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    iget-wide v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnCount:J

    invoke-virtual {v6}, Lcom/android/server/power/HqmDataDispatcher$Timer;->start()V

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_a

    if-nez v2, :cond_a

    iget-wide v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    long-to-float v1, v1

    invoke-virtual {v6}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v2

    add-float/2addr v2, v1

    float-to-long v1, v2

    iput-wide v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenOnDuration:J

    iget v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget-object v6, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mBrightnessDuration:[J

    aget-wide v7, v6, v1

    long-to-float v7, v7

    iget-object v8, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessTimers:[Lcom/android/server/power/HqmDataDispatcher$Timer;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v8

    add-float/2addr v8, v7

    float-to-long v7, v8

    aput-wide v7, v6, v1

    iput v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mCurrentBrightnessRange:I

    :cond_9
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_HQM_SEND_LBHD_HIGHEST:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    if-eqz v1, :cond_a

    iget-wide v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    long-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestTimer:Lcom/android/server/power/HqmDataDispatcher$Timer;

    invoke-virtual {v2}, Lcom/android/server/power/HqmDataDispatcher$Timer;->stop()F

    move-result v2

    add-float/2addr v2, v1

    float-to-long v1, v2

    iput-wide v1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestDuration:J

    iput-boolean v4, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenBrightnessHighestStarted:Z

    :cond_a
    :goto_4
    iput p1, p0, Lcom/android/server/power/HqmDataDispatcher$DisplayStat;->mScreenState:I

    if-eqz v0, :cond_b

    if-ne p1, v5, :cond_b

    iget p0, p2, Lcom/android/server/power/HqmDataDispatcher;->mGlobalBrightness:F

    invoke-virtual {p2, p0, v3}, Lcom/android/server/power/HqmDataDispatcher;->noteScreenBrightness(FI)V

    :cond_b
    return-void
.end method

.method public final notifyBrightnessTrackerChanged(FZZZZZ)V
    .locals 14

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v1, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v3

    if-nez p5, :cond_10

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz p4, :cond_10

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v1, :cond_0

    if-nez v11, :cond_1

    goto/16 :goto_5

    :cond_0
    if-eqz v2, :cond_10

    :cond_1
    if-eqz p6, :cond_10

    const/4 v1, 0x0

    cmpg-float v4, v3, v1

    if-gez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v12, 0x0

    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_4

    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v5, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v5, :cond_5

    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_HBM:Z

    if-eqz v5, :cond_5

    iget v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sget v5, Lcom/android/server/power/PowerManagerUtil;->HBM_LUX:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    :cond_4
    move v13, v12

    goto :goto_0

    :cond_5
    move/from16 v13, p2

    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    invoke-static {v4, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    cmpl-float v1, v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v1, :cond_6

    cmpl-float v1, v5, v6

    if-eqz v1, :cond_6

    goto/16 :goto_5

    :cond_6
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:F

    iget-boolean v0, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_7

    iget v6, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    :cond_7
    move v4, v6

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    const/4 v1, 0x1

    const-string/jumbo v5, "notifyBrightnessChanged(brightness=%f, userInitiated=%b)"

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    if-eqz v0, :cond_8

    move v6, v1

    goto :goto_1

    :cond_8
    move v6, v12

    :goto_1
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v10

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v11, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    iget-object p0, v11, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move/from16 v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;Landroid/util/Spline;)V

    iget-object p0, v11, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    invoke-virtual {p0, v1, v13, v12, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getMode()I

    move-result v6

    if-nez v6, :cond_a

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    if-eqz v0, :cond_a

    move v6, v1

    goto :goto_2

    :cond_a
    move v6, v12

    :goto_2
    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    new-array v10, v7, [F

    if-nez v7, :cond_b

    goto :goto_3

    :cond_b
    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    if-ge v8, v11, :cond_c

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v0, v8, v10, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_c
    iget-object v7, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr v11, v8

    invoke-static {v7, v8, v10, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    iget v8, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iget v11, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v8, v11

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    invoke-static {v7, v12, v10, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    new-array v11, v0, [J

    if-nez v0, :cond_d

    goto :goto_4

    :cond_d
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    if-ge v7, v8, :cond_e

    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-static {p0, v7, v11, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr v8, v7

    invoke-static {v0, v7, v11, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v7, v8

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    invoke-static {v0, v12, v11, v7, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    sget-boolean p0, Lcom/android/server/display/BrightnessTracker;->DEBUG:Z

    if-eqz p0, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v5, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BrightnessTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p0, v2, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    new-instance v0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;

    iget-object v2, v2, Lcom/android/server/display/BrightnessTracker;->mInjector:Lcom/android/server/display/BrightnessTracker$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move/from16 v5, p3

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;-><init>(FFZZJLjava/lang/String;[F[J)V

    invoke-virtual {p0, v1, v13, v12, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    :goto_5
    return-void
.end method

.method public final onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;II)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p2

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Display Device is null in DisplayPowerController for display: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/power/Slog;->$r8$clinit:I

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget-object v7, v2, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v12, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v13, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-boolean v2, v0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    iget v4, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    :goto_0
    move v14, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    iget-object v15, v4, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;

    iget-object v6, v5, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    move-object/from16 v11, p1

    move/from16 v4, p3

    invoke-direct/range {v0 .. v16}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/DisplayPowerController;ZZILcom/android/server/display/DisplayDevice;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/HighBrightnessModeMetadata;IIZLjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final putAutoBrightnessTransitionTime(FFF)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v1, v1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget v1, v1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v6, v1, v3

    if-lez v6, :cond_0

    cmpg-float v6, p3, v3

    if-gtz v6, :cond_0

    sub-float v0, v1, v3

    sub-float p3, v3, p3

    goto :goto_0

    :cond_0
    cmpg-float v3, v3, p3

    if-gez v3, :cond_1

    cmpg-float v3, p3, v1

    if-gez v3, :cond_1

    sub-float/2addr v1, p3

    move p3, v0

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getTransitionTimeWithHbm: rateAtHbm: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " currentBrightness: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " targetBrightness: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p3

    :goto_0
    float-to-double v0, v0

    float-to-double v6, p2

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p2, v0

    float-to-double v0, p3

    float-to-double v6, p1

    div-double/2addr v0, v6

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    add-int/2addr p2, p1

    goto :goto_1

    :cond_2
    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    float-to-double v0, p1

    div-double/2addr p2, v0

    mul-double/2addr p2, v4

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "putAutoBrightnessTransitionTime: transitionTime="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "auto_brightness_transition_time"

    const/4 p3, -0x2

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final reportStats(F)V
    .locals 5

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget v1, v1, Landroid/util/MutableFloat;->value:F

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    cmpl-float v1, v4, v1

    if-lez v1, :cond_3

    move v2, v3

    :cond_3
    if-nez v0, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastStatsBrightness:F

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    monitor-enter v1

    const/16 p0, 0x1a1

    :try_start_1
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIF)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget p1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayStatsId:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestPowerState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", waitForNegativeProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    iget-object v3, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    iget-boolean p2, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez p2, :cond_2

    iput-boolean v2, v1, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    monitor-exit v3

    move p2, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move p2, v4

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_3

    new-instance p2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    :goto_1
    move p2, v2

    goto :goto_2

    :cond_3
    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    goto :goto_1

    :cond_4
    :goto_2
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    if-nez v1, :cond_5

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    move p2, v2

    :cond_5
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    if-nez p1, :cond_6

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    move p2, v2

    :cond_6
    if-eqz p2, :cond_7

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez p1, :cond_7

    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    :cond_7
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v4, "saveBrightnessInfo: brt:"

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    monitor-enter v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    :try_start_0
    iget v7, v3, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v3, :cond_1

    iget v6, v3, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    :cond_1
    const/4 v8, 0x0

    if-eqz v3, :cond_2

    iget v9, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessMaxReason:I

    goto :goto_1

    :cond_2
    move v9, v8

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    goto :goto_2

    :cond_3
    new-instance v3, Lcom/android/server/display/brightness/BrightnessReason;

    invoke-direct {v3, v8}, Lcom/android/server/display/brightness/BrightnessReason;-><init>(I)V

    :goto_2
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v10, v10, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v10, v10, Lcom/android/server/display/HighBrightnessModeController;->mBrightnessMin:F

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v10}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v10, v10, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightness:Landroid/util/MutableFloat;

    invoke-static {v10, v1}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v10

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v11, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->adjustedBrightness:Landroid/util/MutableFloat;

    invoke-static {v11, v2}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v11

    or-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v11, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMin:Landroid/util/MutableFloat;

    invoke-static {v11, v6}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v11

    or-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v11, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMax:Landroid/util/MutableFloat;

    invoke-static {v11, v7}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v11

    or-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v12, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmMode:Landroid/util/MutableInt;

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v13, v13, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v14, v13, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    iget v15, v12, Landroid/util/MutableInt;->value:I

    const/16 v16, 0x1

    if-eq v15, v14, :cond_4

    iput v14, v12, Landroid/util/MutableInt;->value:I

    move/from16 v12, v16

    goto :goto_3

    :cond_4
    move v12, v8

    :goto_3
    or-int/2addr v10, v12

    iget-object v11, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->hbmTransitionPoint:Landroid/util/MutableFloat;

    invoke-virtual {v13}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v12

    const/high16 v14, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz v12, :cond_5

    iget-object v12, v13, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v12, v12, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    goto :goto_4

    :cond_5
    move v12, v14

    :goto_4
    invoke-static {v11, v12}, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->checkAndSetFloat(Landroid/util/MutableFloat;F)Z

    move-result v11

    or-int/2addr v10, v11

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v12, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessMaxReason:Landroid/util/MutableInt;

    iget v13, v12, Landroid/util/MutableInt;->value:I

    if-eq v13, v9, :cond_6

    iput v9, v12, Landroid/util/MutableInt;->value:I

    move/from16 v12, v16

    goto :goto_5

    :cond_6
    move v12, v8

    :goto_5
    or-int/2addr v10, v12

    iget-object v12, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->brightnessReason:Landroid/util/MutableInt;

    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    iget v13, v12, Landroid/util/MutableInt;->value:I

    if-eq v13, v3, :cond_7

    iput v3, v12, Landroid/util/MutableInt;->value:I

    move/from16 v3, v16

    goto :goto_6

    :cond_7
    move v3, v8

    :goto_6
    or-int/2addr v3, v10

    iget-object v10, v11, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->isAnimating:Landroid/util/MutableBoolean;

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v11

    if-eqz v11, :cond_8

    move/from16 v11, v16

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_8
    move v11, v8

    :goto_7
    iget-boolean v12, v10, Landroid/util/MutableBoolean;->value:Z

    if-eq v12, v11, :cond_9

    iput-boolean v11, v10, Landroid/util/MutableBoolean;->value:Z

    move/from16 v10, v16

    goto :goto_8

    :cond_9
    move v10, v8

    :goto_8
    or-int/2addr v3, v10

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mCachedBrightnessInfo:Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;

    iget-object v11, v10, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->screenBrightnessOverridePackage:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessOverridePackage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    iput-object v12, v10, Lcom/android/server/display/DisplayPowerController$CachedBrightnessInfo;->screenBrightnessOverridePackage:Ljava/lang/String;

    move/from16 v10, v16

    goto :goto_9

    :cond_a
    move v10, v8

    :goto_9
    or-int/2addr v3, v10

    if-eqz v3, :cond_d

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " adjBrt:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " min:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " max:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " hbm:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v1, v1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tp:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v1, v1, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v1}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, v1, Lcom/android/server/display/HighBrightnessModeController;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget v14, v1, Lcom/android/server/display/config/HighBrightnessModeData;->transitionPoint:F

    :cond_b
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " throttler:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isAnimating:"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    move/from16 v8, v16

    :cond_c
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    monitor-exit v5

    return v3

    :goto_a
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z
    .locals 0

    invoke-virtual {p0, p1, p1, p2}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result p0

    return p0
.end method

.method public final sendOnStateChangedWithWakelock()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/display/WakelockController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/WakelockController;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final sendUpdatePowerState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendUpdatePowerStateLocked()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final setAnimatorRampSpeeds(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeIdleMillis:J

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeIdleMillis:J

    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampIncreaseMaxTimeMillis:J

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampDecreaseMaxTimeMillis:J

    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    iget-object p0, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/display/RampAnimator;->setAnimationTimeLimits(JJ)V

    return-void
.end method

.method public final setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBrightnessConfiguration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " shouldResetShortTermModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setBrightnessToFollow(FFFZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v0, p3}, Lcom/android/server/display/BrightnessRangeController;->onAmbientLuxChange(F)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p2, p3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    if-nez p3, :cond_0

    invoke-virtual {v0, p4, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result p2

    invoke-static {p2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {v0, p4, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p4, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightnessToFollow(ZF)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method public final setFreezeBrightnessMode(Z)I
    .locals 4

    const-string/jumbo v0, "setFreezeBrightnessMode: "

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object p1, p1, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget p1, p1, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string/jumbo v0, "NON_HBM_FREEZE_MODE"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v0, "HBM_FREEZE_MODE"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessMode:Z

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/android/server/display/DisplayPowerController;->mFreezeBrightnessModeSelector:I

    monitor-exit v1

    return p0

    :cond_2
    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setRampSpeedToFollower(FF)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeed:F

    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeedAtHbm:F

    return-void
.end method

.method public final setReportedScreenState(I)V
    .locals 3

    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    :cond_0
    return-void
.end method

.method public final setScreenState(IIZ)Z
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget-object v7, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v7, v7, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v7, v2, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    const-wide/32 v8, 0x20000

    iget-object v10, v1, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    iget-boolean v11, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-nez v11, :cond_5

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    if-nez v11, :cond_9

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    const-string/jumbo v11, "Screen on blocked by displayoffload"

    invoke-static {v8, v9, v11, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    new-instance v12, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    const/4 v13, 0x1

    invoke-direct {v12, v1, v6, v13}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/lang/Object;I)V

    iput-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    invoke-virtual {v6, v12}, Lcom/android/server/display/DisplayOffloadSessionImpl;->blockScreenOn(Ljava/lang/Runnable;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v12, v14

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Tried blocking screen on for offloading but failed. So, end trace after "

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " ms."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9, v11, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_4

    :cond_4
    const-string v6, "Blocking screen on for offloading."

    invoke-static {v10, v6}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    if-nez v6, :cond_9

    iget-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    if-eqz v6, :cond_9

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v6, v6, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadSessionCancelBlockScreenOn:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v6}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v11, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Lcom/android/server/display/DisplayOffloadSessionImpl;->cancelBlockScreenOn()V

    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOnByDisplayOffload()V

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mScreenTurningOnWasBlockedByDisplayOffload:Z

    :cond_9
    :goto_4
    iget-object v6, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    const/4 v11, 0x3

    const/4 v12, -0x1

    iget v13, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    iget-object v14, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    if-nez v7, :cond_a

    iget v15, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v15, v12, :cond_17

    :cond_a
    iget-object v15, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v15, v15, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v15, v11, :cond_c

    const/4 v8, 0x4

    if-ne v15, v8, :cond_b

    goto :goto_5

    :cond_b
    move v8, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v8, v4

    :goto_6
    iget-boolean v9, v1, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz v9, :cond_e

    if-eqz v8, :cond_d

    if-ne v2, v0, :cond_d

    iget-boolean v8, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    if-nez v8, :cond_d

    const-string/jumbo v0, "setScreenState(): mSeamlessAodReady : false AOD"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    iget-object v2, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    iput-boolean v4, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    return v3

    :cond_d
    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    iput-boolean v3, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    :cond_e
    if-eqz v5, :cond_13

    iget-boolean v8, v6, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-nez v8, :cond_13

    iget v8, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eq v8, v0, :cond_11

    if-ne v8, v12, :cond_f

    goto :goto_7

    :cond_f
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    if-eqz v0, :cond_13

    :cond_10
    return v3

    :cond_11
    :goto_7
    invoke-virtual {v1, v11}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    if-nez v0, :cond_12

    const-string/jumbo v0, "Screen off blocked"

    const-wide/32 v4, 0x20000

    invoke-static {v4, v5, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    const-string v0, "Blocking screen off"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOff()"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    check-cast v14, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v14, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return v3

    :cond_13
    if-nez p3, :cond_17

    if-eqz v7, :cond_17

    if-eqz v13, :cond_14

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    if-nez v0, :cond_14

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v0, :cond_17

    :cond_14
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    if-nez v0, :cond_17

    const-string/jumbo v0, "ScreenState"

    const-wide/32 v7, 0x20000

    invoke-static {v7, v8, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string/jumbo v0, "debug.tracing.screen_state"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v8, "Failed to set a system property: key=debug.tracing.screen_state value="

    const-string v9, " "

    invoke-static {v8, v7, v9}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v7, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v7, v2, :cond_16

    sget-boolean v7, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v7, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setScreenState: state="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Landroid/view/Display;->stateReasonToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DisplayPowerState"

    invoke-static {v8, v7}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iput v2, v0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_16
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    :cond_17
    if-eqz v5, :cond_18

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v0, :cond_18

    iget-boolean v0, v6, Lcom/android/server/display/DisplayPowerProximityStateController;->mScreenOffBecauseOfProximity:Z

    if-nez v0, :cond_18

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    const-string/jumbo v0, "mWindowManagerPolicy.screenTurnedOff()"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    move-object v2, v14

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff(IZ)V

    goto :goto_9

    :cond_18
    if-nez v5, :cond_19

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v11, :cond_19

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    const-string/jumbo v0, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    move-object v2, v14

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff(IZ)V

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    :cond_19
    :goto_9
    if-nez v5, :cond_1d

    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v0, :cond_1a

    if-ne v0, v12, :cond_1d

    :cond_1a
    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "Screen on blocked"

    const-wide/32 v7, 0x20000

    invoke-static {v7, v8, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    const-string v0, "Blocking screen on until initial contents have been drawn."

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    goto :goto_a

    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    :cond_1c
    :goto_a
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOn() +"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    check-cast v14, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v14, v13, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    const-string v0, "DisplayPowerController"

    const-string/jumbo v2, "Window Manager Policy screenTurningOn complete"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOn() -"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    if-nez v0, :cond_1e

    move v3, v4

    :cond_1e
    return v3
.end method

.method public final setTestModeEnabled(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setTestModeEnabled:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public final setUpAutoBrightness(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 41

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-boolean v1, v1, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    iput-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setUpAutoBrightness: mDisplayId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v6, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-static {v0, v3, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v6, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const/4 v5, 0x2

    invoke-static {v0, v3, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v3

    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v7, v7, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v7}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v3, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v3, v3, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModeBedtimeWearFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    const/4 v5, 0x3

    invoke-static {v0, v3, v5}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;I)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessMappingStrategy;->getUserLux()F

    move-result v3

    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v8, v7, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v8}, Lcom/android/server/display/BrightnessMappingStrategy;->getUserBrightness()F

    move-result v8

    iget-object v7, v7, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v7, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v7

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v8, v8, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v8, v8, Lcom/android/server/display/BrightnessMappingStrategy;->mUserOffsetManager:Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;

    monitor-enter v8

    :try_start_0
    iget-object v9, v8, Lcom/android/server/display/BrightnessMappingStrategy$UserOffsetManager;->mUserPoints:Ljava/util/ArrayList;

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-wide v10, v8, Lcom/android/server/display/AutomaticBrightnessController;->mNonInteractiveTime:J

    move/from16 v31, v3

    move/from16 v32, v7

    move-object/from16 v36, v9

    :goto_0
    move-wide/from16 v37, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    const/high16 v3, -0x40800000    # -1.0f

    const-wide/16 v10, 0x0

    move/from16 v31, v3

    move/from16 v32, v31

    const/16 v36, 0x0

    goto :goto_0

    :goto_1
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v3, :cond_11

    instance-of v3, v3, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    if-eqz v3, :cond_5

    sput-boolean v4, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    goto :goto_2

    :cond_5
    sput-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    :goto_2
    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v4, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    iget-object v7, v3, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    iget-object v8, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    iget-object v9, v3, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    iget-object v10, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchHigh:Lcom/android/server/display/config/SecHysteresisLevels;

    iget-object v11, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessThresholdsTouchLow:Lcom/android/server/display/config/SecHysteresisLevels;

    iget-wide v13, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    move-object v12, v6

    iget-wide v5, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    iget-wide v1, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    move-wide/from16 v17, v1

    iget-wide v0, v3, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x10e0045

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/16 v15, 0x32

    if-le v15, v3, :cond_6

    move-object/from16 v15, p0

    move-wide/from16 v22, v0

    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v20, v2

    const-string v2, "Expected config_autoBrightnessInitialLightSensorRate (50) to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object/from16 v15, p0

    move-wide/from16 v22, v0

    move/from16 v20, v2

    :goto_3
    iget v0, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v0, :cond_7

    iget-boolean v1, v15, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10041

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    :cond_8
    if-nez v0, :cond_9

    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_9

    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10044

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    :cond_9
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_a

    iget v1, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-nez v1, :cond_a

    iget-object v1, v15, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    iget-object v0, v0, Lcom/android/server/display/BrightnessTracker;->mBgHandler:Lcom/android/server/display/BrightnessTracker$TrackerHandler;

    const/4 v2, 0x5

    move/from16 p1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_a
    move/from16 p1, v3

    const/4 v3, 0x0

    :goto_4
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->stop()V

    :cond_b
    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    move-wide/from16 v39, v22

    move-object/from16 v23, v7

    move/from16 v7, v20

    move-wide/from16 v19, v39

    move-object/from16 v22, v4

    const/4 v2, 0x0

    iget-object v4, v15, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-wide/from16 v24, v5

    iget-object v5, v15, Lcom/android/server/display/DisplayPowerController;->mLightSensor:Landroid/hardware/Sensor;

    move-object/from16 v34, v10

    iget v10, v15, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    iget-object v6, v15, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v3, v15, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-object/from16 v26, v0

    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    move-object/from16 v27, v1

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    move/from16 v30, v0

    iget-object v0, v15, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v33, v0

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v29, v1

    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$Injector;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v15, v24

    const/16 v24, 0x0

    move-object/from16 v25, v9

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v26, v6

    move-object v6, v12

    const/16 v12, 0x32

    move/from16 v28, v24

    move-object/from16 v24, v8

    const/4 v8, 0x0

    move-object/from16 v28, v3

    move-object/from16 v35, v11

    move-object/from16 v3, v27

    move/from16 v11, p1

    move-object/from16 v27, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v38}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Injector;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/util/SparseArray;IFFFIIJJJJZLcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/brightness/clamper/BrightnessClamperController;IIFFLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/HysteresisLevels;Lcom/android/server/display/config/HysteresisLevels;Ljava/util/List;J)V

    iput-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v4, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v6, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-boolean v8, v2, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget v9, v2, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    iget-object v3, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v0, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v0, v0, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mAutoBrightnessFallbackStrategy:Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_c

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    :cond_c
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/display/brightness/BrightnessEvent;

    const/16 v3, 0x64

    invoke-direct {v0, v1, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    const/4 v15, 0x0

    iput-object v15, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    goto :goto_5

    :cond_d
    const/4 v15, 0x0

    :goto_5
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    if-nez v3, :cond_e

    move-object v8, v15

    goto :goto_6

    :cond_e
    iget-object v4, v3, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-static {v0, v4, v3, v1}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object v5

    move-object v8, v5

    :goto_6
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    if-eqz v8, :cond_f

    if-eqz v11, :cond_f

    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mInjector:Lcom/android/server/display/DisplayPowerController$Injector;

    iget-object v7, v2, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v9, v2, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v10, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;-><init>(I)V

    iget-object v12, v2, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/display/ScreenOffBrightnessSensorController;

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/ScreenOffBrightnessSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Landroid/os/Handler;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;[ILcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v6, v2, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    :cond_f
    iget-object v0, v2, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_10

    iget-object v1, v2, Lcom/android/server/display/DisplayPowerController;->defaultModeBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    :goto_7
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_11
    iput-boolean v1, v2, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    return-void
.end method

.method public final shouldEnableHdrRampRateCase()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget v1, p0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    iget v2, v0, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result p0

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldEnableMoreFastRampRateCase()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v0, v0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-ne v3, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget p0, p0, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    if-eq v0, p0, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    if-ne p0, v2, :cond_4

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final unblockScreenOff()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unblocked screen off after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "Screen off blocked"

    const/4 v0, 0x0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, p0, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final unblockScreenOn()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unblocked screen on after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x20000

    const-string/jumbo p0, "Screen on blocked"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    sget-object p0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDone:Z

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWakeUpStartTime:J

    iput-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    :cond_0
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsStartTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mWmsDuration:I

    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->mFrameDone:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteWakeupEnd(Z)V

    :cond_1
    return-void
.end method

.method public final unblockScreenOnByDisplayOffload()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockByDisplayOffloadStartRealTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unblocked screen on for offloading after "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const-wide/32 v0, 0x20000

    const-string/jumbo v2, "Screen on blocked by displayoffload"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public final updatePowerState()V
    .locals 3

    const-wide/32 v0, 0x20000

    const-string v2, "DisplayPowerController#updatePowerState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerStateInternal()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final updatePowerStateInternal()V
    .locals 46

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->reset()V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mStopped:Z

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_68

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v8, 0x1

    const/4 v4, 0x3

    if-nez v3, :cond_2

    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move v10, v2

    move v6, v4

    move v2, v8

    goto :goto_0

    :cond_2
    iget-boolean v5, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_3

    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerProximityStateController;->updatePendingProximityRequestsLocked()V

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move v10, v2

    move v6, v5

    move v2, v7

    goto :goto_0

    :cond_3
    iget v5, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move v6, v5

    move v2, v7

    move v10, v2

    :goto_0
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    invoke-virtual {v1, v9, v11, v12}, Lcom/android/server/display/state/DisplayStateController;->updateDisplayState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ZZ)Landroid/util/Pair;

    move-result-object v1

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v2, :cond_6

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mBootCompleted:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v9

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController;->initialize(I)V

    :cond_6
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    if-eqz v2, :cond_7

    move v2, v9

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    if-eqz v9, :cond_8

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v12}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v12

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerProximityStateController;->isProximityPositive()Z

    move-result v14

    iget-boolean v15, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/display/EarlyWakeUpManager;->update(ZIZLcom/android/server/display/AutomaticBrightnessController;ZZ)V

    goto :goto_3

    :cond_7
    move v2, v9

    :cond_8
    :goto_3
    iget-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicyChanged:Z

    if-eqz v9, :cond_a

    sget-boolean v9, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v9, :cond_9

    invoke-virtual {v0, v2, v7}, Lcom/android/server/display/DisplayPowerController;->noteScreenState(II)V

    :cond_9
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicyChanged:Z

    sget-object v9, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    invoke-virtual {v9}, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->setSkip()V

    :cond_a
    iget-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    if-eqz v9, :cond_b

    iget-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mIsInTransition:Z

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    invoke-virtual {v9}, Lcom/android/server/display/state/DisplayStateController;->setPerformScreenOffTransition()V

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mPendingTransitionOffInDualCase:Z

    :cond_b
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v9, v9, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    iget-object v10, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayStateController:Lcom/android/server/display/state/DisplayStateController;

    invoke-virtual {v11}, Lcom/android/server/display/state/DisplayStateController;->shouldPerformScreenOffTransition()Z

    move-result v11

    invoke-virtual {v0, v2, v10, v11}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget v15, v2, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/server/display/feature/DisplayManagerFlags;->isNormalBrightnessForDozeParameterEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    if-nez v10, :cond_c

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v2, v8, :cond_d

    :cond_c
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    move v2, v8

    goto :goto_4

    :cond_e
    move v2, v7

    goto :goto_4

    :cond_f
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    :goto_4
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    const/4 v11, 0x7

    if-eqz v10, :cond_12

    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v10, :cond_11

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->clearAdaptiveBrightnessLongtermModelBuilder()V

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilderInternal(Z)V

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v10, :cond_10

    iget-object v12, v10, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTag:Ljava/lang/String;

    const-string/jumbo v13, "notifyShortTermResetValid()"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v10, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    :cond_11
    :goto_5
    iget-boolean v10, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    move/from16 v17, v10

    goto :goto_6

    :cond_12
    move/from16 v17, v7

    :goto_6
    const/4 v10, 0x4

    if-eq v15, v4, :cond_14

    if-ne v15, v10, :cond_13

    goto :goto_7

    :cond_13
    move v12, v7

    goto :goto_8

    :cond_14
    :goto_7
    move v12, v8

    :goto_8
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v13, v8, :cond_15

    move v14, v8

    goto :goto_9

    :cond_15
    move v14, v7

    :goto_9
    if-ne v6, v8, :cond_16

    if-ne v13, v4, :cond_16

    invoke-static {v9}, Landroid/view/Display;->isOnState(I)Z

    move-result v13

    if-nez v13, :cond_17

    :cond_16
    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-static {v15}, Landroid/view/Display;->isOnState(I)Z

    move-result v13

    if-eqz v13, :cond_18

    :cond_17
    move/from16 v22, v8

    goto :goto_a

    :cond_18
    move/from16 v22, v7

    :goto_a
    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedAodMode:Z

    if-eqz v13, :cond_1a

    if-nez v12, :cond_19

    iget-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v12, :cond_19

    if-eqz v14, :cond_1a

    :cond_19
    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-static {v12}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v12

    if-nez v12, :cond_1a

    move/from16 v19, v8

    :goto_b
    move v12, v10

    goto :goto_c

    :cond_1a
    move/from16 v19, v7

    goto :goto_b

    :goto_c
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    move v13, v11

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v14, v13

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    move/from16 v16, v14

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v12, v12, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget v12, v12, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    move/from16 v24, v3

    if-eqz v4, :cond_1b

    iget v4, v4, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    int-to-float v4, v4

    :goto_d
    const/high16 v25, 0x3f800000    # 1.0f

    goto :goto_e

    :cond_1b
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_d

    :goto_e
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    move/from16 v18, v15

    move v15, v12

    move/from16 v12, v18

    move/from16 v18, v3

    move/from16 v3, v16

    move/from16 v16, v4

    const/4 v4, 0x4

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILcom/android/server/display/DisplayOffloadSessionImpl;ZFFZIZ)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v10

    move v15, v12

    iget v11, v10, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v13, v10, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v12, v13}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    iget-boolean v12, v10, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    const/high16 v14, 0x10000

    if-eqz v13, :cond_1c

    iget v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-nez v13, :cond_1c

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v13

    if-ne v13, v8, :cond_1c

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v13, v11, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    :cond_1c
    move/from16 v26, v11

    move/from16 v27, v26

    iget v11, v10, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    invoke-virtual {v10}, Lcom/android/server/display/DisplayBrightnessState;->getCustomHbmAnimationRate()F

    move-result v28

    invoke-virtual {v10}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessAdjustmentFlag()I

    move-result v29

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getIsUserSetScreenBrightnessUpdated()Z

    move-result v13

    iget-object v14, v10, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    if-eqz v14, :cond_1d

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v3, v14}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    :cond_1d
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozing()Z

    move-result v3

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    if-nez v14, :cond_20

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v14, :cond_20

    iget-boolean v4, v10, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    if-eqz v4, :cond_1f

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsEnabled:Z

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v4, :cond_1e

    if-ne v4, v8, :cond_1f

    if-nez v3, :cond_1f

    :cond_1e
    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    const/4 v8, -0x1

    if-ne v4, v8, :cond_1f

    const/4 v4, 0x1

    goto :goto_f

    :cond_1f
    move v4, v7

    :goto_f
    invoke-virtual {v14, v4}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_20
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isShortTermModelActive()Z

    move-result v8

    invoke-virtual {v10}, Lcom/android/server/display/DisplayBrightnessState;->isUserInitiatedChange()Z

    move-result v4

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v14}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v14

    move/from16 v18, v3

    const/4 v3, 0x2

    if-nez v14, :cond_26

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->areAutoBrightnessModesEnabled()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v4

    if-nez v4, :cond_21

    if-eqz v2, :cond_22

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4, v3, v7}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    :cond_21
    :goto_10
    move-object v4, v10

    goto :goto_11

    :cond_22
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isAutoBrightnessModeBedtimeWearEnabled()Z

    move-result v4

    if-eqz v4, :cond_23

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    if-eqz v4, :cond_23

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v14, 0x3

    invoke-virtual {v4, v14, v7}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_10

    :cond_23
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4, v7, v7}, Lcom/android/server/display/AutomaticBrightnessController;->switchMode(IZ)V

    goto :goto_10

    :goto_11
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v14

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move/from16 v20, v17

    move/from16 v17, v13

    move v13, v14

    iget v14, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useNormalBrightnessForDoze:Z

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v7}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getLastUserSetScreenBrightness()F

    move-result v7

    move-object/from16 v34, v1

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsWearBedtimeModeEnabled:Z

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->isLightSensorCovered()Z

    move-result v19

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    move/from16 v16, v21

    move/from16 v21, v1

    move v1, v12

    move/from16 v12, v18

    move/from16 v18, v16

    move/from16 v16, v15

    move v15, v3

    move-object v3, v4

    move v4, v11

    move/from16 v11, v16

    move/from16 v16, v7

    const/high16 v7, 0x10000

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessState(IZIIZFZZZZI)V

    move v15, v11

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v10}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v10

    if-nez v10, :cond_24

    if-eqz v16, :cond_25

    :cond_24
    const/4 v10, 0x1

    goto :goto_12

    :cond_25
    const/4 v10, 0x0

    :goto_12
    move/from16 v18, v10

    move v10, v4

    goto :goto_13

    :cond_26
    move-object/from16 v34, v1

    move-object v3, v10

    move v10, v11

    move v1, v12

    move/from16 v16, v13

    const/high16 v7, 0x10000

    move/from16 v18, v4

    :goto_13
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v11}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v11

    if-eq v4, v11, :cond_29

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-nez v4, :cond_27

    const/4 v4, 0x1

    if-ne v6, v4, :cond_29

    :cond_27
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v9}, Landroid/view/Display;->isOnState(I)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    :cond_29
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    if-nez v4, :cond_2c

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpEnabled:Z

    if-eqz v4, :cond_2a

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/EarlyWakeUpManager;

    invoke-virtual {v4}, Lcom/android/server/display/EarlyWakeUpManager;->isEarlyLightSensorEnabled()Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_14

    :cond_2a
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessDisabledDueToDisplayOff()Z

    move-result v4

    if-eqz v4, :cond_2b

    const/4 v4, 0x3

    goto :goto_15

    :cond_2b
    const/4 v4, 0x2

    goto :goto_15

    :cond_2c
    :goto_14
    const/4 v4, 0x1

    :goto_15
    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v9, v4}, Lcom/android/server/display/BrightnessRangeController;->setAutoBrightnessEnabled(I)V

    invoke-virtual {v3}, Lcom/android/server/display/DisplayBrightnessState;->shouldUpdateScreenBrightnessSetting()Z

    move-result v4

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v9

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v11

    if-eqz v11, :cond_2d

    iget-object v11, v3, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v11}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2d

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v11, :cond_2d

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_2d
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v11}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v11

    const/16 v12, 0xe

    const/high16 v19, -0x40800000    # -1.0f

    const/high16 v20, 0x7fc00000    # Float.NaN

    if-nez v11, :cond_2f

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_30

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v11}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v11

    const/16 v13, 0xb

    if-ne v11, v13, :cond_2e

    goto :goto_16

    :cond_2e
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    :cond_2f
    move/from16 v36, v2

    move v2, v10

    goto/16 :goto_1d

    :cond_30
    :goto_16
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v11}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v11

    if-eqz v11, :cond_2f

    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutomaticScreenBrightness(Lcom/android/server/display/brightness/BrightnessEvent;)F

    move-result v11

    invoke-static {v11}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v13

    if-nez v13, :cond_32

    cmpl-float v13, v11, v19

    if-nez v13, :cond_31

    goto :goto_17

    :cond_31
    iget-object v11, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v13, v11, v12}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    move v14, v1

    move/from16 v36, v2

    move v2, v10

    move/from16 v27, v11

    move/from16 v1, v20

    move/from16 v7, v29

    move v10, v4

    move v4, v1

    goto/16 :goto_1e

    :cond_32
    :goto_17
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getRawAutomaticScreenBrightness()F

    move-result v27

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v1

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_33

    iput v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    const/4 v4, 0x1

    goto :goto_18

    :cond_33
    const/4 v4, 0x0

    :goto_18
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v13

    if-eqz v13, :cond_34

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentChanged()Z

    move-result v13

    if-nez v13, :cond_34

    if-eqz v4, :cond_34

    const/4 v4, 0x1

    goto :goto_19

    :cond_34
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_37

    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-nez v13, :cond_35

    sget-boolean v13, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    if-eqz v13, :cond_37

    :cond_35
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessAdvancedSettings:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    if-eqz v13, :cond_36

    iget v13, v13, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mDarkeningRateRatio:I

    goto :goto_1a

    :cond_36
    const/4 v13, 0x1

    :goto_1a
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v14, v14, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget v14, v14, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    iget v12, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    int-to-float v13, v13

    invoke-static {v11, v14, v1, v12, v13}, Lcom/android/server/display/brightness/BrightnessUtils;->getBrightnessDynamicRampRatePair(FFFFF)Landroid/util/Pair;

    move-result-object v12

    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    goto :goto_1b

    :cond_37
    move/from16 v12, v20

    move v13, v12

    :goto_1b
    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v14}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->getAutoBrightnessAdjustmentReasonsFlags()I

    move-result v29

    invoke-static {v11}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result v14

    cmpl-float v14, v9, v14

    if-eqz v14, :cond_38

    const/4 v14, 0x1

    goto :goto_1c

    :cond_38
    const/4 v14, 0x0

    :goto_1c
    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move/from16 v36, v2

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutoBrightnessApplied(Z)V

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v2, 0x4

    invoke-virtual {v1, v11, v2}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    invoke-virtual {v1, v2}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->setLightSensorEnabled(Z)V

    :cond_39
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v26, v4

    const/16 v4, 0x11

    invoke-virtual {v7, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v10

    move/from16 v37, v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v1, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move v1, v12

    move v4, v13

    move v10, v14

    move/from16 v14, v26

    move/from16 v7, v29

    move/from16 v11, v37

    goto :goto_1e

    :goto_1d
    move v14, v1

    move v10, v4

    move/from16 v1, v20

    move v4, v1

    move/from16 v11, v26

    move/from16 v7, v29

    :goto_1e
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_3a

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v11

    :cond_3a
    if-eqz v36, :cond_3f

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_3b

    iget-object v12, v3, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    const-string v13, "FallbackBrightnessStrategy"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f

    :cond_3b
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v10}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayOffloadEnabled()Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    if-eqz v10, :cond_3d

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v10, :cond_3c

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v10}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result v10

    if-nez v10, :cond_3d

    :cond_3c
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v10}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v10

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mDozeScaleFactor:F

    mul-float/2addr v10, v11

    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v11

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v13, 0xc

    invoke-virtual {v12, v11, v13}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v13, v12, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/16 v31, 0x4

    or-int/lit8 v13, v13, 0x4

    iput v13, v12, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    :goto_1f
    move/from16 v27, v10

    goto :goto_20

    :cond_3d
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v10}, Lcom/android/server/display/brightness/DisplayBrightnessController;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result v10

    if-nez v10, :cond_3e

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-static {v10}, Lcom/android/server/power/PowerManagerUtil;->isFakeAodAvailable(I)Z

    move-result v10

    if-nez v10, :cond_3e

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-virtual {v0, v10}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v11

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v13, 0x3

    invoke-virtual {v12, v11, v13}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    goto :goto_1f

    :cond_3e
    :goto_20
    const/4 v10, 0x0

    :cond_3f
    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v12}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v12

    if-nez v12, :cond_42

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_42

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v12}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v12

    if-eqz v12, :cond_42

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBrightnessSensorController:Lcom/android/server/display/ScreenOffBrightnessSensorController;

    if-eqz v12, :cond_42

    invoke-virtual {v12}, Lcom/android/server/display/ScreenOffBrightnessSensorController;->getAutomaticScreenBrightness()F

    move-result v11

    invoke-static {v11}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v12

    if-eqz v12, :cond_41

    invoke-virtual {v0, v11}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v10

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v12}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v12

    cmpl-float v12, v12, v10

    if-eqz v12, :cond_40

    const/4 v12, 0x1

    goto :goto_21

    :cond_40
    const/4 v12, 0x0

    :goto_21
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v23, v1

    const/16 v1, 0x9

    invoke-virtual {v13, v10, v1}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    move/from16 v27, v11

    move v11, v10

    move v10, v12

    goto :goto_22

    :cond_41
    move/from16 v23, v1

    move/from16 v27, v11

    goto :goto_22

    :cond_42
    move/from16 v23, v1

    :goto_22
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isRefactorDisplayPowerControllerEnabled()Z

    move-result v1

    if-nez v1, :cond_44

    invoke-virtual {v0, v9}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v11

    cmpl-float v1, v11, v9

    if-eqz v1, :cond_43

    const/4 v10, 0x1

    :cond_43
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Lcom/android/server/display/brightness/BrightnessReason;->setReason(FI)V

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v1, :cond_45

    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_45

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v12, 0x10000

    invoke-virtual {v1, v11, v12}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    goto :goto_23

    :cond_44
    move/from16 v9, v27

    :cond_45
    :goto_23
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eq v1, v12, :cond_47

    if-eqz v12, :cond_46

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    :cond_46
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    :cond_47
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsDisplayInternal:Z

    move-object v12, v3

    const/4 v3, 0x0

    if-eqz v1, :cond_48

    const/4 v1, 0x1

    if-eq v15, v1, :cond_48

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v13, 0x2

    if-eq v1, v13, :cond_48

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v1, :cond_49

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    if-eqz v1, :cond_48

    goto :goto_24

    :cond_48
    move v1, v14

    goto/16 :goto_2a

    :cond_49
    :goto_24
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/16 v13, 0xe

    if-eq v1, v13, :cond_48

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    if-eqz v1, :cond_4b

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mForceDimSettingEnabled:Z

    if-eqz v1, :cond_4b

    move v1, v14

    iget-wide v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    sget-wide v26, Lcom/android/server/display/DisplayPowerController;->sLastScreenBrightnessSettingChangedTime:J

    cmp-long v13, v13, v26

    if-lez v13, :cond_4c

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v13, v13, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v13, :cond_4c

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v13

    if-eqz v13, :cond_4a

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v13, :cond_4c

    iget-boolean v13, v13, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v13, :cond_4c

    :cond_4a
    const/4 v13, 0x1

    goto :goto_25

    :cond_4b
    move v1, v14

    :cond_4c
    const/4 v13, 0x0

    :goto_25
    if-eqz v13, :cond_4e

    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v14, :cond_4e

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget v13, v13, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_4d

    iput v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    goto :goto_26

    :cond_4d
    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v13

    iput v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    :goto_26
    if-nez v22, :cond_50

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v13, :cond_50

    :goto_27
    const/4 v13, 0x1

    goto :goto_28

    :cond_4e
    if-nez v13, :cond_50

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v13, :cond_50

    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    iget-object v13, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v13}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v13

    if-nez v13, :cond_4f

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v13, 0x10000

    invoke-virtual {v10, v11, v13}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    const/4 v10, 0x1

    :cond_4f
    if-nez v22, :cond_50

    iget-boolean v13, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v13, :cond_50

    goto :goto_27

    :cond_50
    const/4 v13, 0x0

    :goto_28
    iget-boolean v14, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v14, :cond_51

    cmpl-float v14, v11, v3

    if-lez v14, :cond_51

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessMinimumDimAmount:F

    sub-float/2addr v11, v10

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v11

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const v14, 0x8000

    invoke-virtual {v10, v11, v14}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move/from16 v27, v13

    const/16 v26, 0x1

    :goto_29
    move v13, v11

    goto :goto_2b

    :cond_51
    move/from16 v26, v10

    move/from16 v27, v13

    goto :goto_29

    :goto_2a
    move/from16 v26, v10

    move v13, v11

    const/16 v27, 0x0

    :goto_2b
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v10, :cond_52

    move v10, v3

    goto :goto_2c

    :cond_52
    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v10

    :goto_2c
    const/4 v11, 0x0

    :goto_2d
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v11, v14, :cond_53

    invoke-virtual {v5, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/display/DisplayPowerController;

    move/from16 v29, v3

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v3, v9}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v3

    invoke-virtual {v14, v9, v3, v10, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v29

    goto :goto_2d

    :cond_53
    move/from16 v29, v3

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    cmpl-float v3, v3, v13

    if-eqz v3, :cond_54

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v9, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1
    iget-object v3, v3, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v3, v3, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mLastTargetBrightnessStrategy:Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;

    iput v13, v3, Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;->mLastTargetBrightness:F

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput v13, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    goto :goto_2e

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_54
    :goto_2e
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessClamperController:Lcom/android/server/display/brightness/clamper/BrightnessClamperController;

    move-object v3, v12

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move v14, v1

    move-object v11, v3

    const/16 v1, 0xe

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController;->clamp(Lcom/android/server/display/DisplayBrightnessState;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZI)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object v9

    iget v3, v9, Lcom/android/server/display/DisplayBrightnessState;->mBrightness:F

    iget-boolean v10, v9, Lcom/android/server/display/DisplayBrightnessState;->mIsSlowChange:Z

    iget v12, v9, Lcom/android/server/display/DisplayBrightnessState;->mCustomAnimationRate:F

    invoke-static {v2, v12}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v12, v9, Lcom/android/server/display/DisplayBrightnessState;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v14, v12, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    if-eqz v14, :cond_55

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v12, v12, Lcom/android/server/display/brightness/BrightnessReason;->changes:Ljava/util/List;

    invoke-virtual {v1, v14, v12}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(ILjava/util/List;)V

    :cond_55
    iget v1, v9, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mClampedMaxBrightness:F

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget-object v12, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_3
    iget-object v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    iget-object v1, v1, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->mLastTargetBrightnessStrategy:Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;

    iput v3, v1, Lcom/android/server/display/brightness/strategy/LastTargetBrightnessStrategy;->mLastTargetBrightness:F

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    goto :goto_2f

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_56
    :goto_2f
    if-eqz v26, :cond_57

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v12, 0x2

    if-eq v1, v12, :cond_57

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    iget v12, v9, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    iget v14, v9, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-static {v13, v12, v14}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v12

    iget-object v14, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v14}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v14

    move/from16 v26, v4

    iget v4, v9, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v1, v12, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateScreenBrightnessSetting(FF)Z

    move-result v1

    move v12, v1

    goto :goto_30

    :cond_57
    move/from16 v26, v4

    const/4 v12, 0x0

    :goto_30
    invoke-virtual {v0, v3, v15}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(FI)F

    move-result v14

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v1, :cond_58

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v3, "ForceSlowChange is requested, set slowChange as true"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    :cond_58
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v1, v14, v13, v9}, Lcom/android/server/display/BrightnessRangeController;->onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v3, 0x7

    if-eq v1, v3, :cond_5a

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isTemporaryAutoBrightnessAdjustmentApplied()Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_31

    :cond_59
    const/16 v30, 0x0

    goto :goto_32

    :cond_5a
    :goto_31
    const/16 v30, 0x1

    :goto_32
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v1, :cond_91

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayPowerProximityStateController:Lcom/android/server/display/DisplayPowerProximityStateController;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerProximityStateController;->shouldSkipRampBecauseOfProximityChangeToNegative()Z

    move-result v1

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-eqz v3, :cond_5b

    if-eqz v17, :cond_5c

    :cond_5b
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v3, :cond_5c

    const/4 v3, 0x1

    goto :goto_33

    :cond_5c
    const/4 v3, 0x0

    :goto_33
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v17

    if-eqz v17, :cond_5d

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget v4, v4, Lcom/android/server/display/brightness/BrightnessReason;->mReason:I

    move/from16 v36, v1

    const/16 v1, 0xe

    if-ne v4, v1, :cond_5e

    const/4 v1, 0x1

    goto :goto_34

    :cond_5d
    move/from16 v36, v1

    :cond_5e
    const/4 v1, 0x0

    :goto_34
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    sget-boolean v21, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_BRIGHTNESS_ANIM:Z

    if-nez v21, :cond_5f

    if-eqz v4, :cond_5f

    const/16 v21, 0x1

    goto :goto_35

    :cond_5f
    const/16 v21, 0x0

    :goto_35
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v37

    if-eqz v37, :cond_60

    move/from16 v37, v1

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v1, :cond_61

    const/16 v38, 0x1

    goto :goto_36

    :cond_60
    move/from16 v37, v1

    :cond_61
    const/16 v38, 0x0

    :goto_36
    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_62

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v1

    cmpl-float v1, v1, v25

    if-nez v1, :cond_62

    const/16 v39, 0x1

    goto :goto_37

    :cond_62
    const/16 v39, 0x0

    :goto_37
    invoke-virtual {v0, v14}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForFinal(F)F

    move-result v1

    move/from16 v40, v3

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v3, v3, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v3, v3, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    move/from16 v41, v4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6a

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget v3, v3, Lcom/android/server/display/brightness/BrightnessReason;->mModifier:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_63

    const/4 v3, 0x1

    goto :goto_38

    :cond_63
    const/4 v3, 0x0

    :goto_38
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_64

    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v4, :cond_64

    goto :goto_39

    :cond_64
    const/4 v4, 0x0

    goto :goto_3a

    :cond_65
    :goto_39
    const/4 v4, 0x1

    :goto_3a
    if-nez v3, :cond_69

    if-eqz v4, :cond_69

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v3}, Lcom/android/server/display/BrightnessRangeController;->getHdrBrightnessValue()F

    move-result v3

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessRangeController;->getHdrTransitionRate()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    move/from16 v42, v2

    const/4 v2, 0x4

    invoke-virtual {v4, v3, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hdrMaxBrightness:F

    cmpl-float v4, v3, v2

    if-ltz v4, :cond_66

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    :cond_66
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v4, v3, v2

    if-ltz v4, :cond_67

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/16 v4, 0x100

    invoke-virtual {v3, v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move v3, v2

    :cond_67
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eqz v4, :cond_68

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v2, :cond_68

    cmpl-float v2, v3, v25

    if-lez v2, :cond_68

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/high16 v3, 0x200000

    move/from16 v4, v25

    invoke-virtual {v2, v4, v3}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(FI)V

    move v3, v4

    move/from16 v25, v3

    :goto_3b
    move-object/from16 v43, v5

    move/from16 v44, v6

    :goto_3c
    move/from16 v2, v42

    goto :goto_3e

    :cond_68
    move/from16 v4, v25

    move/from16 v25, v4

    goto :goto_3b

    :cond_69
    move/from16 v42, v2

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    move-object/from16 v43, v5

    new-instance v5, Ljava/lang/StringBuilder;

    move/from16 v44, v6

    const-string/jumbo v6, "pending hdr: low power: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " brightness ready: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_6a
    move/from16 v42, v2

    move-object/from16 v43, v5

    move/from16 v44, v6

    :goto_3d
    move v3, v1

    goto :goto_3c

    :goto_3e
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6c

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v4, :cond_6b

    const/4 v5, 0x4

    if-eq v4, v5, :cond_6b

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6c

    :cond_6b
    const/4 v10, 0x0

    goto :goto_3f

    :cond_6c
    move/from16 v19, v2

    :goto_3f
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v2

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getSdrScreenBrightness()F

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableMoreFastRampRateCase()Z

    move-result v5

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->shouldEnableHdrRampRateCase()Z

    move-result v6

    move/from16 v31, v2

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    move/from16 v42, v3

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6d

    const/4 v2, 0x1

    goto :goto_40

    :cond_6d
    const/4 v2, 0x0

    :goto_40
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-nez v3, :cond_6f

    if-eqz v22, :cond_6e

    goto :goto_42

    :cond_6e
    const/4 v3, 0x0

    :goto_41
    move/from16 v22, v2

    goto :goto_43

    :cond_6f
    :goto_42
    const/4 v3, 0x1

    goto :goto_41

    :goto_43
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    iget-object v2, v2, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    iget v2, v2, Lcom/android/server/display/RampAnimator;->mCurrentValue:F

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    invoke-static/range {v42 .. v42}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v45

    sub-int v2, v2, v45

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v45, v3

    const/4 v3, 0x1

    if-gt v2, v3, :cond_70

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_70

    const/4 v2, 0x1

    goto :goto_44

    :cond_70
    const/4 v2, 0x0

    :goto_44
    invoke-static/range {v42 .. v42}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v3

    if-eqz v3, :cond_71

    cmpl-float v3, v42, v31

    if-nez v3, :cond_72

    cmpl-float v31, v1, v4

    if-eqz v31, :cond_71

    goto :goto_45

    :cond_71
    move/from16 v17, v8

    move v2, v10

    move/from16 v21, v12

    move/from16 v10, v25

    move/from16 v12, v29

    move-object/from16 v8, v34

    move/from16 v1, v42

    move-object/from16 v6, v43

    goto/16 :goto_52

    :cond_72
    :goto_45
    if-nez v36, :cond_73

    if-nez v38, :cond_73

    if-eqz v39, :cond_73

    move/from16 v31, v2

    if-eqz v30, :cond_74

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v2, :cond_73

    goto :goto_46

    :cond_73
    move/from16 v21, v3

    goto :goto_47

    :cond_74
    :goto_46
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    if-nez v2, :cond_73

    if-nez v40, :cond_73

    if-nez v37, :cond_73

    if-nez v21, :cond_73

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    move/from16 v21, v3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_75

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->isStartBrightnessChanged(Lcom/android/server/display/brightness/BrightnessReason;)Z

    move-result v2

    if-eqz v2, :cond_75

    if-nez v5, :cond_75

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/display/brightness/BrightnessReason;->hasModifier(I)Z

    move-result v2

    if-eqz v2, :cond_77

    :cond_75
    if-nez v27, :cond_77

    if-eqz v31, :cond_76

    goto :goto_47

    :cond_76
    const/4 v2, 0x0

    goto :goto_48

    :cond_77
    :goto_47
    const/4 v2, 0x1

    :goto_48
    invoke-static {v1, v4}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isFastHdrTransitionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_78

    if-nez v2, :cond_78

    if-eqz v3, :cond_78

    const/4 v10, 0x0

    :cond_78
    if-eqz v2, :cond_79

    const/4 v4, 0x0

    move/from16 v5, v29

    move v2, v1

    move/from16 v3, v29

    move/from16 v1, v42

    const/16 v17, 0x6

    const/16 v33, 0x2

    const/16 v35, 0x7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    move-object/from16 v0, p0

    move v2, v3

    move/from16 v17, v8

    move/from16 v19, v10

    move/from16 v21, v12

    move/from16 v10, v25

    move-object/from16 v8, v34

    move-object/from16 v6, v43

    move v12, v2

    goto/16 :goto_53

    :cond_79
    move v2, v1

    move/from16 v3, v29

    move/from16 v1, v42

    const/16 v17, 0x6

    const/16 v33, 0x2

    const/16 v35, 0x7

    cmpl-float v0, v19, v3

    if-lez v0, :cond_7a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v29, v3

    move/from16 v3, v19

    move/from16 v5, v28

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    move v2, v3

    move v3, v5

    move/from16 v17, v8

    move/from16 v19, v10

    move/from16 v21, v12

    move/from16 v10, v25

    move/from16 v12, v29

    move-object/from16 v8, v34

    move-object/from16 v6, v43

    goto/16 :goto_53

    :cond_7a
    move-object/from16 v0, p0

    if-lez v21, :cond_7b

    const/4 v4, 0x1

    goto :goto_49

    :cond_7b
    const/4 v4, 0x0

    :goto_49
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_7c

    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->isInIdleMode()Z

    move-result v3

    if-eqz v3, :cond_7c

    const/4 v3, 0x1

    goto :goto_4a

    :cond_7c
    const/4 v3, 0x0

    :goto_4a
    if-eqz v4, :cond_7e

    if-eqz v10, :cond_7e

    if-eqz v3, :cond_7d

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncreaseIdle:F

    goto :goto_4b

    :cond_7d
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowIncrease:F

    :goto_4b
    move/from16 v23, v20

    goto :goto_4c

    :cond_7e
    if-eqz v4, :cond_7f

    if-nez v10, :cond_7f

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastIncrease:F

    goto :goto_4b

    :cond_7f
    if-nez v4, :cond_82

    if-eqz v10, :cond_82

    if-eqz v3, :cond_80

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecreaseIdle:F

    goto :goto_4c

    :cond_80
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_81

    move/from16 v3, v26

    goto :goto_4c

    :cond_81
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlowDecrease:F

    goto :goto_4c

    :cond_82
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFastDecrease:F

    goto :goto_4b

    :goto_4c
    if-eqz v22, :cond_83

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeed:F

    move/from16 v42, v1

    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mFollowerRampSpeedAtHbm:F

    move/from16 v23, v1

    goto :goto_4d

    :cond_83
    move/from16 v42, v1

    :goto_4d
    if-eqz v5, :cond_84

    iget v1, v0, Lcom/android/server/display/DisplayPowerController;->mMoreFastRampRate:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move/from16 v5, v20

    goto :goto_4e

    :cond_84
    move/from16 v5, v23

    :goto_4e
    if-eqz v41, :cond_85

    const v1, 0x3eb33333    # 0.35f

    move v3, v1

    :cond_85
    if-eqz v45, :cond_87

    if-eqz v4, :cond_86

    const/4 v3, 0x0

    goto :goto_4f

    :cond_86
    sget v3, Lcom/android/server/display/DisplayPowerController;->RATE_FROM_DOZE_TO_ON:F

    :cond_87
    :goto_4f
    if-eqz v6, :cond_89

    if-eqz v4, :cond_88

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrIncrease:F

    goto :goto_50

    :cond_88
    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateHdrDecrease:F

    :cond_89
    :goto_50
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->getTarget()F

    move-result v1

    cmpl-float v1, v1, v42

    if-eqz v1, :cond_8a

    const/4 v4, 0x0

    move/from16 v17, v8

    move/from16 v19, v10

    move/from16 v21, v12

    move/from16 v10, v25

    move-object/from16 v8, v34

    move/from16 v1, v42

    move-object/from16 v6, v43

    const/4 v12, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FFFZF)V

    goto :goto_51

    :cond_8a
    move/from16 v17, v8

    move/from16 v19, v10

    move/from16 v21, v12

    move/from16 v10, v25

    move-object/from16 v8, v34

    move/from16 v1, v42

    move-object/from16 v6, v43

    const/4 v12, 0x0

    :goto_51
    move v2, v3

    move v3, v5

    goto :goto_53

    :goto_52
    move/from16 v19, v2

    move v2, v12

    move/from16 v3, v20

    :goto_53
    const/4 v4, 0x0

    :goto_54
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8b

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setRampSpeedToFollower(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_8b
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v4}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_8c

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v4, :cond_8c

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    :cond_8c
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v4

    iget-boolean v6, v11, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    move v10, v1

    move v12, v3

    move v1, v14

    move/from16 v3, v17

    move/from16 v5, v30

    move v14, v2

    move/from16 v2, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessTrackerChanged(FZZZZZ)V

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v4}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->hasAppliedAutoBrightness()Z

    move-result v4

    if-nez v4, :cond_8d

    if-eqz v27, :cond_8e

    :cond_8d
    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-nez v4, :cond_8e

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    if-eqz v4, :cond_8e

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingAutoBrightnessFromDoze:Z

    :cond_8e
    if-eqz v21, :cond_90

    if-nez v2, :cond_90

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    if-eqz v2, :cond_8f

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsCoverDisplay:Z

    if-eqz v2, :cond_90

    :cond_8f
    invoke-virtual {v0, v14, v12, v10}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessTransitionTime(FFF)V

    :cond_90
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v10, v9}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FFLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v2

    move/from16 v10, v19

    goto :goto_55

    :cond_91
    move/from16 v44, v6

    move v3, v8

    move v1, v14

    move/from16 v5, v30

    move-object/from16 v8, v34

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v2

    invoke-virtual {v0, v2, v9}, Lcom/android/server/display/DisplayPowerController;->saveBrightnessInfo(FLcom/android/server/display/DisplayBrightnessState;)Z

    move-result v2

    const/4 v14, 0x0

    :goto_55
    if-eqz v2, :cond_92

    if-nez v5, :cond_92

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mOnBrightnessChangeRunnable:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_92

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_92
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    if-eqz v7, :cond_93

    goto :goto_56

    :cond_93
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_95

    if-eqz v16, :cond_95

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Brightness ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "] manual adjustment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_94
    :goto_56
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Brightness ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "] reason changing to: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v5, v7}, Lcom/android/server/display/brightness/BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', previous reason: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2, v4}, Lcom/android/server/display/brightness/BrightnessReason;->set(Lcom/android/server/display/brightness/BrightnessReason;)V

    :cond_95
    :goto_57
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/brightness/BrightnessEvent;->setTime(J)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setBrightness(F)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessController:Lcom/android/server/display/brightness/DisplayBrightnessController;

    invoke-virtual {v4, v1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToAdjustedNits(F)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setNits(F)V

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessRangeController;->getCurrentBrightnessMax()F

    move-result v2

    iget v4, v9, Lcom/android/server/display/DisplayBrightnessState;->mMaxBrightness:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v9, Lcom/android/server/display/DisplayBrightnessState;->mMinBrightness:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-static {v12, v6, v5, v4, v1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v1

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    const/high16 v5, 0x447a0000    # 1000.0f

    invoke-static {v1}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v1

    mul-float/2addr v1, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setPercent(F)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v13}, Lcom/android/server/display/brightness/BrightnessEvent;->setUnclampedBrightness(F)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayId(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPhysicalDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setPhysicalDisplayName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v15}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayState(I)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayStateReason(I)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayPolicy(I)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->setReason(Lcom/android/server/display/brightness/BrightnessReason;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMax(F)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRangeController:Lcom/android/server/display/BrightnessRangeController;

    iget-object v2, v2, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, v2, Lcom/android/server/display/HighBrightnessModeController;->mHbmMode:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setHbmMode(I)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v4, :cond_96

    const/16 v4, 0x20

    goto :goto_58

    :cond_96
    const/4 v4, 0x0

    :goto_58
    or-int/2addr v2, v4

    iput v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessEvent;->setRbcStrength()V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setPowerFactor(F)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v3}, Lcom/android/server/display/brightness/BrightnessEvent;->setWasShortTermModelActive(Z)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v11, Lcom/android/server/display/DisplayBrightnessState;->mDisplayBrightnessStrategyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setDisplayBrightnessStrategyName(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-boolean v2, v11, Lcom/android/server/display/DisplayBrightnessState;->mShouldUseAutoBrightness:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setAutomaticBrightnessEnabled(Z)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v10}, Lcom/android/server/display/brightness/BrightnessEvent;->setSlowChange(Z)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v14}, Lcom/android/server/display/brightness/BrightnessEvent;->setRampSpeed(F)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_97

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v1, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v1

    if-ne v1, v3, :cond_97

    const/4 v1, 0x1

    goto :goto_59

    :cond_97
    const/4 v1, 0x0

    :goto_59
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v3, v2, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    const/16 v32, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_98

    move/from16 v3, v32

    goto :goto_5a

    :cond_98
    const/4 v3, 0x0

    :goto_5a
    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget v5, v4, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_99

    const/4 v5, 0x1

    goto :goto_5b

    :cond_99
    const/4 v5, 0x0

    :goto_5b
    if-eq v3, v5, :cond_9a

    const/4 v3, 0x1

    goto :goto_5c

    :cond_9a
    const/4 v3, 0x0

    :goto_5c
    invoke-virtual {v4, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->equalsMainData(Lcom/android/server/display/brightness/BrightnessEvent;)Z

    move-result v2

    if-nez v2, :cond_9b

    if-eqz v1, :cond_9c

    :cond_9b
    if-eqz v7, :cond_a1

    :cond_9c
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessEvent;->getBrightness()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->setInitialBrightness(F)V

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;->copyFrom(Lcom/android/server/display/brightness/BrightnessEvent;)V

    new-instance v1, Lcom/android/server/display/brightness/BrightnessEvent;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTempBrightnessEvent:Lcom/android/server/display/brightness/BrightnessEvent;

    invoke-direct {v1, v2}, Lcom/android/server/display/brightness/BrightnessEvent;-><init>(Lcom/android/server/display/brightness/BrightnessEvent;)V

    invoke-virtual {v1, v7}, Lcom/android/server/display/brightness/BrightnessEvent;->setAdjustmentFlags(I)V

    iget v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    if-eqz v16, :cond_9d

    const/16 v4, 0x8

    goto :goto_5d

    :cond_9d
    const/4 v4, 0x0

    :goto_5d
    or-int/2addr v2, v4

    iput v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mFlags:I

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightness/BrightnessEvent;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v16, :cond_9e

    iget-object v2, v1, Lcom/android/server/display/brightness/BrightnessEvent;->mReason:Lcom/android/server/display/brightness/BrightnessReason;

    invoke-virtual {v2}, Lcom/android/server/display/brightness/BrightnessReason;->getReason()I

    move-result v2

    const/4 v14, 0x7

    if-eq v2, v14, :cond_9f

    :cond_9e
    invoke-virtual {v0, v1, v13, v9}, Lcom/android/server/display/DisplayPowerController;->logBrightnessEvent(Lcom/android/server/display/brightness/BrightnessEvent;FLcom/android/server/display/DisplayBrightnessState;)V

    :cond_9f
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v2, :cond_a0

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_a0
    if-eqz v3, :cond_a2

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRbcEventRingBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_5e

    :cond_a1
    const/4 v4, 0x0

    :cond_a2
    :goto_5e
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v1, :cond_a4

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblockerByDisplayOffload:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda7;

    if-nez v1, :cond_a4

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v1, :cond_a3

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_a4

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_a4

    :cond_a3
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;)Z

    move-result v1

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$4;

    if-nez v1, :cond_a4

    iget-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v1, :cond_a4

    const/4 v1, 0x1

    goto :goto_5f

    :cond_a4
    move v1, v4

    :goto_5f
    if-eqz v1, :cond_a5

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator$DualRampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator$DualRampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_a5

    const/4 v2, 0x1

    goto :goto_60

    :cond_a5
    move v2, v4

    :goto_60
    if-eqz v1, :cond_a6

    const/4 v3, 0x1

    if-eq v15, v3, :cond_a6

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_a6

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    check-cast v3, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    goto :goto_61

    :cond_a6
    const/4 v12, 0x2

    :goto_61
    if-nez v2, :cond_a7

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    :cond_a7
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessStrategy:Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    invoke-virtual {v3}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->isAutoBrightnessEnabled()Z

    move-result v3

    if-eqz v3, :cond_a9

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_a8

    iget-boolean v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v3, :cond_a8

    goto :goto_62

    :cond_a8
    move v3, v4

    goto :goto_63

    :cond_a9
    :goto_62
    const/4 v3, 0x1

    :goto_63
    if-eqz v1, :cond_ac

    if-nez v24, :cond_ac

    if-eqz v3, :cond_ac

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_aa

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    sget-boolean v5, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v5, :cond_ab

    iget-object v5, v0, Lcom/android/server/display/DisplayPowerController;->mTag:Ljava/lang/String;

    const-string v6, "Display ready!"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    :catchall_3
    move-exception v0

    goto :goto_65

    :cond_aa
    const/4 v3, 0x1

    :cond_ab
    :goto_64
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_66

    :goto_65
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_ac
    const/4 v3, 0x1

    :goto_66
    if-eqz v2, :cond_ad

    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mWakelockController:Lcom/android/server/display/WakelockController;

    invoke-virtual {v1}, Lcom/android/server/display/WakelockController;->releaseWakelock()V

    :cond_ad
    if-eq v15, v12, :cond_ae

    move v7, v3

    goto :goto_67

    :cond_ae
    move v7, v4

    :goto_67
    iput-boolean v7, v0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v5, v44

    if-eq v5, v0, :cond_af

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    :cond_af
    return-void

    :goto_68
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method
