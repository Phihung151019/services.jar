.class public Lcom/android/server/am/KillPolicyManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static KPM_BTIME_ENABLE:Z

.field public static KPM_DEBUG:Z

.field public static KPM_POLICY_ENABLE:Z

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

.field public static MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

.field public static final MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

.field public static final RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

.field public static final RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

.field public static final SWAPPINESS:[I

.field public static brHandler:Landroid/os/Handler;

.field public static brHandlerThread:Lcom/android/server/ServiceThread;

.field public static mIsChimeraPmmKillTriggered:Z

.field public static final resumeSkipPackage:Ljava/util/ArrayList;

.field public static sCompactTriggerSize:I

.field public static sMinTriggerSize:I

.field public static sNativeFloodRatio:I

.field public static sNeverCollectWithin:I

.field public static sPmmEnabledBySpcm:Z

.field public static sPolicyTrigger:I

.field public static sSyspersFloodRatio:I

.field public static sWarmUpCycles:I

.field public static sWarmUpTrigger:I


# instance fields
.field public mAm:Lcom/android/server/am/ActivityManagerService;

.field public mAppLaunchCount:J

.field public mBigdataIndex:I

.field public mBigdataMetric:I

.field public mContext:Landroid/content/Context;

.field public mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

.field public mDisplaySizeStr:Ljava/lang/String;

.field public mHasPsiCpuPermission:Z

.field public mHasPsiIoPermission:Z

.field public mHasPsiMemoryPermission:Z

.field public mHqmManager:Landroid/os/SemHqmManager;

.field public final mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

.field public mIsFirstAppLaunch:Z

.field public final mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public mKpmStartTime:J

.field public mLastAwakeRealTimeMillis:J

.field public mLastAwakeUpTimeMillis:J

.field public mLastIdleEnterRealTimeMillis:J

.field public mLastIdleExitRealTimeMillis:J

.field public mLastIdleExitUpTimeMillis:J

.field public mLastIdleRealTimeMillis:J

.field public final mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

.field public final mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

.field public final mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

.field public mNumberOfStay:J

.field public final mPlatformStartUpTimeMillis:J

.field public mPolicyIndex:I

.field public mPolicyMetric:I

.field public mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public mPrevPackage:Ljava/lang/String;

.field public final mPrevProcessList:Ljava/util/ArrayList;

.field public mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public final mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

.field public final mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

.field public mTotalMem:I

.field public mTotalSwap:I

.field public mTrigger:I

.field public mVmStats:Ljava/util/HashMap;

.field public final policyBroadcastReceiver:Lcom/android/server/am/KillPolicyManager$1;


# direct methods
.method public static -$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "resetType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "nativeStart"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "nativeEnd"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "sysPersStart"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "sysPersEnd"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "pmmCyclePlatform"

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPmmCycleCountOnPlatformReset:I

    add-int/2addr v2, v1

    const-string/jumbo v1, "pmmCycleKernel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    sub-long/2addr v1, v3

    const-string/jumbo v3, "uptimeSystemBoot"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo p0, "reportResetState : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x64

    const/16 v1, 0x82

    const/16 v2, 0x91

    filled-new-array {v0, v0, v1, v1, v2}, [I

    move-result-object v1

    sput-object v1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    const-string/jumbo v1, "ro.slmk.kpm_policy_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string/jumbo v3, "ro.slmk.kpm_warm_up_trigger"

    const-string v4, "20"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    const/16 v3, 0x32

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro.slmk.kpm_policy_trigger"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    const-string/jumbo v3, "ro.slmk.kpm_warm_up_cycles"

    const-string v4, "3"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    const-string/jumbo v3, "ro.slmk.kpm_boot_enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string/jumbo v3, "ro.slmk.kpm_use_cri_pkg_ratio"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->brHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->brHandler:Landroid/os/Handler;

    const-string/jumbo v0, "persist.sys.kpm_onoff"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->sPmmEnabledBySpcm:Z

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x64

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    const/16 v0, 0xc

    sput v0, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    const/16 v0, 0x12c

    sput v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    sput v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/kpm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpPolicy:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Lcom/android/server/am/KillPolicyManager$2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    new-instance v0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$SwappinessController;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mPlatformStartUpTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleEnterRealTimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitRealTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleExitUpTimeMillis:J

    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastIdleRealTimeMillis:J

    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeRealTimeMillis:J

    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mLastAwakeUpTimeMillis:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mIdleModeReceiver:Lcom/android/server/am/KillPolicyManager$1;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->policyBroadcastReceiver:Lcom/android/server/am/KillPolicyManager$1;

    const-string p0, "ActivityManager_kpm"

    const-string v0, "KillPolicyManager()"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0

    :cond_0
    iget-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    iget-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    add-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0

    :cond_1
    iget-wide v0, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    iget p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    int-to-long v5, p0

    add-long/2addr v0, v5

    cmp-long p0, v0, v3

    if-lez p0, :cond_2

    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public static fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    if-eqz p0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    mul-float/2addr v1, v2

    float-to-double v3, v1

    add-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    mul-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v5

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "CHWT"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    const-string v3, "CHTC"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v2, 0x0

    aget v3, v0, v2

    const-string v4, "CLTC"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v3, 0x1

    aget v0, v0, v3

    const-string v4, "CBTC"

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    aget v1, v0, v1

    const-string v4, "CHAC"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v1, v0, v2

    const-string v4, "CLAC"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    aget v0, v0, v3

    const-string v1, "CBAC"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    const-string v1, "CKLC"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    array-length v4, v3

    if-ge v1, v4, :cond_0

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "CKAI"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "CKGI"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public static fillLmkdCounts([J)V
    .locals 9

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    move-result v2

    array-length v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v5, v1

    :goto_0
    if-ltz v3, :cond_1

    :goto_1
    add-int/lit8 v6, v5, 0x1

    sget-object v7, Lcom/android/server/am/SecLmkdStats;->LMKD_SLOT_ADJ_VALUES:[I

    const/16 v8, 0x11

    if-ge v6, v8, :cond_0

    aget v7, v7, v6

    aget-object v8, v0, v3

    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->getADJ()I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-static {v5, v6, v4, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    move-result v5

    add-int/2addr v2, v5

    move v5, v6

    goto :goto_1

    :cond_0
    int-to-long v6, v2

    aput-wide v6, p0, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {p0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "[ :]+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    :try_start_3
    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    :cond_0
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_7

    :catch_3
    move-exception p0

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_2
    :try_start_7
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p0

    :try_start_8
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :goto_7
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_9

    :goto_8
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    return-object v0
.end method

.method public static getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;)Lcom/android/server/am/KillPolicyManager$PsiFile;
    .locals 7

    const-string v0, "\n"

    const-string v1, "Exception"

    const-string v2, "ActivityManager"

    const-string v3, ""

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$PsiFileType;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p0, v4, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v4, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    :goto_2
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPsiFile Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_1

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_3
    new-instance p0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$PsiFile$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$PsiFile;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$PsiFile;->mIsEmptyFile:Z

    :goto_4
    return-object p0

    :goto_5
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_6
    throw p0
.end method


# virtual methods
.method public final calculateLmkdStatus(I)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v4

    if-eqz v3, :cond_18

    if-nez v4, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v0, v6, :cond_1

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v0, v6

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v5

    move-object v5, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    :goto_0
    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x2

    if-lt v0, v9, :cond_2

    iget-object v10, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v0, v9

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v8

    move-object v8, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v8, v7

    :goto_1
    iget-object v9, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x3

    if-lt v0, v10, :cond_3

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mPrevProcessList:Ljava/util/ArrayList;

    sub-int/2addr v0, v10

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v9

    move-object v9, v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v7

    :goto_2
    const/4 v10, 0x0

    move v11, v10

    :goto_3
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-ge v11, v0, :cond_6

    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_5

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-ne v2, v0, :cond_5

    :try_start_5
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityManager_kpm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getLruProcessesLOSP() pid["

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "] "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v7, v12

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v12

    goto :goto_5

    :cond_4
    :goto_4
    move-object v7, v12

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_5
    :try_start_6
    const-string v12, "ActivityManager_kpm"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :goto_6
    const-string v11, "ActivityManager_kpm"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    if-nez v7, :cond_a

    move v11, v10

    :goto_8
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    if-ge v11, v0, :cond_9

    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    if-eqz v12, :cond_8

    iget v0, v12, Lcom/android/server/am/ProcessRecord;->mPid:I
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-ne v2, v0, :cond_8

    :try_start_9
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ActivityManager_kpm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mRemovedProcesses pid["

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "] "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v7, v12

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v7, v12

    goto :goto_a

    :cond_7
    :goto_9
    move-object v7, v12

    goto :goto_c

    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    :goto_a
    :try_start_a
    const-string v12, "ActivityManager_kpm"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :goto_b
    const-string v11, "ActivityManager_kpm"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_c
    if-nez v7, :cond_a

    const-string v0, "ActivityManager_kpm"

    const-string/jumbo v1, "calculateLmkdStatus pid["

    const-string/jumbo v3, "] but don\'t get process info"

    invoke-static {v2, v1, v3, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object v11, v7, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v11, v11, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    sget-boolean v12, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/16 v13, 0x80

    if-eqz v12, :cond_b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v14, "pid["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v14, " adj["

    const-string/jumbo v15, "] hasActivities "

    invoke-static {v0, v2, v14, v15, v12}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, "ActivityManager_kpm"

    invoke-static {v2, v12, v11}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_b
    const/16 v2, -0x2710

    if-ne v0, v2, :cond_c

    goto/16 :goto_12

    :cond_c
    if-eqz v5, :cond_d

    if-eqz v11, :cond_d

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_14:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager_kpm"

    const-string/jumbo v7, "calculateLmkdStatus currentProcess Killed "

    invoke-static {v7, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_d
    if-eqz v8, :cond_e

    if-eqz v11, :cond_e

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_10:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-boolean v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    if-nez v7, :cond_15

    const/16 v7, 0x3e9

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    invoke-direct {v7, v5, v4, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->mProcessMemoryDumpThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

    iput-boolean v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_d

    :cond_e
    if-eqz v9, :cond_f

    if-eqz v11, :cond_f

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_8:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_d

    :cond_f
    const/16 v5, 0x352

    if-ge v0, v5, :cond_11

    const/16 v5, 0x32

    if-lt v0, v5, :cond_10

    const/16 v5, 0xfa

    if-gt v0, v5, :cond_10

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_12:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_d

    :cond_10
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_5:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_d

    :cond_11
    if-eqz v11, :cond_14

    const/16 v5, 0x384

    if-le v0, v5, :cond_12

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_2:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_d

    :cond_12
    if-ne v0, v5, :cond_13

    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_3:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_d

    :cond_13
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_4:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    goto :goto_d

    :cond_14
    sget-object v5, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_1:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-static {v3, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    invoke-static {v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V

    :cond_15
    :goto_d
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-boolean v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    if-eqz v3, :cond_16

    iget v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    if-le v3, v0, :cond_16

    if-eq v0, v2, :cond_16

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    :cond_16
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ActivityManager_kpm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "kpmRawBigdata lmkdState : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "kpmRawBigdata lmkdStateCount ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v1

    array-length v2, v1

    :goto_e
    if-ge v10, v2, :cond_17

    aget-object v3, v1, v10

    iget-object v5, v4, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-wide v5, v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_17
    const-string/jumbo v1, "]"

    const-string v2, "ActivityManager_kpm"

    invoke-static {v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :goto_f
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :goto_10
    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v0

    :goto_11
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    :cond_18
    :goto_12
    return-void
.end method

.method public final changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v1, "ActivityManager_kpm"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Policy ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    iget v2, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    const-string v3, "ActivityManager"

    if-gt p1, v2, :cond_1

    const-string/jumbo p1, "SwappinessController() - new value is lower than default value, go back to default"

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    :cond_1
    const-string/jumbo v2, "sys.sysctl.swappiness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SwappinessController() - changed from "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "android"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v2, "kpm_level"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string/jumbo v2, "kpm_prev_level"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Broadcast sent: prev state = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    array-length v2, p2

    if-le v2, v1, :cond_1

    aget-object p0, p2, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "leak.dmabuf"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    iget-object p1, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    iput-boolean v1, p1, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    sget-object p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V

    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    return-void

    :cond_1
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const-string v4, " [idx, peakLmkdKillAdj, [procMemInfo], [{native(Pss SwapPss Rss)}{sys}{pers}{persvc}{fore}{vis}{percept}{perceptl}{perceptm}{backup}{heavy}{servicea}{home}{prev}{serviceb}{picked}{cached}], [Process name, Process version, Package name, Package version, label, pss, swap, rss, procstats_dumpPssUssRss], ...]"

    const-string v5, " [idx,avg_mem,mem_avl,avg_swap,hotCnt,prKillCnt,svKillCnt,PkgCnt,PkgKillCnt,lmkdTotal,lmkdPrev,lmkdService,lmkdPicked,lmkdSeed,lmkdCri,lmk,cachedkill,emptykill,cur_state,next_state,policy_state,psi_cpu_avg,psi_mem_avg,psi_io_avg,psi_cpu_max,psi_mem_max,psi_io_max,reset_status,lmkdState,lmkdStateCnt,lmkdCnt,tiny_nxst_history,time]"

    if-lt v3, v1, :cond_5

    const-string v3, " KPM Stats(policy):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    const/16 v6, 0x18

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v7, p2

    move v6, v0

    :goto_0
    const/16 v8, 0x17

    iget-object v9, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-ge v6, v3, :cond_3

    aget-object v9, v9, v7

    iget v10, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyMetric:I

    invoke-virtual {v9, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, -0x1

    if-gez v7, :cond_2

    move v7, v8

    :cond_2
    add-int/2addr v6, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v6, " Heavy Pss List(policy):"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v6, v0

    :goto_1
    if-ge v6, v3, :cond_5

    aget-object v7, v9, p2

    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_4

    move p2, v8

    :cond_4
    add-int/2addr v6, v1

    goto :goto_1

    :cond_5
    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    const/16 v3, 0x1e

    if-lt p2, v1, :cond_9

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, " KPM Stats(bigdata):"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v5, v0

    move v6, v2

    :goto_2
    const/16 v7, 0x1d

    iget-object v8, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-ge v5, p2, :cond_7

    aget-object v8, v8, v6

    iget v9, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_6

    move v6, v7

    :cond_6
    add-int/2addr v5, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v5, " Heavy Pss List(bigdata):"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v4, v0

    :goto_3
    if-ge v4, p2, :cond_9

    aget-object v5, v8, v2

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmHeavyPssData()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_8

    move v2, v7

    :cond_8
    add-int/2addr v4, v1

    goto :goto_3

    :cond_9
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " KPM Tunable Parameters:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " KPM_POLICY_ENABLE: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    const-string v5, " KPM_DEBUG_ENABLE: "

    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v5, " KPM_CURRENT_STATE: "

    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " KPM_WARM_UP_TRIGGER_TUNABLE: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    const-string v5, " KPM_POLICY_TRIGGER_TUNABLE: "

    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    const-string v5, " KPM_WARM_UP_CYCLES_TUNABLE: "

    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v4, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    const-string v5, " KPM_MEM_CRITICAL_LOW_DETECT_ENABLE: "

    invoke-static {v2, v4, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "persist.sys.kpm_cri_mem_detect"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ : 700"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    const-string v6, " MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH : "

    invoke-static {v2, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v5, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " KPM_POLICY_SWAPPINESS_DEFAULT : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    iget v5, v4, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    const-string v6, " KPM_POLICY_SWAPPINESS_CURRENT : "

    invoke-static {v2, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v4, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "\n KPM Auto Restart Parameters"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " - Min Triggger Size    : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " - Never Collect Within : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " - Compact Trigger Size : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " - Native Flood Ratio   : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, " - Syspers Flood Ratio  : "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "\n ChimeraTrigger Stats:"

    const-string v5, " - Last Policy Score      : "

    invoke-static {p1, v4, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    const-string v6, " - Trigger Threshold Score: "

    invoke-static {v4, v5, p1, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    const-string v6, " - Trigger Required       : "

    invoke-static {v4, v5, p1, v6}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    const-string v6, " - Last Triggered Time(ms): "

    invoke-static {v4, v5, p1, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "MemoryFloodDetector"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    const-string/jumbo v4, "native"

    invoke-static {p1, v4, v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    :cond_a
    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    const-string/jumbo v4, "sys"

    invoke-static {p1, v4, v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    const-string/jumbo v2, "pers"

    invoke-static {p1, v2, p2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->dumpItem(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/List;)V

    :cond_b
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "ProcessSamplingManager"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Constants"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  MAX_SKIP="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  MAX_SKIP_IN_USER_TRIAL="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  PERCENT_DEVICE_SAMPLING="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  SKIP_FIRST_AFTER_BOOT="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  MAX_SIZE_JSON_STRING="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x4c2c

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, " States"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mIsSampleDevice="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mIsSampleDevice:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  mSkipCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSkipCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  mCurrentState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p2, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "MemoryStabilityEventManager"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  mLastRealtimeMinutes="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->mReporter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;

    iget p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastRealtimeMinutes:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mLastUptimeMinutes="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastUptimeMinutes:I

    const-string v2, "  mLastCounter="

    const-string/jumbo v3, "["

    invoke-static {p2, p1, v2, v3}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    iget-object v2, p2, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    array-length v2, v2

    if-ge v0, v2, :cond_d

    if-lez v0, :cond_c

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    iget-object p2, p2, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aget-wide v2, p2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    add-int/2addr v0, v1

    goto :goto_4

    :cond_d
    const-string/jumbo p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpKpmStatsToFile(Ljava/lang/String;)V
    .locals 9

    const-string v0, "ActivityManager_kpm"

    const-string/jumbo v1, "dumpKpmStatsToFile: failed to close PrintWriter "

    const-string v2, "ActivityManager"

    const-string/jumbo v3, "dumpKpmStatsToFile: "

    const-string v4, "Auto-Restart due to: "

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v5}, Lcom/android/server/am/KillPolicyManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v6}, Ljava/io/StringWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v5, v7

    goto :goto_5

    :catch_1
    move-exception p0

    move-object v5, v7

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    move-object v6, v5

    goto :goto_5

    :catch_3
    move-exception p0

    move-object v6, v5

    :goto_0
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v5, :cond_0

    :try_start_5
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_3
    const-string p0, ""

    :goto_4
    invoke-static {v3, p0, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_5
    if-eqz v5, :cond_2

    :try_start_6
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    goto :goto_6

    :catch_5
    move-exception p1

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/StringWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    :goto_8
    throw p0
.end method

.method public final forceChangeState(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LIGHT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "HEAVY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "CRITICAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5cfe9861 -> :sswitch_2
        0x416f8a7 -> :sswitch_1
        0x4513cf6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mIsFirstAppLaunch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRawPolicy:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget p0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyIndex:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;
    .locals 10

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    new-instance v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getActiveFileSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getInactiveFileSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getRbinCachedSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getKReclaimableSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSReclaimableSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSUnreclaimSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getGpuSwapSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemCachedSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getGpuTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getVmAllocUsedSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSystemUncachedSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    :cond_0
    return-object v1
.end method

.method public final reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    const-string v5, "ActivityManager_kpm"

    if-nez v4, :cond_0

    const-string/jumbo v0, "it has \'zero\' samples."

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "TYPE"

    move/from16 v8, p1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "CRST"

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "NXST"

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "PLST"

    iget-object v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v8}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "DRAM"

    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v8, v8, 0x400

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "SWPT"

    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "FCMA"

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    int-to-double v8, v8

    iget v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "AVMA"

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    int-to-double v8, v8

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v12

    div-double/2addr v8, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "SWUA"

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    int-to-double v8, v8

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v12

    div-double/2addr v8, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "DISP"

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "PCKC"

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    int-to-double v8, v8

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v12

    div-double/2addr v8, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "PCKA"

    iget v8, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    int-to-double v8, v8

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v12

    div-double/2addr v8, v12

    add-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "SDBC"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "CCHC"

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    int-to-double v12, v9

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v14, v9

    div-double/2addr v12, v14

    add-double/2addr v12, v10

    double-to-int v9, v12

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "CCHA"

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    int-to-double v12, v9

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v14, v9

    div-double/2addr v12, v14

    add-double/2addr v12, v10

    double-to-int v9, v12

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "LNCT"

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v9

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v9

    iget v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "LPKC"

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "PKPC"

    iget v9, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "SKSC"

    iget v9, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "SKPC"

    iget v9, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v6, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "VFAK"

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v7, "HPAK"

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v7, "PRAK"

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v7, "SRVK"

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v7, "PCKK"

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v7, "SBAK"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "CHMK"

    iget-wide v12, v3, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    invoke-virtual {v6, v7, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "CHEK"

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CHNK"

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "CACK"

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "APPC"

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "MEDK"

    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "CRIK"

    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "LMKK"

    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v6, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SWPN"

    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_1
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    const/4 v9, 0x1

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v15, v7

    move v4, v8

    :goto_1
    const-wide/16 v16, 0x0

    if-ge v4, v15, :cond_3

    move-wide/from16 v18, v10

    aget-object v10, v7, v4

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    aget-wide v16, v10, v8

    aget-wide v20, v10, v9

    const/16 p1, 0x2

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    add-long v12, v16, v20

    long-to-double v11, v12

    div-double v11, v11, v22

    add-double v11, v11, v18

    double-to-long v11, v11

    const/4 v13, 0x3

    aget-wide v16, v10, v13

    move-wide/from16 v13, v16

    goto :goto_2

    :cond_2
    const/16 p1, 0x2

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    move-wide/from16 v11, v16

    move-wide v13, v11

    :goto_2
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v10, v18

    goto :goto_1

    :cond_3
    move-wide/from16 v18, v10

    const/16 p1, 0x2

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v4

    move v10, v8

    :goto_3
    if-ge v10, v7, :cond_5

    aget-object v11, v4, v10

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    aget-wide v11, v11, v9

    long-to-double v11, v11

    div-double v11, v11, v22

    add-double v11, v11, v18

    double-to-long v11, v11

    goto :goto_4

    :cond_4
    move-wide/from16 v11, v16

    :goto_4
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v4

    move v10, v8

    :goto_5
    if-ge v10, v7, :cond_8

    aget-object v11, v4, v10

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    aget-wide v11, v11, p1

    long-to-double v11, v11

    div-double v11, v11, v22

    add-double v11, v11, v18

    double-to-long v11, v11

    goto :goto_6

    :cond_6
    move-wide/from16 v11, v16

    :goto_6
    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    move-wide/from16 v18, v10

    const/16 p1, 0x2

    const-wide/high16 v22, 0x4090000000000000L    # 1024.0

    :cond_8
    const-string/jumbo v4, "PRST"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v4

    div-double/2addr v10, v12

    add-double v10, v10, v18

    double-to-int v4, v10

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v7

    div-double/2addr v10, v12

    add-double v10, v10, v18

    double-to-int v7, v10

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v12, v7

    div-double/2addr v10, v12

    add-double v10, v10, v18

    double-to-int v7, v10

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    add-double v10, v10, v18

    double-to-int v7, v10

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    add-double v10, v10, v18

    double-to-int v7, v10

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    add-double v10, v10, v18

    double-to-int v7, v10

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const-string/jumbo v4, "PSIS"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1, v6}, Lcom/android/server/am/KillPolicyManager;->fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V

    const-string/jumbo v3, "STAY"

    iget-wide v10, v0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "ELAP"

    iget-wide v10, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    iget-wide v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v10, v14

    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "UPTM"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    div-long/2addr v10, v12

    div-long/2addr v10, v14

    invoke-virtual {v6, v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "RSTF"

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "KVER"

    const-string v4, "4.7"

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "LS"

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v4

    array-length v7, v4

    move v10, v8

    :goto_7
    if-ge v10, v7, :cond_9

    aget-object v11, v4, v10

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-wide v11, v12, v11

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    const-string v4, "LSC"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v4

    array-length v7, v4

    move v10, v8

    :goto_8
    if-ge v10, v7, :cond_a

    aget-object v11, v4, v10

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget-wide v11, v12, v11

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    const-string v4, "LC"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    move v4, v8

    :goto_9
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_c

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v7, 0x5

    if-le v4, v7, :cond_b

    goto :goto_a

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    const-string v4, "LDI"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move v4, v8

    :goto_b
    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_e

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v10, :cond_d

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c

    :cond_d
    iget-wide v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_c
    iget-object v10, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v11, v11

    div-double v11, v11, v22

    add-double v11, v11, v18

    double-to-int v11, v11

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v11, v11, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v11, v11

    div-double v11, v11, v22

    add-double v11, v11, v18

    double-to-int v11, v11

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v10

    iget-object v7, v7, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v11, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v11, v11

    div-double v11, v11, v22

    add-double v11, v11, v18

    double-to-int v7, v11

    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    const-string v4, "LHI"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    if-eqz v4, :cond_f

    iget v4, v4, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget v7, v0, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v7, v7, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_f
    const-string/jumbo v4, "PMI"

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    if-eqz v4, :cond_11

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v4

    move v10, v8

    :goto_d
    if-ge v10, v7, :cond_11

    aget-object v11, v4, v10

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v12, v11, v8

    long-to-double v12, v12

    div-double v12, v12, v22

    add-double v12, v12, v18

    double-to-int v12, v12

    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    aget-wide v13, v11, v9

    long-to-double v13, v13

    div-double v13, v13, v22

    add-double v13, v13, v18

    double-to-int v13, v13

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    aget-wide v13, v11, p1

    long-to-double v13, v13

    div-double v13, v13, v22

    add-double v13, v13, v18

    double-to-int v11, v13

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_e

    :cond_10
    const/4 v11, -0x1

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_11
    const-string v2, "LHMA"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eqz v1, :cond_12

    :goto_f
    :try_start_1
    array-length v3, v1

    if-ge v8, v3, :cond_12

    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_12
    const-string/jumbo v1, "TNXST"

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v4, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_11

    :catch_1
    :goto_10
    const-string/jumbo v1, "failed to create the KPUT"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    :goto_11
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized sendHqmBigData(Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "Success to report \'KPUT\' : "

    const-string v4, "KPUT"

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v2, "HqmManagerService"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SemHqmManager;

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mHqmManager:Landroid/os/SemHqmManager;

    if-nez v1, :cond_2

    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "ActivityManager_kpm"

    const-string v0, "HQM services is not working"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_4

    :try_start_1
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string/jumbo v3, "Sluggish"

    const-string/jumbo v5, "ph"

    const-string v6, "1.1"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v9, p1

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_3

    const-string p1, "ActivityManager_kpm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p1, "ActivityManager_kpm"

    const-string/jumbo v0, "failed to send to server"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p1, :cond_5

    const-string p1, "ActivityManager_kpm"

    const-string/jumbo v0, "failed to send to server."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
