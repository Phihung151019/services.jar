.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ACTION_ENTER_DESK_MODE:Ljava/lang/String;

.field public static final ACTION_EXIT_DESK_MODE:Ljava/lang/String;

.field public static final ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

.field public static final BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

.field public static final BATTERY_OPTIONS:Landroid/os/Bundle;

.field public static final DUMPSYS_ARGS:[Ljava/lang/String;

.field public static final FEATURE_HICCUP_CONTROL:Z

.field public static final FEATURE_SUPPORTED_DAILY_BOARD:Z

.field public static final FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

.field public static final PACKAGE_DEVICE_CARE:Ljava/lang/String;

.field public static final POWER_OPTIONS:Landroid/os/Bundle;

.field public static final TAG_SS:Ljava/lang/String;

.field public static sSystemUiPackage:Ljava/lang/String;


# instance fields
.field public globalEventListener:Lcom/android/server/battery/GlobalEventListener;

.field public isVideoCall:Z

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityManagerReady:Z

.field public final mAdaptiveFastChargingOffset:I

.field public mAdaptiveFastChargingSettingsEnable:Z

.field public final mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mAfcDisableSysFs:Ljava/lang/String;

.field public final mAudioModeChangeReceiver:Lcom/android/server/BatteryService$2;

.field public final mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

.field public final mBattSlateModeControlReceiver:Lcom/android/server/BatteryService$5;

.field public final mBatteryChangedConditionCounts:[I

.field public mBatteryInputSuspended:Z

.field public mBatteryLevelCritical:Z

.field public mBatteryLevelLow:Z

.field public final mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

.field public mBatteryMaxCurrent:J

.field public mBatteryMaxTemp:J

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public mBinderService:Lcom/android/server/BatteryService$BinderService;

.field public mBootCompleted:Z

.field public final mBootCompletedReceiver:Lcom/android/server/BatteryService$2;

.field public final mCallHandler:Lcom/android/server/BatteryService$1;

.field public final mCallHandlerThread:Landroid/os/HandlerThread;

.field public mChargeStartLevel:I

.field public mChargeStartTime:J

.field public final mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mConditionVariable:Landroid/os/ConditionVariable;

.field public final mContext:Landroid/content/Context;

.field public final mCriticalBatteryLevel:I

.field public mCurrentCalendar:Ljava/util/Calendar;

.field public final mDexReceiver:Lcom/android/server/BatteryService$2;

.field public mDischargeStartLevel:I

.field public mDischargeStartTime:J

.field public final mEnableIqi:Z

.field public final mFastWirelessAutoModeReceiver:Lcom/android/server/BatteryService$2;

.field public mFullCapacityEnable:Z

.field public final mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

.field public mHealthInfo:Landroid/hardware/health/HealthInfo;

.field public mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

.field public final mHiccupControlReceiver:Lcom/android/server/BatteryService$2;

.field public final mIntentReceiver:Lcom/android/server/BatteryService$2;

.field public mInvalidCharger:I

.field public mIsFirstIntentSended:Z

.field public mIsHiccupPopupShowing:Z

.field public mIsSkipActionBatteryChanged:Z

.field public mIsUnlockedBootCompleted:Z

.field public mIsWirelessTxSupported:Z

.field public mLastBatteryChargeType:I

.field public mLastBatteryCurrentEvent:I

.field public mLastBatteryCurrentNow:I

.field public mLastBatteryEvent:I

.field public mLastBatteryEventWaterInConnector:Z

.field public mLastBatteryHighVoltageCharger:I

.field public mLastBatteryLevelChangedSentMs:J

.field public mLastBatteryOnline:I

.field public mLastBatteryPowerSharingOnline:Z

.field public mLastBroadcastBatteryCapacityLevel:I

.field public mLastBroadcastBatteryCycleCount:I

.field public mLastBroadcastBatteryHealth:I

.field public mLastBroadcastBatteryLevel:I

.field public mLastBroadcastBatteryLevelCritical:Z

.field public mLastBroadcastBatteryPresent:Z

.field public mLastBroadcastBatteryStatus:I

.field public mLastBroadcastBatteryTemperature:I

.field public mLastBroadcastBatteryVoltage:I

.field public mLastBroadcastChargingState:I

.field public mLastBroadcastInvalidCharger:I

.field public mLastBroadcastMaxChargingCurrent:I

.field public mLastBroadcastMaxChargingCurrentUpdateTime:J

.field public mLastBroadcastMaxChargingVoltage:I

.field public mLastBroadcastPlugType:I

.field public mLastBroadcastVoltageUpdateTime:J

.field public mLastChargingPolicy:I

.field public mLastDeterioration:I

.field public mLastLowBatteryWarningLevel:I

.field public mLastSecPlugTypeSummary:I

.field public final mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mLastTxEventRxConnected:Z

.field public mLastTxEventTxEnabled:Z

.field public mLastWcTxId:I

.field public mLastWirelessBackPackChargingStatus:Z

.field public mLastWirelessChargingStatus:Z

.field public mLastWirelessPinDetected:Z

.field public mLastWirelessPowerSharingExternelEvent:I

.field public mLastWirelessPowerSharingTxEvent:I

.field public mLastchargerPogoOnline:Z

.field public mLatestWirelessChargingMode:I

.field public final mLed:Lcom/android/server/BatteryService$Led;

.field public mLedChargingSettingsEnable:Z

.field public mLedLowBatterySettingsEnable:Z

.field public final mLedSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mLifeExtender:Z

.field public final mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mLocalCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;

.field public final mLock:Ljava/lang/Object;

.field public final mLockBatteryInfoBackUp:Ljava/lang/Object;

.field public mLongBatteryRetryCnt:I

.field public mLowBatteryCloseWarningLevel:I

.field public mLowBatteryWarningLevel:I

.field public mLtcHighSocDuration:I

.field public mLtcHighThreshold:I

.field public mLtcReleaseThreshold:I

.field public mManufactureDate:Ljava/lang/String;

.field public mMaximumProtectionThreshold:I

.field public mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

.field public mNotifyWirelessEnabled:Z

.field public mPassThroughSettingsEnable:Z

.field public final mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mPlugType:I

.field public mPogoCondition:I

.field public mPogoDockState:I

.field public mProtectBatteryMode:I

.field public mProtectionThreshold:I

.field public mRefreshRateModeSetting:I

.field public final mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mRequestOtgChargeBlockReceiver:Lcom/android/server/BatteryService$2;

.field public mRfCalDate:Ljava/lang/String;

.field public final mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

.field public final mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

.field public mSavedBatteryMaxCurrent:J

.field public mSavedBatteryMaxTemp:J

.field public mSavedDiffWeek:I

.field public mScreenOn:Z

.field public mSecPlugTypeSummary:I

.field public mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

.field public mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public mSentLowBatteryBroadcast:Z

.field public mSequence:I

.field public final mShutdownIfNoPower:Z

.field public final mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

.field public mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

.field public mSleepChargingHandler:Lcom/android/server/BatteryService$1;

.field public mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

.field public final mSuperFastChargingOffset:I

.field public mSuperFastChargingSettingsEnable:Z

.field public final mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public mTxBatteryLimit:I

.field public final mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

.field public final mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

.field public mUpdatesStopped:Z

.field public mWasUsedWirelessFastChargerPreviously:Z

.field public final mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mWcParamOffset:I

.field public mWcTxId:I

.field public final mWirelessFastChargingOffset:I

.field public mWirelessFastChargingSettingsEnable:Z

.field public final mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

.field public final mWirelessPowerSharingReceiver:Lcom/android/server/BatteryService$2;

.field public final tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public static -$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[activateSleepChargingManager]activate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz p1, :cond_0

    const-string/jumbo p0, "[activateSleepChargingManager]activated multiple times => ignored"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p1, "[createSleepChargingHandler]"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/BatteryService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v2}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    new-instance v4, Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-direct {v4, v0, p1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService$1;I)V

    iput-object v4, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-wide v7, p1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object p1, v4, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    new-instance v3, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    invoke-direct/range {v3 .. v8}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "[createSleepChargingDismissReceiver]"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/BatteryService$2;

    const/4 p1, 0x0

    invoke-direct {v5, p0, p1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v5, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "com.samsung.permission.WRITE_SM_DATA"

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mSleepChargingDismissReceiver:Lcom/android/server/BatteryService$2;

    :cond_3
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz p1, :cond_6

    const-string/jumbo v1, "[SS]SleepChargingManager"

    const-string/jumbo v2, "[end]"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SleepChargingManager end"

    const-string v3, ""

    const-string v4, "/data/log/battery_service/sleep_charging_history"

    invoke-static {v4, v1, v3}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string/jumbo v3, "[Deactivated]"

    invoke-static {v1, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mSleepChargingTimeController:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "[SS]SleepChargingTimeController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mIsEndCalled:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->activateTimeReachedReceiver(Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->reset(Z)V

    iget-object v1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    iput-object v0, p1, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mWorkerThread:Landroid/os/HandlerThread;

    :cond_5
    iput-object v0, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    :cond_6
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mSleepChargingHandler:Lcom/android/server/BatteryService$1;

    :cond_7
    return-void
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 68

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    const-string v10, "  mSavedBatteryBsoh: "

    const-string v11, "  mSavedBatteryMaxCurrent: "

    const-string v12, "  mSavedBatteryMaxTemp: "

    const-string/jumbo v2, "mBatteryChangedConditionCounts:"

    const-string v3, "  mSavedFullStatusDuration: "

    const-string v4, "  mSavedBatteryUsage: "

    const-string v5, "  BATTERY_HISTORY: "

    const-string v6, "  mSavedBatteryAsoc: "

    const-string v8, "  battery FirstUseDate: "

    const-string v9, "  battery IcAuthenticationResults: "

    const-string v13, "  FEATURE_FULL_BATTERY_CYCLE: "

    const-string v14, "  FEATURE_SAVE_BATTERY_CYCLE: "

    const-string v15, " mLtcReleaseThreshold: "

    move-object/from16 v16, v10

    const-string v10, " mLtcHighSocDuration: "

    move-object/from16 v17, v11

    const-string v11, " mLtcHighThreshold: "

    move-object/from16 v18, v12

    const-string v12, " mMaximumProtectionThreshold: "

    move-object/from16 v19, v2

    const-string v2, " mProtectionThreshold: "

    move-object/from16 v20, v3

    const-string v3, " mProtectBatteryMode: "

    move-object/from16 v21, v4

    const-string/jumbo v4, "SEC_FEATURE_USE_WIRELESS_POWER_SHARING: "

    move-object/from16 v22, v5

    const-string/jumbo v5, "SEC_FEATURE_BATTERY_LIFE_EXTENDER: "

    move-object/from16 v23, v6

    const-string v6, "FEATURE_SUPPORTED_DAILY_BOARD: "

    move-object/from16 v24, v8

    const-string v8, "FEATURE_HICCUP_CONTROL: "

    move-object/from16 v25, v9

    const-string v9, "  mFullCapacityEnable: "

    move-object/from16 v26, v13

    const-string/jumbo v13, "SEC_FEATURE_BATTERY_FULL_CAPACITY: "

    move-object/from16 v27, v14

    const-string v14, "LLB DIFF: "

    move-object/from16 v28, v15

    const-string v15, "LLB CURRENT: YEAR"

    move-object/from16 v29, v10

    const-string v10, "LLB MAN: "

    move-object/from16 v30, v11

    const-string v11, "LLB CAL: "

    move-object/from16 v31, v12

    const-string v12, "  mWirelessFastChargingSettingsEnable: "

    move-object/from16 v32, v2

    const-string v2, "  mWasUsedWirelessFastChargerPreviously: "

    move-object/from16 v33, v3

    const-string v3, "FEATURE_WIRELESS_FAST_CHARGER_CONTROL: "

    move-object/from16 v34, v4

    const-string v4, "  Super Fast Charging Settings: "

    move-object/from16 v35, v5

    const-string v5, "  Adaptive Fast Charging Settings: "

    move-object/from16 v36, v6

    const-string v6, "  charge counter: "

    move-object/from16 v37, v8

    const-string v8, "  current now: "

    move-object/from16 v38, v9

    const-string v9, "  LED Low Battery: "

    move-object/from16 v39, v13

    const-string v13, "  LED Charging: "

    move-object/from16 v40, v14

    const-string v14, "  mSecPlugTypeSummary: "

    move-object/from16 v41, v15

    const-string v15, "  batteryCurrentEvent: "

    move-object/from16 v42, v10

    const-string v10, "  batteryMiscEvent: "

    move-object/from16 v43, v11

    const-string v11, "  Capacity level: "

    move-object/from16 v44, v12

    const-string v12, "  Charging policy: "

    move-object/from16 v45, v2

    const-string v2, "  Charging state: "

    move-object/from16 v46, v3

    const-string v3, "  technology: "

    move-object/from16 v47, v4

    const-string v4, "  temperature: "

    move-object/from16 v48, v5

    const-string v5, " The last voltage value sent via the battery changed broadcast: "

    move-object/from16 v49, v6

    const-string v6, " Time when the latest updated value of the voltage was sent via battery changed broadcast: "

    move-object/from16 v50, v8

    const-string v8, "  voltage: "

    move-object/from16 v51, v9

    const-string v9, "  level: "

    move-object/from16 v52, v13

    const-string v13, "  present: "

    move-object/from16 v53, v14

    const-string v14, "  health: "

    move-object/from16 v54, v15

    const-string v15, "  status: "

    move-object/from16 v55, v10

    const-string v10, "  Charge counter: "

    move-object/from16 v56, v11

    const-string v11, "  Max charging voltage: "

    move-object/from16 v57, v12

    const-string v12, " Time when the latest updated value of the Max charging current was sent via battery changed broadcast: "

    move-object/from16 v58, v2

    const-string v2, "  Max charging current: "

    move-object/from16 v59, v3

    const-string v3, "  Dock powered: "

    move-object/from16 v60, v4

    const-string v4, "  Wireless powered: "

    move-object/from16 v61, v5

    const-string v5, "  USB powered: "

    move-object/from16 v62, v6

    const-string v6, "  AC powered: "

    move-object/from16 v63, v4

    iget-object v4, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    move-object/from16 v64, v8

    :try_start_0
    array-length v8, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    move-object/from16 v65, v4

    const/16 v66, 0x0

    if-eqz v8, :cond_0

    :try_start_1
    const-string v8, "-a"

    aget-object v4, p3, v66

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object/from16 v4, p3

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, v0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    new-instance v9, Landroid/os/ResultReceiver;

    invoke-direct {v9, v7}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    const/16 v67, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    move-object v4, v7

    move/from16 v8, v67

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :goto_0
    const-string v7, "Current Battery Service state:"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz v7, :cond_2

    const-string v7, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v6, v63

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v6, v6, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrentUpdateTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  scale: 100"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v64

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v62

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastVoltageUpdateTime:J

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v61

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v60

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v59

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v58

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->chargingState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v57

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v56

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v55

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v54

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v53

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v52

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v51

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v5, v50

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    if-eq v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v49

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v3, v3, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v48

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v47

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v45

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v44

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v43

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v42

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v41

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v38

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v35

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "[Battery Adaptive Protect Mode]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    invoke-virtual {v2, v8}, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->getInfoAll(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v2, "[Not Battery Adaptive Protect Mode]"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/battery/BattFeatures;->FEATURE_FULL_BATTERY_CYCLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {v3}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getIcAuthenticationResults()[Z

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v5, v3, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    if-nez v5, :cond_8

    const-string/jumbo v3, "[SS][BattInfo]BattInfoManager"

    const-string/jumbo v5, "[getFirstUseDate]InitFinished False"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_2

    :cond_8
    iget-object v3, v3, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    invoke-virtual {v3}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [Ljava/lang/String;

    :goto_2
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {v3}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getAsocValue()[J

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "/efs/FactoryApp/batt_hist"

    invoke-static {v2}, Lcom/android/server/battery/BattUtils;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "/efs/FactoryApp/batt_hist"

    invoke-static {v2, v8}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v2, "  mSavedBatteryAsoc: unsupported"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {v3}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getDischargeLevel()[J

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {v2}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->supportsFullStatusUsage()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {v3}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getFullStatusUsage()[J

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v2, "  mSavedFullStatusDuration: unsupported"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/battery/BattLogBuffer;->getAllLogs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    monitor-exit v65
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    array-length v3, v4

    if-eqz v3, :cond_c

    const-string v3, "-a"

    aget-object v4, v4, v66

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_c
    :goto_6
    const-string v3, "BatteryInfoBackUp"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "/efs/FactoryApp/bsoh"

    invoke-static {v0, v8}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v3, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    monitor-exit v2

    return-void

    :goto_7
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v65, v4

    :goto_8
    :try_start_3
    monitor-exit v65
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static -$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x1

    const-string v2, "BatteryService"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->semIsVideoCall()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isVideoCall: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "call start, isVideoCall: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, v1}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void

    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "call end, isVideoCall: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->setWirelessPowerSharingExternelEventInternal(II)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->isVideoCall:Z

    return-void
.end method

.method public static -$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[setSleepCharging]on:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/batt_full_capacity"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " SLEEP"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    const-wide/16 p0, 0x64

    invoke-static {p0, p1, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const-string/jumbo v0, "[SS]"

    const-string v1, "BatteryService"

    invoke-static {v0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/afc_disable"

    const-string/jumbo v1, "sys/class/sec/afc/afc_disable"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    const-string v0, "/sys/class/sec/switch/hiccup"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    sput-object v0, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    sput-object v0, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->BATTERY_CHANGED_OPTIONS:Landroid/os/Bundle;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.ACTION_POWER_CONNECTED"

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v4, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->POWER_OPTIONS:Landroid/os/Bundle;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v4, v3}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->BATTERY_OPTIONS:Landroid/os/Bundle;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_DAILYBOARD"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_2

    :cond_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    const-string/jumbo v6, "TA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_2
    sput-boolean v1, Lcom/android/server/BatteryService;->FEATURE_SUPPORTED_DAILY_BOARD:Z

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    invoke-static {v0}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "BatteryService uses handler!! Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/os/Looper;

    invoke-direct {p0, p1, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->isVideoCall:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    new-instance v2, Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-direct {v2}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    const/4 v9, -0x1

    iput v9, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    const/4 v10, 0x1

    iput v10, v0, Lcom/android/server/BatteryService;->mSequence:I

    iput v9, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mChargingPolicyChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLocalCallback:Lcom/android/server/BatteryService$$ExternalSyntheticLambda7;

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/BatteryService;->globalEventListener:Lcom/android/server/battery/GlobalEventListener;

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mScreenOn:Z

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    iput v8, v0, Lcom/android/server/BatteryService;->mPogoDockState:I

    iput v8, v0, Lcom/android/server/BatteryService;->mPogoCondition:I

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    iput-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    iput-wide v4, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    iput-wide v4, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    iput v8, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    iput v9, v0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    iput v8, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    iput-object v3, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput v8, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    iput v8, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    iput v9, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    sget v6, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    iput v6, v0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    iput v6, v0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    const/16 v6, 0x16

    new-array v6, v6, [I

    iput-object v6, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    new-instance v6, Lcom/android/server/BatteryService$BattCallbackImpl;

    invoke-direct {v6, v0}, Lcom/android/server/BatteryService$BattCallbackImpl;-><init>(Lcom/android/server/BatteryService;)V

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    new-instance v7, Lcom/android/server/BatteryService$2;

    const/4 v11, 0x3

    invoke-direct {v7, v0, v11}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v7, v0, Lcom/android/server/BatteryService;->mBootCompletedReceiver:Lcom/android/server/BatteryService$2;

    new-instance v11, Lcom/android/server/BatteryService$2;

    const/4 v12, 0x4

    invoke-direct {v11, v0, v12}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v11, v0, Lcom/android/server/BatteryService;->mIntentReceiver:Lcom/android/server/BatteryService$2;

    new-instance v12, Lcom/android/server/BatteryService$5;

    invoke-direct {v12}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v12, v0, Lcom/android/server/BatteryService;->mBattSlateModeControlReceiver:Lcom/android/server/BatteryService$5;

    new-instance v13, Lcom/android/server/BatteryService$2;

    const/4 v14, 0x5

    invoke-direct {v13, v0, v14}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v13, v0, Lcom/android/server/BatteryService;->mRequestOtgChargeBlockReceiver:Lcom/android/server/BatteryService$2;

    new-instance v14, Lcom/android/server/BatteryService$2;

    const/4 v15, 0x6

    invoke-direct {v14, v0, v15}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v14, v0, Lcom/android/server/BatteryService;->mHiccupControlReceiver:Lcom/android/server/BatteryService$2;

    new-instance v15, Lcom/android/server/BatteryService$2;

    const/4 v3, 0x7

    invoke-direct {v15, v0, v3}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v15, v0, Lcom/android/server/BatteryService;->mWirelessPowerSharingReceiver:Lcom/android/server/BatteryService$2;

    new-instance v3, Lcom/android/server/BatteryService$2;

    const/16 v9, 0x8

    invoke-direct {v3, v0, v9}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v3, v0, Lcom/android/server/BatteryService;->mDexReceiver:Lcom/android/server/BatteryService$2;

    new-instance v9, Lcom/android/server/BatteryService$2;

    const/4 v4, 0x1

    invoke-direct {v9, v0, v4}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v9, v0, Lcom/android/server/BatteryService;->mAudioModeChangeReceiver:Lcom/android/server/BatteryService$2;

    new-instance v4, Lcom/android/server/BatteryService$2;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v4, v0, Lcom/android/server/BatteryService;->mFastWirelessAutoModeReceiver:Lcom/android/server/BatteryService$2;

    iput-boolean v10, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    iput-boolean v8, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    iput v8, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    new-instance v5, Lcom/android/server/BatteryService$16;

    move/from16 v16, v8

    const/4 v8, 0x4

    invoke-direct {v5, v0, v8}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v5, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

    new-instance v5, Lcom/android/server/BatteryService$16;

    const/4 v8, 0x5

    invoke-direct {v5, v0, v8}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v5, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

    new-instance v5, Lcom/android/server/BatteryService$16;

    const/4 v8, 0x6

    invoke-direct {v5, v0, v8}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v5, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    new-instance v5, Lcom/android/server/BatteryService$16;

    const/4 v8, 0x7

    invoke-direct {v5, v0, v8}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v5, v0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    move-object/from16 v8, p2

    invoke-direct {v5, v8, v2, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v5, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v10}, Landroid/os/Handler;-><init>(Z)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$Led;

    const-class v8, Lcom/android/server/lights/LightsManager;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/lights/LightsManager;

    invoke-direct {v2, v0, v1, v8}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    iput-object v2, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x10e006a

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x10e00ed

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x10e00ec

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    add-int/2addr v8, v2

    iput v8, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x10e016e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x111024f

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x104003a

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/BatteryService;->sSystemUiPackage:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v8, "/data/log/battery_service/sleep_charging_history"

    invoke-static {v8}, Lcom/android/server/battery/BatteryLogger;->renameForBackupIfExeedsSize(Ljava/lang/String;)V

    const-string v2, "/data/log/battery_service/battery_service_main_history"

    invoke-static {v2}, Lcom/android/server/battery/BatteryLogger;->renameForBackupIfExeedsSize(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/4 v10, 0x3

    invoke-direct {v2, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$15;

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/4 v10, 0x1

    invoke-direct {v2, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/16 v10, 0x8

    invoke-direct {v2, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    :cond_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/4 v10, 0x6

    invoke-direct {v2, v0, v10}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

    :cond_1
    sget-boolean v10, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v10, :cond_2

    new-instance v2, Lcom/android/server/BatteryService$15;

    move-object/from16 v18, v3

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/4 v3, 0x7

    invoke-direct {v2, v0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

    goto :goto_0

    :cond_2
    move-object/from16 v18, v3

    :cond_3
    :goto_0
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

    :cond_4
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Lcom/android/server/BatteryService$15;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

    :cond_6
    sget-boolean v19, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v19, :cond_7

    new-instance v2, Lcom/android/server/BatteryService$15;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

    :cond_7
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v1, v7, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-direct {v2, v1}, Lcom/android/server/battery/batteryInfo/BattInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    const-string v7, "/efs/FactoryApp/max_current"

    invoke-static {v7}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v11, v20, v22

    if-gez v11, :cond_8

    move-object v11, v4

    const-wide/16 v3, -0x1

    invoke-static {v3, v4, v7}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v11, v4

    move-wide/from16 v3, v20

    :goto_1
    iput-wide v3, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    const-string v3, "/efs/FactoryApp/max_temp"

    invoke-static {v3}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v4, v20, v22

    if-gez v4, :cond_9

    move-object/from16 v22, v9

    move/from16 v23, v10

    const-wide/16 v9, -0x1

    invoke-static {v9, v10, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object/from16 v22, v9

    move/from16 v23, v10

    move-wide/from16 v9, v20

    :goto_2
    iput-wide v9, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    const/4 v3, 0x4

    iget v2, v2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    if-ne v2, v3, :cond_a

    new-instance v3, Lcom/android/server/battery/MultiSbpController;

    invoke-direct {v3, v1, v5, v6}, Lcom/android/server/battery/MultiSbpController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/BatteryService$BattCallbackImpl;)V

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    iput-object v3, v0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    sget-object v2, Lcom/android/server/battery/BattHqmManager;->mHqmEventReceiver:Lcom/android/server/battery/BattHqmManager$1;

    if-eqz v2, :cond_b

    const-string/jumbo v2, "[SS]BattHqmManager"

    const-string/jumbo v3, "[hqmEventReceiver_onReceive]warn - mHqmEventReceiver already registered"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_4

    :cond_b
    new-instance v2, Lcom/android/server/battery/BattHqmManager$1;

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    sput-object v2, Lcom/android/server/battery/BattHqmManager;->mHqmEventReceiver:Lcom/android/server/battery/BattHqmManager$1;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_4
    sput-object v6, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    const-string/jumbo v2, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v6, 0x2

    move v2, v4

    const-string/jumbo v4, "com.sec.permission.OTG_CHARGE_BLOCK"

    const/4 v5, 0x0

    move v9, v2

    move-object v2, v13

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x2

    const-string/jumbo v5, "com.sec.permission.OTG_CHARGE_BLOCK"

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v2, :cond_c

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v2, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_c
    if-eqz v19, :cond_d

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v7, 0x2

    const-string/jumbo v5, "com.samsung.android.permission.wirelesspowersharing"

    const/4 v6, 0x0

    move-object v2, v15

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DEX_DUAL_VIEW:Z

    if-eqz v1, :cond_d

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_d
    if-eqz v23, :cond_e

    const-string/jumbo v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, v0, Lcom/android/server/BatteryService;->tm:Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v4, "CallThread"

    invoke-direct {v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/BatteryService$1;

    iget-object v4, v0, Lcom/android/server/BatteryService;->mCallHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v0, v4, v5}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    iput-object v2, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    goto :goto_5

    :cond_e
    move-object/from16 v1, p1

    :goto_5
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_WIRELESS_NIGHT_MODE:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v7, 0x2

    const-string/jumbo v5, "com.samsung.android.permission.FAST_WIRELESS_CHARGING_CONTROL"

    const/4 v6, 0x0

    move-object v2, v11

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_f
    const-string v1, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-static {v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/android/server/BatteryService$13;

    invoke-direct {v1, v0}, Lcom/android/server/BatteryService$13;-><init>(Lcom/android/server/BatteryService;)V

    const-string v2, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string/jumbo v2, "att.devicehealth.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    :cond_11
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/server/BatteryService;->ADAPTIVE_FAST_CHARGING_DISABLE_SYSFS_PATHS:[Ljava/lang/String;

    aget-object v2, v1, v16

    invoke-static {v2}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    aget-object v1, v1, v16

    goto :goto_6

    :cond_12
    const/16 v17, 0x1

    aget-object v1, v1, v17

    :goto_6
    iput-object v1, v0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "!@ mAfcDisableSysFs : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryService"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string/jumbo v1, "ro.boot.cm.param.offset"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    if-eq v1, v2, :cond_14

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_14
    move v1, v2

    :goto_7
    iput v1, v0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    const-string/jumbo v1, "ro.boot.pd.param.offset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    const-string/jumbo v1, "ro.boot.wc.param.offset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    const-string v3, "/sys/class/power_supply/battery/wc_param_info"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eq v1, v2, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    new-instance v1, Lcom/android/server/BatteryService$15;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

    :cond_15
    invoke-static {}, Landroid/sysprop/PowerProperties;->battery_input_suspended()Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    const-string v1, "BatteryService Created"

    const-string v2, ""

    invoke-static {v8, v1, v2}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/BatteryService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V

    iput-object v1, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    return-void
.end method

.method public static isFileSupported(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not found"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryService"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "-f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I
    .locals 3

    iget-object v0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    iget-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz p0, :cond_3

    return v2

    :cond_3
    iget-boolean p0, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendBroadcastToExplicitPackage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static setPassThrough(Z)V
    .locals 3

    const-string v0, "/sys/class/power_supply/battery/pass_through"

    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "BatteryService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "success to set PassThrough sysfs as "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p0, "fail to set PassThrough sysfs"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getHandlerForTest()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final isPoweredLocked(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v3, :cond_1

    return v2

    :cond_1
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v3, :cond_3

    return v2

    :cond_3
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    iget-boolean p1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean p0, p0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz p0, :cond_5

    return v2

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public final logBatteryStatsLocked()V
    .locals 9

    const-string/jumbo v0, "failed to delete temporary dumpsys file: "

    const-string/jumbo v1, "failed to close dumpsys output stream"

    const-string v2, "BatteryService"

    const-string/jumbo v3, "batterystats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "dropbox"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/DropBoxManager;

    if-eqz p0, :cond_6

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {p0, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v3, v5, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    const/4 v3, 0x2

    invoke-virtual {p0, v4, v6, v3}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    move-object v5, v7

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v5, v7

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v5, v7

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v6, v5

    goto :goto_6

    :catch_5
    move-exception p0

    move-object v6, v5

    goto :goto_2

    :catch_6
    move-exception p0

    move-object v6, v5

    goto :goto_4

    :goto_2
    :try_start_4
    const-string/jumbo v3, "failed to write dumpsys file"

    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_3

    :catch_7
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_4
    :try_start_6
    const-string/jumbo v3, "failed to dump battery service"

    invoke-static {v2, v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_5

    :catch_8
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_6
    if-eqz v5, :cond_4

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_7

    :catch_9
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_7
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw p0

    :cond_6
    :goto_8
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 7

    const-string/jumbo v0, "setWirelessChargingMode(All): "

    const-string v1, "BatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onBootPhase]phase:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x226

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    new-instance p1, Lcom/android/server/BatteryService$15;

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v5}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    iget-object v5, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "low_power_trigger_level"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v3, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    invoke-virtual {p0, v5}, Lcom/android/server/BatteryService;->registerContentObserver(Landroid/content/ContentResolver;)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SemInputDeviceManagerService"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    if-eqz v2, :cond_0

    const/16 v3, 0xb

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, v4, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    const-string p1, "BatteryService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$16;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v5}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "persist.sys.shutdown_received"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "persist.sys.shutdown_received"

    const-string/jumbo v5, "false"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$17;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/32 v5, 0xc350

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    sget-boolean v0, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_3

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "BatteryService"

    const-string/jumbo v1, "bootCompleted and HiccupPopup"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/power_supply/battery/batt_misc_event"

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    int-to-long v5, v1

    invoke-static {v5, v6, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->semCheckInputFeature()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    :cond_6
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_LIFE_EXTENDER:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "protect_battery"

    const/4 v1, -0x2

    invoke-static {p1, v0, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    const-string v0, "BatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "!@mLifeExtender Settings = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLifeExtenderSettingsObserver register"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "protect_battery"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLifeExtenderSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object p0, p0, Lcom/android/server/BatteryService;->globalEventListener:Lcom/android/server/battery/GlobalEventListener;

    if-eqz p0, :cond_a

    iget p1, p0, Lcom/android/server/battery/GlobalEventListener;->registeredEvents:I

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_9

    invoke-virtual {p0, v4}, Lcom/android/server/battery/GlobalEventListener;->onEvent(I)V

    :cond_9
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_a
    return-void
.end method

.method public final onStart()V
    .locals 9

    const-string v0, "BatteryService"

    const-wide/32 v1, 0x80000

    const-string v3, "HealthInitWrapper"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v3, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/BatteryService;)V

    invoke-static {v3}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const-string v3, "HealthInitWaitUpdate"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const-string/jumbo v6, "health: Waited "

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms for callbacks. Waiting another 1000 ms..."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v7, v8}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms and received the update."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v1, Lcom/android/server/BatteryService$BinderService;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string/jumbo v2, "battery"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v1, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;)V

    const-string/jumbo v2, "batteryproperties"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string v1, "!@[LLB] Write weeklyDiff EFS ->  Sys : "

    const-string v2, "/efs/FactoryApp/batt_after_manufactured"

    invoke-static {v2}, Lcom/android/server/BatteryService;->isFileSupported(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "/sys/class/power_supply/battery/batt_after_manufactured"

    if-nez v3, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mSavedDiffWeek:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$16;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "!@[LLB] can not change. value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_2
    const-string/jumbo v3, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :goto_3
    const-string/jumbo v3, "health: cannot register callback. (RemoteException)"

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public final processValuesLocked(Z)V
    .locals 38

    move-object/from16 v0, p0

    const/4 v6, 0x4

    const/4 v8, 0x2

    iget-object v9, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v9, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v10, v12, :cond_0

    iget v9, v9, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v9, v10, :cond_0

    move v9, v12

    goto :goto_0

    :cond_0
    move v9, v11

    :goto_0
    iput-boolean v9, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iget-object v9, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v9}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    move-result v9

    iput v9, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v9, :cond_2

    iget-object v10, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v10, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_1
    iput v11, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    goto :goto_2

    :cond_2
    :goto_1
    iput v11, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v13, v10, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz v13, :cond_3

    iput v12, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_3
    iget-boolean v13, v10, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz v13, :cond_4

    iget v13, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v13, v8

    iput v13, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_4
    iget-boolean v10, v10, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v10, :cond_5

    iget v10, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v10, v6

    iput v10, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_5
    iget-object v10, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v13, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    if-eqz v13, :cond_6

    iget v13, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const/high16 v14, 0x10000

    or-int/2addr v13, v14

    iput v13, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_6
    iget-boolean v10, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    or-int/2addr v10, v12

    iput v10, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    :cond_7
    :goto_2
    :try_start_0
    iget-object v13, v0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v14, v10, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v15, v10, Landroid/hardware/health/HealthInfo;->batteryHealth:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v29, 0x3

    :try_start_1
    iget v7, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v30, 0x5

    :try_start_2
    iget v1, v10, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v31, v6

    :try_start_3
    iget v6, v10, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v2, v10, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iget v3, v10, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    move/from16 v16, v9

    iget-wide v8, v10, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object v10, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v11, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v5, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v12, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget-boolean v10, v10, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    move/from16 v18, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v24, v4

    move/from16 v26, v5

    move/from16 v19, v6

    move/from16 v17, v7

    move-wide/from16 v22, v8

    move/from16 v28, v10

    move/from16 v25, v11

    move/from16 v27, v12

    invoke-interface/range {v13 .. v28}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIIIJIIIIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_0
    move/from16 v31, v6

    goto :goto_4

    :catch_1
    move/from16 v31, v6

    :goto_3
    const/16 v30, 0x5

    goto :goto_4

    :catch_2
    move/from16 v31, v6

    const/16 v29, 0x3

    goto :goto_3

    :catch_3
    :goto_4
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget-object v3, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    const-string v4, "BatteryService"

    const/4 v5, -0x1

    const-string v6, ", so doesn\'t shutdown"

    if-eq v2, v5, :cond_8

    const/4 v7, 0x1

    if-ne v2, v7, :cond_d

    goto :goto_5

    :cond_8
    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mShutdownIfNoPower:Z

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v2, :cond_a

    goto :goto_6

    :cond_a
    iget-boolean v7, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    if-nez v7, :cond_b

    goto :goto_6

    :cond_b
    if-nez v2, :cond_d

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v2, :cond_d

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    if-ltz v1, :cond_c

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@ BatteryService plug type: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    const-string v7, " battery current avg: "

    invoke-static {v2, v1, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    :goto_5
    new-instance v1, Lcom/android/server/BatteryService$16;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-nez v1, :cond_f

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@ BatteryService mBootCompleted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " am.isSystemReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    if-nez p1, :cond_10

    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    iget v2, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    if-eq v1, v2, :cond_11

    :cond_10
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    iput v1, v0, Lcom/android/server/BatteryService;->mLastChargingPolicy:I

    new-instance v1, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    sget-boolean v1, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v1, :cond_12

    iget-object v7, v0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz v7, :cond_12

    iget v8, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v9, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-wide v10, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iget-object v1, v7, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    new-instance v6, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;

    invoke-direct/range {v6 .. v11}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$1;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;IIJ)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v1, :cond_13

    const-string v1, "/sys/class/power_supply/battery/wc_tx_id"

    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    goto :goto_7

    :cond_13
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    :goto_7
    iget-object v1, v0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/server/battery/MultiSbpController;->processBatteryConnectionChanged()V

    :cond_14
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-wide v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    sget-wide v6, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    cmp-long v6, v1, v6

    const/high16 v7, 0x60000000

    if-nez v6, :cond_15

    goto :goto_8

    :cond_15
    const-string/jumbo v6, "[sendRemainingChargingTimeChangedIntent]remainingChargingTime:"

    const-string v8, " ,mLastRemainingChargingTime:"

    invoke-static {v6, v1, v2, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "[SS]BattFunctions"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "remaining_charging_time"

    invoke-virtual {v6, v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v8, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;

    invoke-direct {v8, v6}, Lcom/android/server/battery/BattFunctions$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sput-wide v1, Lcom/android/server/battery/BattFunctions;->mLastRemainingChargingTime:J

    :goto_8
    iget-object v1, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    if-nez p1, :cond_18

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne v6, v8, :cond_18

    iget v6, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne v6, v8, :cond_18

    iget-boolean v6, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne v6, v8, :cond_18

    iget v6, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-ne v6, v8, :cond_18

    iget v6, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-ne v6, v8, :cond_18

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    if-eq v2, v6, :cond_16

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v6, 0x46

    if-gt v2, v6, :cond_18

    :cond_16
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    if-eq v2, v6, :cond_17

    sub-int/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v6, 0xb

    if-gt v2, v6, :cond_18

    :cond_17
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    if-ne v6, v8, :cond_18

    iget v6, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    if-ne v6, v8, :cond_18

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v8, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-ne v8, v9, :cond_18

    iget v8, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v8, v9, :cond_18

    iget-boolean v8, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v8, v9, :cond_18

    iget v8, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    if-ne v8, v9, :cond_18

    iget-boolean v8, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v9, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v8, v9, :cond_18

    iget v8, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v8, v9, :cond_18

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    if-ne v6, v8, :cond_18

    iget v6, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v6, v8, :cond_18

    iget v6, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    if-ne v6, v8, :cond_18

    iget v6, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    if-ne v6, v8, :cond_18

    iget v6, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    if-ne v6, v8, :cond_18

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    if-ne v2, v6, :cond_18

    iget v2, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    if-eq v2, v6, :cond_5a

    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[processValuesLocked]batteryLevel:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,LastbatteryLevel:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,mPlugType:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,batteryStatus:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v2, v6, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v8, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-eq v6, v8, :cond_19

    const/4 v6, 0x1

    goto :goto_9

    :cond_19
    const/4 v6, 0x0

    :goto_9
    iget v8, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v9, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-eq v8, v9, :cond_1a

    const/4 v8, 0x1

    goto :goto_a

    :cond_1a
    const/4 v8, 0x0

    :goto_a
    iget-boolean v9, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-eq v9, v10, :cond_1b

    const/4 v9, 0x1

    goto :goto_b

    :cond_1b
    const/4 v9, 0x0

    :goto_b
    iget v10, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-eq v10, v11, :cond_1c

    const/4 v10, 0x1

    goto :goto_c

    :cond_1c
    const/4 v10, 0x0

    :goto_c
    iget v11, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v12, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eq v11, v12, :cond_1d

    const/4 v11, 0x1

    goto :goto_d

    :cond_1d
    const/4 v11, 0x0

    :goto_d
    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iget v12, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    if-eq v2, v12, :cond_1e

    sub-int/2addr v2, v12

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v12, 0x32

    if-le v2, v12, :cond_1e

    const/4 v2, 0x1

    goto :goto_e

    :cond_1e
    const/4 v2, 0x0

    :goto_e
    iget-object v12, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v12, v12, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iget v13, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    if-eq v12, v13, :cond_1f

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_1f

    const/4 v12, 0x1

    goto :goto_f

    :cond_1f
    const/4 v12, 0x0

    :goto_f
    iget-object v13, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v14, v13, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iget v15, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    if-eq v14, v15, :cond_20

    const/4 v14, 0x1

    goto :goto_10

    :cond_20
    const/4 v14, 0x0

    :goto_10
    iget v15, v13, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iget v7, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    if-eq v15, v7, :cond_21

    const/4 v7, 0x1

    goto :goto_11

    :cond_21
    const/4 v7, 0x0

    :goto_11
    iget-object v15, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    move/from16 v18, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    if-eq v5, v2, :cond_22

    const/4 v2, 0x1

    goto :goto_12

    :cond_22
    const/4 v2, 0x0

    :goto_12
    iget v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    move/from16 v19, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-eq v5, v2, :cond_23

    const/4 v2, 0x1

    goto :goto_13

    :cond_23
    const/4 v2, 0x0

    :goto_13
    iget-boolean v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    move/from16 v20, v2

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-eq v5, v2, :cond_24

    const/4 v2, 0x1

    goto :goto_14

    :cond_24
    const/4 v2, 0x0

    :goto_14
    iget v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    move/from16 v21, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    if-eq v5, v2, :cond_25

    const/4 v2, 0x1

    goto :goto_15

    :cond_25
    const/4 v2, 0x0

    :goto_15
    iget-boolean v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    move/from16 v22, v2

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-eq v5, v2, :cond_26

    const/4 v2, 0x1

    goto :goto_16

    :cond_26
    const/4 v2, 0x0

    :goto_16
    iget v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    move/from16 v23, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-eq v5, v2, :cond_27

    const/4 v2, 0x1

    goto :goto_17

    :cond_27
    const/4 v2, 0x0

    :goto_17
    iget v5, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v15, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    if-eq v5, v15, :cond_28

    const/4 v5, 0x1

    goto :goto_18

    :cond_28
    const/4 v5, 0x0

    :goto_18
    iget v15, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    move/from16 v24, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-eq v15, v2, :cond_29

    const/4 v2, 0x1

    goto :goto_19

    :cond_29
    const/4 v2, 0x0

    :goto_19
    iget v15, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    move/from16 v25, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    if-eq v15, v2, :cond_2a

    const/4 v2, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v2, 0x0

    :goto_1a
    iget v15, v13, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    move/from16 v26, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    if-eq v15, v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_1b

    :cond_2b
    const/4 v2, 0x0

    :goto_1b
    iget v13, v13, Landroid/hardware/health/HealthInfo;->chargingState:I

    iget v15, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    if-eq v13, v15, :cond_2c

    const/4 v13, 0x1

    goto :goto_1c

    :cond_2c
    const/4 v13, 0x0

    :goto_1c
    iget v15, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    move/from16 v27, v2

    iget v2, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    if-eq v15, v2, :cond_2d

    const/16 v28, 0x1

    :goto_1d
    const/16 v15, 0x16

    goto :goto_1e

    :cond_2d
    const/16 v28, 0x0

    goto :goto_1d

    :goto_1e
    new-array v2, v15, [Z

    const/16 v35, 0x0

    aput-boolean v6, v2, v35

    const/16 v37, 0x1

    aput-boolean v8, v2, v37

    const/16 v33, 0x2

    aput-boolean v9, v2, v33

    aput-boolean v10, v2, v29

    aput-boolean v11, v2, v31

    aput-boolean v18, v2, v30

    const/4 v6, 0x6

    aput-boolean v12, v2, v6

    const/4 v6, 0x7

    aput-boolean v14, v2, v6

    const/16 v6, 0x8

    aput-boolean v7, v2, v6

    const/16 v6, 0x9

    aput-boolean v19, v2, v6

    const/16 v32, 0xa

    aput-boolean v20, v2, v32

    const/16 v34, 0xb

    aput-boolean v21, v2, v34

    const/16 v6, 0xc

    aput-boolean v22, v2, v6

    const/16 v6, 0xd

    const/16 v35, 0x0

    aput-boolean v35, v2, v6

    const/16 v6, 0xe

    aput-boolean v23, v2, v6

    const/16 v36, 0xf

    aput-boolean v24, v2, v36

    const/16 v6, 0x10

    aput-boolean v5, v2, v6

    const/16 v5, 0x11

    aput-boolean v25, v2, v5

    const/16 v5, 0x12

    aput-boolean v26, v2, v5

    const/16 v5, 0x13

    aput-boolean v27, v2, v5

    const/16 v5, 0x14

    aput-boolean v13, v2, v5

    const/16 v5, 0x15

    aput-boolean v28, v2, v5

    const/4 v5, 0x0

    :goto_1f
    iget-object v6, v0, Lcom/android/server/BatteryService;->mBatteryChangedConditionCounts:[I

    const/16 v15, 0x16

    if-ge v5, v15, :cond_2f

    aget-boolean v7, v2, v5

    if-eqz v7, :cond_2e

    aget v7, v6, v5

    const/16 v37, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v6, v5

    goto :goto_20

    :cond_2e
    const/16 v37, 0x1

    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[countBatteryChangedConditions]mBatteryChangedConditionCounts:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    const-wide/16 v6, 0x0

    if-eq v2, v5, :cond_32

    const/16 v8, 0x58a

    const/16 v9, 0x58d

    const/16 v10, 0x589

    if-nez v5, :cond_30

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    move/from16 v5, v31

    invoke-virtual {v2, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-wide v8, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v2, v8, v6

    if-eqz v2, :cond_32

    iget v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-eq v2, v5, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v5, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v2, v5, v10}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0xaaa

    invoke-static {v5, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput-wide v6, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const/4 v2, 0x1

    goto :goto_21

    :cond_30
    if-nez v2, :cond_32

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v11, v13

    cmp-long v2, v13, v6

    if-eqz v2, :cond_31

    cmp-long v2, v11, v6

    if-eqz v2, :cond_31

    new-instance v2, Landroid/metrics/LogMaker;

    invoke-direct {v2, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    move/from16 v5, v30

    invoke-virtual {v2, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v9, 0x58c

    invoke-virtual {v2, v9, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget v5, v0, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v8, 0x58b

    invoke-virtual {v2, v8, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    iget-object v5, v0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_31
    iput-wide v6, v0, Lcom/android/server/BatteryService;->mChargeStartTime:J

    :cond_32
    move-wide v8, v6

    const/4 v2, 0x0

    :goto_21
    iget v5, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    if-gtz v5, :cond_33

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lez v5, :cond_33

    iput v5, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    :cond_33
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-ne v10, v11, :cond_34

    iget v11, v5, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iget v12, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    if-ne v11, v12, :cond_34

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iget-boolean v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    if-ne v5, v11, :cond_34

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eq v5, v11, :cond_35

    :cond_34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v11, v11, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v13, v13, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    filled-new-array {v5, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v10, 0xaa3

    invoke-static {v10, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "debug.tracing.battery_status"

    invoke-static {v10, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "debug.tracing.plug_type"

    invoke-static {v10, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-eq v5, v10, :cond_36

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v5, v10, v11}, [Ljava/lang/Object;

    move-result-object v5

    const/16 v10, 0xaa2

    invoke-static {v10, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_36
    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v5, :cond_37

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevelCritical:Z

    if-nez v5, :cond_37

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v5, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v8, v10

    const/4 v2, 0x1

    :cond_37
    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v5, :cond_38

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v5, :cond_3b

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3b

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v10, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v5, v10, :cond_3b

    iput-boolean v11, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_22

    :cond_38
    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v5, :cond_39

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_22

    :cond_39
    const/4 v5, 0x0

    iget-object v10, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v10, v10, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v11, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v10, v11, :cond_3a

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_22

    :cond_3a
    if-eqz p1, :cond_3b

    iget v11, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v10, v11, :cond_3b

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    :cond_3b
    :goto_22
    iget v5, v0, Lcom/android/server/BatteryService;->mSequence:I

    const/4 v11, 0x1

    add-int/2addr v5, v11

    iput v5, v0, Lcom/android/server/BatteryService;->mSequence:I

    sget-boolean v5, Lcom/android/server/BatteryService;->FEATURE_WIRELESS_FAST_CHARGER_CONTROL:Z

    const/16 v10, 0x64

    if-eqz v5, :cond_3c

    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    if-ne v5, v10, :cond_3c

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    if-nez v5, :cond_3c

    iput-boolean v11, v0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    const-string/jumbo v5, "enable wireless charger menu in setting"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v12, "show_wireless_charger_menu"

    const/4 v13, -0x2

    invoke-static {v5, v12, v11, v13}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v5, Lcom/android/server/BatteryService$16;

    move/from16 v11, v29

    invoke-direct {v5, v0, v11}, Lcom/android/server/BatteryService$16;-><init>(Lcom/android/server/BatteryService;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3c
    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v11, "seq"

    const/high16 v12, 0x4000000

    if-eqz v5, :cond_3e

    iget v13, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v13, :cond_3d

    const/4 v14, -0x1

    if-ne v13, v14, :cond_3e

    :cond_3d
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v13, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v5, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v13, Lcom/android/server/BatteryService$$ExternalSyntheticLambda10;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v5, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    invoke-virtual {v3, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v15, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v5, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_23

    :cond_3e
    if-nez v5, :cond_40

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-nez v5, :cond_3f

    const/4 v14, -0x1

    if-ne v5, v14, :cond_40

    :cond_3f
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v13, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v5, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v13, Lcom/android/server/BatteryService$$ExternalSyntheticLambda10;

    const/4 v14, 0x0

    invoke-direct {v13, v0, v5, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    invoke-virtual {v3, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v14

    iget-object v15, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v15, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v5, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_40
    :goto_23
    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v5, :cond_41

    const/4 v5, 0x1

    goto :goto_24

    :cond_41
    const/4 v5, 0x0

    :goto_24
    iget v13, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    if-eqz v13, :cond_42

    const/4 v13, 0x1

    goto :goto_25

    :cond_42
    const/4 v13, 0x0

    :goto_25
    if-nez v5, :cond_44

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v14, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_44

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v14, v0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v5, v14, :cond_44

    if-nez v13, :cond_43

    iget v13, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    if-gt v13, v14, :cond_43

    iget v13, v0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v5, v13, :cond_44

    :cond_43
    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.BATTERY_LOW"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v12, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v5, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_26

    :cond_44
    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v5, :cond_45

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v5, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v13, v0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v5, v13, :cond_45

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget v12, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object v14, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v5, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_45
    :goto_26
    iget-object v5, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v12, v5, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iget-object v13, v0, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    const/4 v14, 0x0

    const/4 v15, 0x2

    if-ne v12, v15, :cond_46

    iget-object v15, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v15, v15, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    move-wide/from16 v17, v6

    const/4 v6, 0x3

    if-ge v15, v6, :cond_47

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-nez v5, :cond_47

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    if-eq v12, v5, :cond_48

    const-string/jumbo v5, "skip send broadcast ACTION_BATTERY_CHANGED for 250ms"

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    const-wide/16 v5, 0xfa

    invoke-virtual {v13, v15, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_27

    :cond_46
    move-wide/from16 v17, v6

    :cond_47
    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    if-eqz v5, :cond_48

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_48
    :goto_27
    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    if-nez v5, :cond_49

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked(Z)V

    :cond_49
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    const/high16 v12, 0x24000000

    if-ne v6, v7, :cond_4b

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    if-ne v6, v7, :cond_4b

    iget-boolean v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    if-ne v6, v7, :cond_4b

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    if-ne v6, v7, :cond_4b

    iget-boolean v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    if-ne v6, v7, :cond_4b

    iget v6, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v7, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-ne v6, v7, :cond_4b

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    if-ne v5, v6, :cond_4b

    iget v5, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    if-ne v5, v6, :cond_4b

    iget v5, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    if-eq v5, v6, :cond_4a

    goto :goto_28

    :cond_4a
    const/4 v15, 0x1

    goto :goto_2a

    :cond_4b
    :goto_28
    const-string/jumbo v5, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-static {v12, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v7, "misc_event"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "sec_plug_type"

    iget v7, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    const-string/jumbo v7, "online"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    const-string/jumbo v7, "charge_type"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-string/jumbo v7, "power_sharing"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eqz v6, :cond_4c

    const/4 v6, 0x1

    goto :goto_29

    :cond_4c
    const/4 v6, 0x0

    :goto_29
    const-string/jumbo v7, "hv_charger"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    const-string/jumbo v7, "charger_type"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "pogo_plugged"

    iget v7, v0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v6, v6, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    const-string/jumbo v7, "current_event"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "wc_tx_id"

    iget v7, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v6, Lcom/android/server/BatteryService$25;

    const/4 v15, 0x1

    invoke-direct {v6, v0, v5, v15}, Lcom/android/server/BatteryService$25;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2a
    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iget v6, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    if-eq v5, v6, :cond_4e

    and-int/2addr v5, v15

    if-eqz v5, :cond_4d

    const/4 v5, 0x1

    goto :goto_2b

    :cond_4d
    const/4 v5, 0x0

    :goto_2b
    iget-boolean v6, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    if-eq v6, v5, :cond_4e

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.server.BatteryService.action.SEC_BATTERY_WATER_IN_CONNECTOR"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "water"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v7, Lcom/android/server/BatteryService$26;

    const/4 v12, 0x0

    invoke-direct {v7, v12, v6, v5}, Lcom/android/server/BatteryService$26;-><init>(ILandroid/content/Intent;Z)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBatteryEventWaterInConnector:Z

    :cond_4e
    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ne v5, v6, :cond_50

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    iget v6, v0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v5, v6, :cond_4f

    goto :goto_2d

    :cond_4f
    :goto_2c
    const/4 v5, 0x0

    goto/16 :goto_2f

    :cond_50
    :goto_2d
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget v12, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v12, "status"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string/jumbo v12, "health"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v11, v11, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v12, "present"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v12, "level"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "battery_low"

    iget-boolean v12, v0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v11, "scale"

    invoke-virtual {v5, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "plugged"

    iget v12, v0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v5, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v12, "voltage"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v12, "temperature"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string/jumbo v12, "charge_counter"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string/jumbo v12, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string/jumbo v12, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v11, v11, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const-string/jumbo v12, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {v5, v12, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v11, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v11

    iget-object v12, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v12, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v5

    if-le v5, v10, :cond_51

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    :cond_51
    if-eqz v11, :cond_4f

    iget-wide v10, v0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v12, v6, v10

    const-wide/32 v19, 0xea60

    cmp-long v5, v12, v19

    if-lez v5, :cond_52

    move-wide/from16 v10, v17

    goto :goto_2e

    :cond_52
    add-long v10, v10, v19

    sub-long/2addr v10, v6

    :goto_2e
    new-instance v5, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    const/4 v15, 0x1

    invoke-direct {v5, v15, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2c

    :goto_2f
    invoke-virtual {v0, v5}, Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V

    iget-object v5, v0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v5}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    if-eqz v2, :cond_54

    cmp-long v2, v8, v17

    if-eqz v2, :cond_54

    iget-object v2, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v5, :cond_53

    const-string/jumbo v5, "battery_discharge_threshold"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v5, "battery_discharge_duration_threshold"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    :cond_53
    move-object v2, v14

    :goto_30
    if-eqz v14, :cond_54

    if-eqz v2, :cond_54

    :try_start_4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    cmp-long v5, v8, v5

    if-gtz v5, :cond_54

    iget v5, v0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v6, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    sub-int/2addr v5, v6

    if-lt v5, v7, :cond_54

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_31

    :catch_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid DischargeThresholds GService string: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    :goto_31
    iget-boolean v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsAsoc:Z

    if-eqz v2, :cond_59

    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    int-to-long v5, v2

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    int-to-long v7, v2

    iget-boolean v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    const-string/jumbo v9, "[SS][BattInfo]BattInfoManager"

    if-nez v2, :cond_55

    const-string/jumbo v2, "[processAsoc]InitFinished False"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    :cond_55
    cmp-long v2, v7, v5

    if-eqz v2, :cond_59

    cmp-long v10, v5, v17

    if-nez v10, :cond_56

    goto :goto_34

    :cond_56
    if-gez v2, :cond_57

    iget-wide v10, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v10

    iput-wide v5, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[processAsoc]mBatteryUsageSinceLastAsocUpdate:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    invoke-static {v2, v5, v6, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_57
    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mAsocData:Lcom/android/server/battery/batteryInfo/AsocData;

    iget-object v5, v2, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Long;

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "[isValueInvalid]Invalid - mCurrentValues:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_32
    move-wide/from16 v5, v17

    goto :goto_33

    :cond_58
    iget-wide v5, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    const-wide/16 v7, 0x64

    cmp-long v2, v5, v7

    if-ltz v2, :cond_59

    goto :goto_32

    :goto_33
    iput-wide v5, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryUsageSinceLastAsocUpdate:J

    iget-object v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;

    const/4 v15, 0x1

    invoke-direct {v5, v1, v15}, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_59
    :goto_34
    iget v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    int-to-long v6, v2

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    int-to-long v8, v2

    iget-object v5, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processDischargingLevel(JJZ)V

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v5, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryStatus:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryHealth:I

    iget-boolean v5, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryPresent:Z

    iget v5, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    iget v5, v0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastPlugType:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryVoltage:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryTemperature:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingCurrent:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastMaxChargingVoltage:I

    iget-boolean v5, v0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevelCritical:Z

    iget v5, v0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastInvalidCharger:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCycleCount:I

    iget v5, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBroadcastChargingState:I

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBroadcastBatteryCapacityLevel:I

    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBatteryOnline:I

    iget v5, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBatteryChargeType:I

    iget-boolean v5, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mLastBatteryPowerSharingOnline:Z

    iget v5, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBatteryHighVoltageCharger:I

    iget-boolean v5, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    iput-boolean v5, v0, Lcom/android/server/BatteryService;->mLastchargerPogoOnline:Z

    iget v5, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    iput v5, v0, Lcom/android/server/BatteryService;->mLastBatteryEvent:I

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentEvent:I

    iget v2, v0, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastSecPlugTypeSummary:I

    iget v2, v0, Lcom/android/server/BatteryService;->mWcTxId:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastWcTxId:I

    :cond_5a
    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v13, 0x2

    if-ne v2, v13, :cond_5b

    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iget v5, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    if-eq v2, v5, :cond_5b

    const-string/jumbo v2, "com.samsung.server.BatteryService.action.SEC_BATTERY_CURRENT_CHANGED"

    const/high16 v5, 0x60000000

    invoke-static {v5, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v5, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    const-string/jumbo v6, "current_now"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/BatteryService$$ExternalSyntheticLambda10;

    const/4 v15, 0x1

    invoke-direct {v5, v0, v2, v15}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    iput v2, v0, Lcom/android/server/BatteryService;->mLastBatteryCurrentNow:I

    :cond_5b
    iget-boolean v2, v1, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    if-eqz v2, :cond_5c

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    int-to-long v2, v2

    const/4 v14, 0x0

    invoke-virtual {v1, v2, v3, v14}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processFullStatusUsage(JZ)V

    goto :goto_35

    :cond_5c
    const/4 v14, 0x0

    :goto_35
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v1, :cond_5d

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->sendWirelessPowerSharingIntentLocked()V

    :cond_5d
    sget-boolean v1, Lcom/android/server/BatteryService;->FEATURE_HICCUP_CONTROL:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_5e

    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mIsHiccupPopupShowing:Z

    if-eqz v1, :cond_5e

    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5e

    const-string v2, "/sys/class/power_supply/battery/batt_misc_event"

    int-to-long v5, v1

    invoke-static {v5, v6, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_5e
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    int-to-long v1, v1

    iget-wide v5, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    cmp-long v3, v1, v5

    iget-object v5, v0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    if-lez v3, :cond_5f

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    iget-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxTempRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5f
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    int-to-long v1, v1

    iget-wide v6, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    cmp-long v3, v1, v6

    if-lez v3, :cond_60

    iput-wide v1, v0, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    iget-object v1, v0, Lcom/android/server/BatteryService;->mSaveBatteryMaxCurrentRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_60
    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iget-boolean v2, v0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-eq v1, v2, :cond_61

    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    :cond_61
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_62

    const/4 v7, 0x1

    goto :goto_36

    :cond_62
    move v7, v14

    :goto_36
    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-eq v1, v7, :cond_63

    iput-boolean v7, v0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    invoke-virtual {v0, v7}, Lcom/android/server/BatteryService;->setWirelessChargingState(Z)V

    :cond_63
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const/16 v33, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_64

    const/4 v11, 0x1

    goto :goto_37

    :cond_64
    move v11, v14

    :goto_37
    iget-boolean v1, v0, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    if-eq v1, v11, :cond_66

    iget-object v1, v0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v1, :cond_65

    if-eqz v11, :cond_65

    const-string/jumbo v1, "notify wireless backpack on"

    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x3

    iput v12, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    iget-object v1, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v1, :cond_65

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v12}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    iget-object v1, v0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget v2, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    const/4 v15, 0x1

    invoke-virtual {v1, v15, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setWirelessChargingMode(All): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_65
    iput-boolean v11, v0, Lcom/android/server/BatteryService;->mLastWirelessBackPackChargingStatus:Z

    :cond_66
    return-void
.end method

.method public final registerContentObserver(Landroid/content/ContentResolver;)V
    .locals 10

    const-string/jumbo v0, "led_indicator_charing"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    const-string/jumbo v3, "led_indicator_low_battery"

    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "!@Led Charging Settings = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BatteryService"

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "!@Led Low Battery Settings = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BatteryService;->mLedSettingsObserver:Lcom/android/server/BatteryService$15;

    const/4 v7, -0x1

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    const-string/jumbo v0, "adaptive_fast_charging"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_SFC:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "super_fast_charging"

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@SuperFastCharging Settings = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_4
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_AFC:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "show_wireless_charger_menu"

    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    const-string/jumbo v0, "wireless_fast_charging"

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@WirelessFastCharging Settings = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SEC_FEATURE_WA_LCD_FLICKERING_WITH_VRR:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "refresh_rate_mode"

    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@RefreshRateMode Setting = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    const-string v5, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-nez v3, :cond_7

    const-wide/16 v8, 0x5

    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_5

    :cond_7
    const-wide/16 v8, 0x6

    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :goto_5
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_8
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FLOATING_FEATURE_BATTERY_SUPPORT_PASS_THROUGH:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "pass_through"

    invoke-static {p1, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_9

    move v3, v1

    goto :goto_6

    :cond_9
    move v3, v4

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@mPassThroughSettingsEnable Settings = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-static {v3}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_a
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    iget-object v3, p0, Lcom/android/server/BatteryService;->mFullCapacityEnableSettingsObserver:Lcom/android/server/BatteryService$15;

    const-string/jumbo v5, "protect_battery"

    if-eqz v0, :cond_b

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mProtectBatteryMode:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    iput v3, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mProtectionThreshold:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-static {v5, v8, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const-string/jumbo v5, "battery_protection_threshold"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mMaximumProtectionThreshold:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/BatteryService$15;

    const/4 v3, 0x5

    invoke-direct {v0, p0, v3}, Lcom/android/server/BatteryService$15;-><init>(Lcom/android/server/BatteryService;I)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThresholdObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/16 v0, 0x5f

    iput v0, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLtcHighThreshold:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/BatteryService;->mLtcHighThreshold:I

    int-to-long v8, v0

    const-string v0, "/efs/Battery/batt_ltc_highsoc_threshold"

    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    const/16 v0, 0x2760

    iput v0, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLtcHighSocDuration:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/BatteryService;->mLtcHighSocDuration:I

    int-to-long v8, v0

    const-string v0, "/efs/Battery/batt_ltc_highsoc_duration"

    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLtcReleaseThreshold:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    invoke-static {v0, v3, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/BatteryService;->mLtcReleaseThreshold:I

    int-to-long v8, v0

    const-string v0, "/efs/Battery/batt_ltc_release_threshold"

    invoke-static {v8, v9, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    goto :goto_9

    :cond_b
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_FULL_CAPACITY:Z

    if-eqz v0, :cond_e

    invoke-static {p1, v5, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v1

    goto :goto_7

    :cond_c
    move v0, v4

    :goto_7
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v1, :cond_d

    move v8, v1

    goto :goto_8

    :cond_d
    move v8, v4

    :goto_8
    iput-boolean v8, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "!@mFullCapacityEnable Settings = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/android/server/BatteryService;->mMultiSbpController:Lcom/android/server/battery/MultiSbpController;

    if-eqz v0, :cond_12

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/PowerManager;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    if-nez v3, :cond_f

    const-string/jumbo v3, "isScreenInteractive can\'t use PowerManager"

    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_a

    :cond_f
    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_a
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v3, "[SS]MultiSbpController"

    const-string/jumbo v5, "start"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/MultiSbpController;I)V

    iget-object v5, v0, Lcom/android/server/battery/MultiSbpController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v3, v0, v8}, Lcom/android/server/battery/MultiSbpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/MultiSbpController;I)V

    invoke-virtual {v5, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_10
    if-eqz v3, :cond_11

    const/4 v0, 0x2

    goto :goto_b

    :cond_11
    move v0, v1

    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerContentObserver reserve job for MultiSbpController.start when event happened : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/battery/GlobalEventListener;

    new-instance v5, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;

    invoke-direct {v5, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/BatteryService;)V

    invoke-direct {v3, v0, v5}, Lcom/android/server/battery/GlobalEventListener;-><init>(ILcom/android/server/BatteryService$$ExternalSyntheticLambda14;)V

    iput-object v3, p0, Lcom/android/server/BatteryService;->globalEventListener:Lcom/android/server/battery/GlobalEventListener;

    :cond_12
    :goto_c
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    if-eqz v0, :cond_13

    const-string/jumbo v0, "tx_battery_limit"

    const/16 v3, 0x1e

    invoke-static {p1, v0, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "!@Tx Battery Limit Settings = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-static {v3, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    const-string v5, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    int-to-long v8, v3

    invoke-static {v8, v9, v5}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/BatteryService;->mTxBatteryLimitSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_13
    const-string v0, "/sys/class/power_supply/battery/wc_param_info"

    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/server/BatteryService;->mWcParamOffset:I

    if-eq v3, v7, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wireless_wc_write"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/BatteryService;->mWcParamInfoSettingsObserver:Lcom/android/server/BatteryService$15;

    invoke-virtual {p1, v0, v4, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    const-string/jumbo v0, "wc param"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14
    return-void
.end method

.method public final resetBattery(Ljava/io/PrintWriter;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    iget-object v0, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v2}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroid/sysprop/PowerProperties;->battery_input_suspended(Ljava/lang/Boolean;)V

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryInputSuspended:Z

    :cond_1
    return-void
.end method

.method public final sendBatteryChangedIntentLocked(Z)V
    .locals 13

    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    const/high16 v1, 0x60000000

    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    const/high16 v2, 0x20000000

    invoke-static {v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v9, v5, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-nez v9, :cond_1

    iget-boolean v9, v5, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-nez v9, :cond_1

    iget-boolean v5, v5, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    goto :goto_1

    :cond_1
    :goto_0
    iput v6, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    :goto_1
    iput v7, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    goto :goto_2

    :cond_2
    iput v8, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    iput v8, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    :goto_2
    iget v5, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    const-string v10, "BatteryService"

    const-string/jumbo v11, "pogo_plugged"

    if-ne v3, v5, :cond_3

    iget v3, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    if-eq v2, v3, :cond_6

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mActivityManagerReady:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v4, v2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "kids_home_mode"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    goto :goto_3

    :cond_4
    move v2, v8

    move v3, v2

    :goto_3
    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    const-string/jumbo v2, "android.intent.extra.DOCK_STATE"

    iget v3, p0, Lcom/android/server/BatteryService;->mPogoDockState:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v1, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/BatteryService$25;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/BatteryService$25;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "device_provisioned: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "kids_home_mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/16 v4, 0x64

    const v5, 0x1080bfe

    if-ne v1, v6, :cond_7

    goto :goto_6

    :cond_7
    const/4 v6, 0x3

    const v12, 0x1080bf0

    if-ne v1, v6, :cond_9

    :cond_8
    move v5, v12

    goto :goto_6

    :cond_9
    if-eq v1, v3, :cond_b

    if-ne v1, v2, :cond_a

    goto :goto_5

    :cond_a
    const v5, 0x1080c0c

    goto :goto_6

    :cond_b
    :goto_5
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-lt v1, v4, :cond_8

    :goto_6
    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eqz v1, :cond_c

    move v1, v7

    goto :goto_7

    :cond_c
    move v1, v8

    :goto_7
    iget-object v6, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v12, v6, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    if-ge v12, v4, :cond_d

    iget v6, v6, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    if-ne v6, v2, :cond_d

    move v8, v7

    :cond_d
    const-string/jumbo v2, "seq"

    iget v6, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-string/jumbo v6, "status"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-string/jumbo v6, "health"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-string/jumbo v6, "present"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-string/jumbo v6, "level"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "battery_low"

    iget-boolean v6, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "scale"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "icon-small"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "plugged"

    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-string/jumbo v4, "voltage"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-string/jumbo v4, "temperature"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v2, v2, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v4, "technology"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "invalid_charger"

    iget v4, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-string/jumbo v4, "max_charging_current"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-string/jumbo v4, "max_charging_voltage"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-string/jumbo v4, "charge_counter"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    const-string/jumbo v4, "android.os.extra.CYCLE_COUNT"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->chargingState:I

    const-string/jumbo v4, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v2, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    const-string/jumbo v4, "android.os.extra.CAPACITY_LEVEL"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    const-string/jumbo v4, "online"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    const-string/jumbo v4, "charge_type"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-string/jumbo v4, "power_sharing"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "hv_charger"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    const-string/jumbo v4, "charger_type"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string/jumbo v4, "misc_event"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    const-string/jumbo v4, "current_event"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "protection"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending ACTION_BATTERY_CHANGED: level:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", health:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", remain:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-wide v4, v4, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", ac:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", usb:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", wireless:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", pogo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", misc:0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string v5, ", charge_type:"

    invoke-static {v4, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", charger_type:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", voltage:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", temperature:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", online:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", charging_status:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->chargingState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cycle_count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", current_avg:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v4, v4, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ps:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v4, v4, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-string v5, ", hvc:"

    const-string v6, ", current_event:0x"

    invoke-static {v2, v4, v5, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    const-string v4, ", mcc:"

    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mcv:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cc:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", present:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean v1, v1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", scale:100, technology:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", protection:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    invoke-virtual {v9, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    iput-object p0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v9, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final sendDeteriorationIntentLocked(Z)V
    .locals 16

    move-object/from16 v0, p0

    const-string/jumbo v1, "r0q,r0s,g0q,g0s,b0q,b0s"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    const/high16 v4, 0x10000000

    const-string/jumbo v5, "deterioration"

    const-string/jumbo v6, "com.samsung.server.BatteryService.action.ACTION_POPUP_BATTERY_DETERIORATION"

    const/16 v7, 0xf

    const-wide/16 v8, 0xa

    const/4 v10, 0x0

    const-wide/16 v11, 0x2710

    const/4 v13, 0x1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_BSOH_GALAXYDIAGNOSTICS"

    invoke-virtual {v1, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v1, v1, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const/high16 v14, 0xf0000

    and-int/2addr v1, v14

    shr-int/lit8 v1, v1, 0x10

    if-eqz p1, :cond_1

    if-eqz v1, :cond_4

    move-wide v8, v11

    move v10, v13

    goto :goto_0

    :cond_1
    iget v14, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    if-eq v14, v1, :cond_4

    iget-boolean v14, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v14, :cond_3

    if-ne v1, v7, :cond_3

    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    if-nez v7, :cond_2

    move-wide v8, v11

    :cond_2
    move v10, v13

    :cond_3
    iput v1, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    :cond_4
    :goto_0
    if-eqz v10, :cond_a

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/BatteryService$28;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v7, v4}, Lcom/android/server/BatteryService$28;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/server/battery/BattUtils;->readNodeAsDouble()D

    move-result-wide v14

    double-to-int v1, v14

    const/16 v14, 0x37

    if-ge v1, v14, :cond_6

    if-ltz v1, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "sendBroadcastDeterioration bsoh : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v14, "BatteryService"

    invoke-static {v14, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    goto :goto_2

    :cond_6
    move v1, v13

    :goto_2
    if-eqz p1, :cond_7

    move-wide v8, v11

    :goto_3
    move v10, v13

    goto :goto_4

    :cond_7
    iget v14, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    if-eq v14, v1, :cond_9

    iget-boolean v14, v0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v14, :cond_9

    if-ne v1, v7, :cond_9

    iget-boolean v7, v0, Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z

    if-nez v7, :cond_8

    move-wide v8, v11

    :cond_8
    iput v1, v0, Lcom/android/server/BatteryService;->mLastDeterioration:I

    goto :goto_3

    :cond_9
    :goto_4
    if-eqz v10, :cond_a

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Lcom/android/server/BatteryService$28;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v7, v4}, Lcom/android/server/BatteryService$28;-><init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;I)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method

.method public final sendWirelessPowerSharingIntentLocked()V
    .locals 12

    const-string/jumbo v0, "setWirelessChargingMode(TSP): "

    const-string/jumbo v1, "setWirelessChargingMode(DEVID_SPEN): "

    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    const/high16 v8, 0x10000000

    if-eq v7, v4, :cond_2

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_ENABLED"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "enabled"

    invoke-virtual {v7, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v9, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/BatteryService$26;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v7, v4}, Lcom/android/server/BatteryService$26;-><init>(ILandroid/content/Intent;Z)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    iput v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    iget-object v7, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v7, :cond_1

    const/16 v9, 0xb

    invoke-virtual {v7, v9, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    const-string v4, "BatteryService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mIsWirelessTxSupported:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v1, v5, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    const-string v1, "BatteryService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    if-eq v0, v5, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$32;

    invoke-direct {v4, p0, v5, v0}, Lcom/android/server/BatteryService$32;-><init>(Lcom/android/server/BatteryService;ZLandroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mLastTxEventRxConnected:Z

    :cond_4
    iget v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    if-eq v3, v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.server.BatteryService.action.WIRELESS_POWER_SHARING_TX_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tx_event"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$33;

    invoke-direct {v4, v3, v0}, Lcom/android/server/BatteryService$33;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v3, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingTxEvent:I

    :cond_5
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAdaptiveFastCharging(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    xor-int/lit8 v1, p1, 0x1

    const-string/jumbo v2, "afc"

    iget v3, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingOffset:I

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    xor-int/lit8 v0, p1, 0x1

    iget-object p0, p0, Lcom/android/server/BatteryService;->mAfcDisableSysFs:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "BatteryService"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "success to set AFC sysfs as "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p0, "fail to set AFC sysfs"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setSuperFastCharging(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    xor-int/lit8 v1, p1, 0x1

    const-string/jumbo v2, "sfc"

    iget p0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingOffset:I

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    xor-int/lit8 p0, p1, 0x1

    const-string v0, "/sys/class/power_supply/battery/pd_disable"

    invoke-static {v0, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    move-result p0

    const-string v0, "BatteryService"

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "success to set SFC sysfs as "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo p0, "fail to set SFC sysfs"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setWirelessChargingState(Z)V
    .locals 4

    const-string/jumbo v0, "wirelessChargingState: "

    const-string v1, ", notifyWirelessEnabled: "

    invoke-static {v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/sys/class/sec/switch/wireless"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-nez v3, :cond_0

    const-string/jumbo p1, "notify wireless on"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    invoke-static {v0, v2}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessChargingStatus:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPinDetected:Z

    if-nez p1, :cond_1

    const-string/jumbo p1, "notify wireless off"

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mNotifyWirelessEnabled:Z

    const-string p1, "0"

    invoke-static {v0, p1}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    if-eqz p1, :cond_2

    const/16 v0, 0xb

    iget v3, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    iget-object p1, p0, Lcom/android/server/BatteryService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iget v0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setWirelessChargingMode(II)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setWirelessChargingMode(All): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/BatteryService;->mLatestWirelessChargingMode:I

    invoke-static {p1, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setWirelessFastCharging(Z)V
    .locals 3

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingOffset:I

    if-eq v1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    xor-int/lit8 v0, p1, 0x1

    const-string/jumbo v2, "wfc"

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    :cond_0
    const-string p0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x2

    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v0, 0x1

    invoke-static {v0, v1, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void
.end method

.method public final setWirelessPowerSharingExternelEventInternal(II)V
    .locals 4

    const-string/jumbo v0, "setWirelessPowerSharingExternelEventInternal packageNum: "

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "BatteryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    not-int p1, p1

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    if-eq p1, v0, :cond_0

    const-string p2, "/sys/class/power_supply/battery/ext_event"

    int-to-long v2, p1

    invoke-static {v2, v3, p2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    iput p1, p0, Lcom/android/server/BatteryService;->mLastWirelessPowerSharingExternelEvent:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unplugBattery(Ljava/io/PrintWriter;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {v0, v1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v1, v0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public update(Landroid/hardware/health/HealthInfo;)V
    .locals 0

    return-void
.end method

.method public final updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v0, -0x2

    const-string/jumbo v1, "adaptive_fast_charging"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "!@AdaptiveFastCharging Settings = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BatteryService"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    return-void
.end method

.method public final updateBatteryWarningLevelLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    return-void
.end method

.method public final writeProtectBatteryValues()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeProtectBatteryValues:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    const-string v1, "/efs/Battery/batt_full_capacity"

    const-string v2, "/efs/Battery/batt_soc_rechg"

    const-string v3, "/sys/class/power_supply/battery/batt_soc_rechg"

    const-wide/16 v4, 0x64

    const-string v6, "/sys/class/power_supply/battery/batt_full_capacity"

    const-wide/16 v7, 0x0

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    if-eq v0, v9, :cond_2

    const/4 v9, 0x2

    if-eq v0, v9, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {v4, v5, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/BatteryService;->mProtectionThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " HIGHSOC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " OPTION"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    iget p0, p0, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    int-to-long v4, p0

    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void

    :cond_3
    invoke-static {v4, v5, v6}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v4, v5, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v7, v8, v3}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v7, v8, v2}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    return-void
.end method
