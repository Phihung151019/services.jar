.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field public final mActivityChangeObserver:Lcom/android/server/am/BatteryStatsService$1;

.field public mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field public final mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

.field public final mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public final mContext:Landroid/content/Context;

.field public final mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

.field public final mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

.field public mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

.field public final mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

.field public final mEntityNames:Ljava/util/Map;

.field public final mHandler:Landroid/os/Handler;

.field public mLastPowerStateFromRadio:I

.field public mLastPowerStateFromWifi:I

.field public final mLock:Ljava/lang/Object;

.field public volatile mMonitorEnabled:Z

.field public final mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field public final mNetworkCallback:Lcom/android/server/am/BatteryStatsService$2;

.field public final mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

.field public final mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

.field public final mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field public mPowerStatsInternal:Landroid/power/PowerStatsInternal;

.field public final mPowerStatsLock:Ljava/lang/Object;

.field public final mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

.field public final mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

.field public final mRailsStatsCollectionEnabled:Z

.field public final mSemBatteryUsageStatsProvider:Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

.field public final mStateNames:Ljava/util/Map;

.field public final mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public final mSystemReady:Landroid/os/ConditionVariable;

.field public mSystemServicesReady:Z

.field public final mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

.field public final mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;


# direct methods
.method public static bridge synthetic -$$Nest$smnativeWaitWakeup(Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 28

    move-object/from16 v5, p0

    move-object/from16 v11, p1

    move-object/from16 v3, p2

    invoke-direct {v5}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    new-instance v0, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags;

    invoke-direct {v0}, Lcom/android/server/power/feature/PowerManagerFlags;-><init>()V

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mPowerManagerFlags:Lcom/android/server/power/feature/PowerManagerFlags;

    const/4 v12, 0x1

    iput-boolean v12, v5, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    iput-boolean v12, v5, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mSystemReady:Landroid/os/ConditionVariable;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mPowerStatsLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iput v12, v5, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    iput v12, v5, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    new-instance v1, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v1, v5}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mActivityChangeObserver:Lcom/android/server/am/BatteryStatsService$1;

    iput-boolean v13, v5, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    new-instance v1, Lcom/android/server/am/BatteryStatsService$2;

    invoke-direct {v1, v5}, Lcom/android/server/am/BatteryStatsService$2;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mNetworkCallback:Lcom/android/server/am/BatteryStatsService$2;

    iput-object v11, v5, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    const-string/jumbo v1, "batterystats-handler"

    invoke-static {v1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v5, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Lcom/android/internal/os/MonotonicClock;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "monotonic_clock.xml"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/MonotonicClock;-><init>(Ljava/io/File;)V

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v11}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    new-instance v0, Lcom/android/internal/os/CpuScalingPolicyReader;

    invoke-direct {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/os/CpuScalingPolicyReader;->read()Lcom/android/internal/os/CpuScalingPolicies;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e004b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    new-instance v4, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;

    invoke-direct {v4}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;-><init>()V

    iput-boolean v0, v4, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugHighBatteryLevel:Z

    iput-boolean v1, v4, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mResetOnUnplugAfterSignificantCharge:Z

    iput v2, v4, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mMaxHistorySizeBytes:I

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "([^:]+):(\\d+)\\s*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v1, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "*"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-wide v6, v4, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mDefaultPowerStatsThrottlePeriod:J

    goto :goto_0

    :cond_1
    iget-object v8, v4, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;->mPowerStatsThrottlePeriods:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid config_powerStatsThrottlePeriods format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    invoke-direct {v1, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig$Builder;)V

    iput-object v1, v5, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl;

    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v2, v5, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v4, v5, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    iget-object v7, v5, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    iget-object v8, v5, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v9, v5, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v10, v5, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$3;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object v10, v0

    move-object v9, v3

    move-object v8, v5

    iput-object v10, v8, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    new-instance v0, Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v1, v8, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;

    invoke-direct {v2, v11}, Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v2, v10, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;-><init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker$Injector;Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/Handler;)V

    iput-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iput-object v0, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mExternalSync:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    iget-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-object v2, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v2, :cond_3

    iput-wide v0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->mTimeoutUs:J

    :cond_3
    new-instance v5, Lcom/android/server/power/stats/PowerStatsStore;

    iget-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x19000

    invoke-direct {v5, v9, v1, v2, v0}, Lcom/android/server/power/stats/PowerStatsStore;-><init>(Ljava/io/File;JLandroid/os/Handler;)V

    iput-object v5, v8, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v1, v8, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v3, v8, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;

    invoke-direct {v4, v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda106;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    new-instance v6, Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v7, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v7}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    const/16 v15, 0x12

    invoke-virtual {v7, v15}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v15

    filled-new-array {v13, v12}, [I

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    filled-new-array {v13, v12, v14}, [I

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v11, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    const/4 v14, 0x2

    invoke-direct {v11, v14, v4}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    iput-object v11, v15, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v4, 0xc

    invoke-virtual {v7, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v11

    filled-new-array {v13, v12}, [I

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v15

    invoke-virtual {v11, v15}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v14, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/16 v15, 0x8

    invoke-direct {v14, v1, v15}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v14, v11, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v7, v12, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v4

    new-instance v11, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;

    invoke-direct {v11, v3, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/internal/os/PowerProfile;)V

    iput-object v11, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v7, v13}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/16 v11, 0x9

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v3, 0xf

    invoke-virtual {v7, v3, v13}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    const/4 v11, 0x1

    invoke-direct {v4, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;-><init>(I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v3, 0x8

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v4

    filled-new-array {v13, v12}, [I

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v11, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v14, 0x1

    invoke-direct {v11, v1, v14}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v11, v4, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v4, 0xe

    invoke-virtual {v7, v4, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    const/4 v11, 0x2

    invoke-direct {v4, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;-><init>(I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v3, 0xb

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x2

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    invoke-virtual {v7, v14}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x3

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/4 v3, 0x4

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x4

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x0

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/4 v3, 0x6

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x5

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x6

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v3, 0xa

    invoke-virtual {v7, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v3

    filled-new-array {v13, v12}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v4, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    const/4 v11, 0x7

    invoke-direct {v4, v1, v11}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;I)V

    iput-object v4, v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    const/16 v1, 0x9

    invoke-virtual {v7, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v13, v12}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    new-instance v3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;)V

    iput-object v3, v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    new-instance v0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;-><init>(I)V

    iput-object v0, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    iput-object v0, v7, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    filled-new-array {v13, v12}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)V

    const/4 v14, 0x2

    filled-new-array {v13, v12, v14}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)V

    invoke-direct {v6, v7}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    invoke-direct {v2, v5, v6}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V

    iput-object v2, v8, Lcom/android/server/am/BatteryStatsService;->mPowerAttributor:Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;

    iget-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e0033

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    new-instance v6, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;

    invoke-direct {v6, v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    new-instance v15, Lcom/android/server/power/stats/PowerStatsScheduler;

    new-instance v7, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    const/4 v11, 0x2

    invoke-direct {v7, v11, v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(ILjava/lang/Object;)V

    iget-object v11, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    iget-object v12, v8, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    new-instance v13, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;

    invoke-direct {v13, v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iget-object v14, v8, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-wide/from16 v21, v0

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v11

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    invoke-direct/range {v15 .. v27}, Lcom/android/server/power/stats/PowerStatsScheduler;-><init>(Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;Lcom/android/internal/os/BatteryStatsHistory;Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;JJLcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda113;Lcom/android/internal/os/MonotonicClock;Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda115;Landroid/os/Handler;)V

    iput-object v15, v8, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    iget-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    new-instance v0, Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v3, v8, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v4, v8, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    iget-object v7, v8, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct/range {v0 .. v7}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;-><init>(Landroid/content/Context;Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsStore;ILcom/android/internal/os/MonotonicClock;)V

    iput-object v0, v8, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    invoke-direct {v2, v0}, Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;-><init>(Lcom/android/server/power/stats/BatteryUsageStatsProvider;)V

    iput-object v2, v8, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    new-instance v2, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    iget-object v3, v8, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v1, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, v8, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "battery_usage_stats_config"

    invoke-direct {v2, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, v8, Lcom/android/server/am/BatteryStatsService;->mConfigFile:Landroid/util/AtomicFile;

    new-instance v1, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

    iget-object v2, v8, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-direct {v1, v10, v0, v2}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryUsageStatsProvider;Lcom/android/internal/os/CpuScalingPolicies;)V

    iput-object v1, v8, Lcom/android/server/am/BatteryStatsService;->mSemBatteryUsageStatsProvider:Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

    return-void
.end method

.method public static dumpHelp$1(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "Battery stats (batterystats) dump options:"

    const-string v1, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    const-string v2, "  [--daily] [--reset] [--reset-all] [--write] [--new-daily] [--read-daily]"

    const-string v3, "  [-h] [<package.name>]"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    const-string v1, "             last old completed stats when they had been reset."

    const-string v2, "  -c: write the current stats in checkin format."

    const-string v3, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --history: show only history data."

    const-string v1, "  --history-start <num>: show only history data starting at given time offset."

    const-string v2, "  --history-create-events <num>: create <num> of battery history events."

    const-string v3, "  --charged: only output data since last charged."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --daily: only output full daily data."

    const-string v1, "  --reset: reset the stats, clearing all current data."

    const-string v2, "  --reset-all: reset the stats, clearing all current and past data."

    const-string v3, "  --write: force write current collected stats to disk."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    const-string v1, "  --read-daily: read-load last written daily stats."

    const-string v2, "  --settings: dump the settings key/values related to batterystats"

    const-string v3, "  --cpu: dump cpu stats for debugging purpose"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  --wakeups: dump CPU wakeup history and attribution."

    const-string v1, "  --power-profile: dump the power profile constants"

    const-string v2, "  --usage: write battery usage stats. Optional arguments:"

    const-string v3, "     --proto: output as a binary protobuffer"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "     --model power-profile: use the power profile model even if measured energy is available"

    const-string v1, "  --sample: collect and dump a sample of stats for debugging purpose"

    const-string v2, "  --accumulated: continuously accumulated since setup or reset-all"

    const-string v3, "  <package.name>: optional name of package to filter output by."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "  -h: print this help text."

    const-string v1, "Battery stats (batterystats) commands:"

    const-string v2, "  enable|disable <option>"

    const-string v3, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    Options are:"

    const-string v1, "      full-history: include additional detailed events in battery history:"

    const-string v2, "          wake_lock_in, alarms and proc events"

    const-string v3, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 1

    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method public static overrideService(Lcom/android/internal/app/IBatteryStats;)V
    .locals 0

    sput-object p0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method


# virtual methods
.method public final awaitCompletion()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda86;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final computeBatteryScreenOffRealtimeMs()J
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryScreenOffRealtimeMs_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    move-result-wide v1

    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final computeBatteryTimeRemaining()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-ltz p0, :cond_0

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final computeChargeTimeRemaining()J
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFeatureComputeChargeTimeModel:Z

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    const-string/jumbo v6, "remaining_charging_time"

    invoke-virtual {p0, v6, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    cmp-long p0, v0, v4

    if-ltz p0, :cond_1

    mul-long/2addr v0, v2

    :cond_1
    return-wide v0

    :cond_2
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v6

    cmp-long p0, v6, v4

    if-ltz p0, :cond_3

    div-long/2addr v6, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit v0

    return-wide v6

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    add-int/lit8 v4, p2, 0x1

    array-length v5, v2

    const/4 v6, -0x1

    if-lt v4, v5, :cond_1

    if-eqz v3, :cond_0

    const-string v0, "--enable"

    goto :goto_0

    :cond_0
    const-string v0, "--disable"

    :goto_0
    const-string/jumbo v2, "Missing option argument for "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return v6

    :cond_1
    const-string/jumbo v5, "full-wake-history"

    aget-object v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "full-history"

    aget-object v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "no-auto-reset"

    aget-object v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iput-boolean v3, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNoAutoReset:Z

    monitor-exit v5

    return v4

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const-string/jumbo v5, "pretend-screen-off"

    aget-object v7, v2, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v5

    :try_start_1
    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mPretendScreenOff:Z

    if-eq v0, v3, :cond_4

    iput-boolean v3, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mPretendScreenOff:Z

    iget-object v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mPerDisplayBatteryStats:[Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl$DisplayBatteryStats;->screenState:I

    iget-object v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v13

    iget-object v0, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v15

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, -0x1

    invoke-virtual/range {v6 .. v16}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenStateLocked(IIIJIJJ)V

    :cond_4
    monitor-exit v5

    return v4

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown enable/disable option: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return v6

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    :try_start_2
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    monitor-exit v1

    return v4

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/BatteryStatsService;->dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    throw p1
.end method

.method public final dumpCpuStats(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string/jumbo v0, "dump"

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpEnergyConsumerStatsLocked(Ljava/io/PrintWriter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpPowerProfile(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v2, "Power Profile: \n"

    invoke-virtual {v1, v2, p1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0, v1}, Lcom/android/internal/os/PowerProfile;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpSettings(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    const-string p0, "Flags:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    com.android.server.power.optimization.streamlined_battery_stats: true"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dumpUnmonitored(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v0, p3

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v7, "BatteryStatsService"

    invoke-static {v6, v7, v4}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_16

    :cond_0
    iget-boolean v6, v1, Lcom/android/server/am/BatteryStatsService;->mSystemServicesReady:Z

    if-nez v6, :cond_1

    goto/16 :goto_16

    :cond_1
    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    if-eqz v0, :cond_2d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x10

    :goto_0
    array-length v2, v0

    if-ge v9, v2, :cond_2c

    aget-object v2, v0, v9

    const/16 v17, 0x1

    const-string v5, "--checkin"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    move/from16 v4, v16

    move/from16 v12, v17

    move v14, v12

    goto/16 :goto_8

    :cond_2
    const-string v5, "--history"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 v11, v11, 0x8

    move-object v5, v4

    :goto_1
    move/from16 v4, v16

    goto/16 :goto_8

    :cond_3
    const-string v5, "--history-start"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v3, 0x0

    if-eqz v5, :cond_5

    or-int/lit8 v11, v11, 0x8

    add-int/lit8 v9, v9, 0x1

    array-length v2, v0

    if-lt v9, v2, :cond_4

    const-string/jumbo v0, "Missing time argument for --history-since"

    move-object/from16 v5, p2

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return-void

    :cond_4
    move-object/from16 v5, p2

    aget-object v2, v0, v9

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-wide v6, v2

    move/from16 v4, v16

    move/from16 v15, v17

    goto/16 :goto_8

    :cond_5
    move-object/from16 v5, p2

    const-string v3, "--history-create-events"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v9, v9, 0x1

    array-length v2, v0

    if-lt v9, v2, :cond_6

    const-string/jumbo v0, "Missing events argument for --history-create-events"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return-void

    :cond_6
    aget-object v2, v0, v9

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v19

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    :try_start_0
    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v25

    iget-object v3, v10, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v27

    const-wide/16 v3, 0x0

    :goto_2
    cmp-long v21, v3, v19

    if-gez v21, :cond_7

    const-string/jumbo v23, "name1"

    const-string/jumbo v24, "historyName1"

    const/16 v22, 0x3e8

    move-object/from16 v21, v10

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockStartInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    const-string/jumbo v23, "name1"

    const-string/jumbo v24, "historyName1"

    const/16 v22, 0x3e8

    invoke-virtual/range {v21 .. v28}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteLongPartialWakeLockFinishInternal(ILjava/lang/String;Ljava/lang/String;JJ)V

    const-wide/16 v22, 0x1

    add-long v3, v3, v22

    move-object/from16 v10, v21

    goto :goto_2

    :cond_7
    const-string v3, "Battery history create events started."

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v2

    :goto_3
    move/from16 v4, v16

    move/from16 v10, v17

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    const-string v3, "-c"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    or-int/lit8 v11, v11, 0x10

    move/from16 v4, v16

    move/from16 v12, v17

    goto/16 :goto_8

    :cond_9
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move/from16 v4, v16

    move/from16 v13, v17

    goto/16 :goto_8

    :cond_a
    const-string v3, "--charged"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    or-int/lit8 v11, v11, 0x2

    goto/16 :goto_1

    :cond_b
    const-string v3, "--daily"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    or-int/lit8 v11, v11, 0x4

    goto/16 :goto_1

    :cond_c
    const-string v3, "--reset-all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_1
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked()V

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsStore;->reset()V

    const-string v2, "Battery stats and history reset."

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_d
    const-string v3, "--reset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_2
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->resetAllStatsAndHistoryLocked()V

    const-string v2, "Battery stats reset."

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :cond_e
    const-string v3, "--write"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string/jumbo v2, "dump"

    invoke-virtual {v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_3
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeSyncLocked()V

    const-string v2, "Battery stats written."

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_3

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :cond_f
    const-string v3, "--new-daily"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_4
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->recordDailyStatsLocked()V

    const-string/jumbo v2, "New daily stats written."

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_3

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :cond_10
    const-string v3, "--read-daily"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3

    :try_start_5
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->readDailyStatsLocked()V

    const-string v2, "Last daily stats read."

    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_3

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :cond_11
    const-string v3, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move/from16 v3, v17

    goto/16 :goto_a

    :cond_12
    const-string v3, "--disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_14
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {v5}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return-void

    :cond_15
    const-string v3, "--settings"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual {v1, v5}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    return-void

    :cond_16
    const-string v3, "--cpu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v5}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    return-void

    :cond_17
    const-string v3, "--measured-energy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1, v5}, Lcom/android/server/am/BatteryStatsService;->dumpMeasuredEnergyStats(Ljava/io/PrintWriter;)V

    return-void

    :cond_18
    const-string v3, "--power-profile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v1, v5}, Lcom/android/server/am/BatteryStatsService;->dumpPowerProfile(Ljava/io/PrintWriter;)V

    return-void

    :cond_19
    const-string v3, "--usage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    array-length v4, v0

    if-ge v9, v4, :cond_1c

    aget-object v4, v0, v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "--proto"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    const-string v6, "--accumulated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_5

    :cond_1a
    move/from16 v2, v17

    goto :goto_5

    :cond_1b
    move/from16 v3, v17

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_1c
    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v5, v3, v2}, Lcom/android/server/am/BatteryStatsService;->dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V

    return-void

    :cond_1d
    move-object/from16 v4, p1

    const-string v3, "--wakeups"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v5, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    return-void

    :cond_1e
    const-string v3, "--sample"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuPowerStatsCollector:Lcom/android/server/power/stats/CpuPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWakelockPowerStatsCollector:Lcom/android/server/power/stats/WakelockPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenPowerStatsCollector:Lcom/android/server/power/stats/ScreenPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerStatsCollector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBluetoothPowerStatsCollector:Lcom/android/server/power/stats/BluetoothPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCameraPowerStatsCollector:Lcom/android/server/power/stats/CameraPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mGnssPowerStatsCollector:Lcom/android/server/power/stats/GnssPowerStatsCollector;

    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/PowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCustomEnergyConsumerPowerStatsCollector:Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;

    invoke-virtual {v0, v5}, Lcom/android/server/power/stats/CustomEnergyConsumerPowerStatsCollector;->collectAndDump(Ljava/io/PrintWriter;)V

    return-void

    :cond_1f
    const-string v3, "--aggregated"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsScheduler:Lcom/android/server/power/stats/PowerStatsScheduler;

    iget-object v1, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsScheduler;->schedulePowerStatsAggregation()V

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v3, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iget-object v4, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->block()V

    new-instance v2, Landroid/util/IndentingPrintWriter;

    invoke-direct {v2, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v2}, Lcom/android/server/power/stats/PowerStatsScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/PowerStatsScheduler;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsScheduler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should not be executed on the bg handler thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    const-string v3, "--store"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v5, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsStore;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void

    :cond_22
    const-string v3, "--store-toc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, v5, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "Power stats store TOC"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move/from16 v3, v17

    invoke-virtual {v2, v1, v3}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;Z)V

    const/16 v17, 0x1

    goto :goto_6

    :cond_23
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :cond_24
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    or-int/lit8 v11, v11, 0x20

    move/from16 v4, v16

    :goto_7
    const/16 v17, 0x1

    goto :goto_8

    :cond_25
    const-string v3, "--debug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    array-length v2, v0

    if-lt v9, v2, :cond_26

    const-string/jumbo v0, "Missing time argument for --flags HEX"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return-void

    :cond_26
    aget-object v2, v0, v9

    move/from16 v4, v16

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v2

    or-int/2addr v11, v2

    goto :goto_7

    :cond_27
    move/from16 v4, v16

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_28

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v3, 0x2d

    if-ne v8, v3, :cond_28

    const-string/jumbo v0, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return-void

    :cond_28
    :try_start_6
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v3, v2, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    move v8, v2

    goto :goto_7

    :goto_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v4

    move-object v4, v5

    goto/16 :goto_0

    :catch_0
    const-string/jumbo v0, "Unknown package: "

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/am/BatteryStatsService;->dumpHelp$1(Ljava/io/PrintWriter;)V

    return-void

    :goto_9
    invoke-virtual {v1, v5, v9, v0, v4}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_29

    goto/16 :goto_16

    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Disabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v1

    invoke-static {v2, v0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_2a
    const/4 v3, 0x1

    :goto_a
    invoke-virtual {v1, v5, v9, v0, v3}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v1

    if-gez v1, :cond_2b

    goto/16 :goto_16

    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabled: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v0, v1

    invoke-static {v2, v0, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void

    :cond_2c
    move-wide/from16 v34, v6

    move v6, v8

    move-wide/from16 v7, v34

    :goto_b
    move-object v5, v4

    goto :goto_c

    :cond_2d
    move-wide v10, v6

    move v6, v8

    move-wide v7, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_b

    :goto_c
    if-eqz v10, :cond_2e

    goto/16 :goto_16

    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/BatteryStats;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    or-int/lit8 v11, v11, 0x40

    :cond_2f
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string/jumbo v0, "dump"

    invoke-virtual {v1, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-ltz v6, :cond_30

    and-int/lit8 v0, v11, 0xa

    if-nez v0, :cond_30

    or-int/lit8 v0, v11, 0x2

    and-int/lit8 v11, v0, -0x11

    :cond_30
    move/from16 v22, v11

    const/high16 v0, 0x420000

    if-eqz v13, :cond_34

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v21

    if-eqz v14, :cond_32

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v2

    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v0, :cond_31

    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v18, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v4, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v33, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v4

    move-object/from16 v27, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v23, v18

    invoke-direct/range {v23 .. v33}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$3;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object/from16 v20, p1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v25, v4

    move-wide/from16 v23, v7

    :try_start_a
    invoke-virtual/range {v18 .. v25}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-wide/from16 v7, v23

    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    monitor-exit v2

    return-void

    :catchall_6
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    move-wide/from16 v7, v23

    :goto_d
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading checkin file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    monitor-exit v2

    goto :goto_f

    :goto_e
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v0

    :cond_32
    :goto_f
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    move-object/from16 v20, p1

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v25, v4

    move-wide/from16 v23, v7

    invoke-virtual/range {v18 .. v25}, Landroid/os/BatteryStats;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v15, :cond_33

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    goto :goto_10

    :catchall_7
    move-exception v0

    goto :goto_11

    :cond_33
    :goto_10
    monitor-exit v2

    goto/16 :goto_16

    :goto_11
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    throw v0

    :cond_34
    if-eqz v12, :cond_38

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    if-eqz v14, :cond_36

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v10

    :try_start_e
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v0, :cond_35

    :try_start_f
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v4, v0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v23, Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    sget-object v4, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Lcom/android/server/power/stats/BatteryStatsImpl$MyHandler;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/server/am/BatteryStatsService$3;

    iget-object v11, v1, Lcom/android/server/am/BatteryStatsService;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v12, v1, Lcom/android/server/am/BatteryStatsService;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    new-instance v33, Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/power/stats/PowerStatsUidResolver;-><init>()V

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v24, v0

    move-object/from16 v25, v4

    move-object/from16 v27, v6

    move-object/from16 v30, v9

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    invoke-direct/range {v23 .. v33}, Lcom/android/server/power/stats/BatteryStatsImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;Lcom/android/internal/os/MonotonicClock;Ljava/io/File;Landroid/os/Handler;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$3;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Lcom/android/server/power/stats/PowerStatsUidResolver;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Landroid/os/ParcelFormatException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object v4, v5

    move/from16 v6, v22

    move-object v5, v2

    move-object v2, v0

    :try_start_10
    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Landroid/os/ParcelFormatException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    move/from16 v22, v6

    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Landroid/os/ParcelFormatException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    monitor-exit v10

    return-void

    :catchall_8
    move-exception v0

    goto :goto_14

    :catch_3
    move-exception v0

    goto :goto_12

    :catch_4
    move-exception v0

    move/from16 v22, v6

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v5, v2

    goto :goto_12

    :cond_35
    move-object v5, v2

    goto :goto_13

    :goto_12
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    monitor-exit v10

    goto :goto_15

    :goto_14
    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v0

    :cond_36
    move-object v5, v2

    :goto_15
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    move-object/from16 v4, p2

    move/from16 v6, v22

    invoke-virtual/range {v2 .. v9}, Landroid/os/BatteryStats;->dumpCheckin(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v15, :cond_37

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    :cond_37
    :goto_16
    return-void

    :cond_38
    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/server/am/BatteryStatsService;->mDumpHelper:Lcom/android/server/power/stats/BatteryStatsDumpHelperImpl;

    move-object/from16 v4, p2

    move/from16 v5, v22

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->dump(Landroid/content/Context;Ljava/io/PrintWriter;IIJLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V

    if-eqz v15, :cond_39

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->writeAsyncLocked()V

    :cond_39
    invoke-virtual {v4}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v4, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->dump(Landroid/util/IndentingPrintWriter;J)V

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_9
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final dumpUsageStats(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    const-string/jumbo v0, "dump"

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->accumulated()Landroid/os/BatteryUsageStatsQuery$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object p4

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, p0, p4}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/os/BatteryUsageStats;->dumpToProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "  "

    invoke-virtual {p0, p2, p1}, Landroid/os/BatteryUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz p0, :cond_3

    :try_start_3
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :goto_1
    if-eqz p0, :cond_2

    :try_start_4
    invoke-virtual {p0}, Landroid/os/BatteryUsageStats;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_5
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "BatteryStatsService"

    const-string p2, "Cannot close BatteryUsageStats"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method public final fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mRailsStatsCollectionEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/internal/os/RailStats;->setRailStatsAvailability(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V

    return-void
.end method

.method public final getAwakeTimeBattery()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getAwakeTimePlugged()J
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-object v4, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v4

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    mul-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->getUptime(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v2

    :try_start_0
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-wide v5, 0x7fffffffffffffffL

    :goto_0
    if-ltz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {v7}, Landroid/os/BatteryUsageStatsQuery;->getMaxStatsAge()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v3

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    const-string/jumbo v0, "get-stats"

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->prepareForDumpLocked()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBatteryStatsSession()Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;

    move-result-object p0

    sget-object v2, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryUsageStatsQuery;

    invoke-virtual {v0, p0, v5, v2, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsSession;Landroid/os/BatteryUsageStatsQuery;J)Landroid/os/BatteryUsageStats;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 2

    const-string/jumbo v0, "getDeviceBatteryInfo address: "

    const-string v1, "BatteryStatsService"

    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceBatteryInfos()[Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 3

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "semGetBatteryInfos()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    const-string v0, "DeviceBatteryInfoService"

    const-string/jumbo v1, "semGetBatteryInfos()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    new-array p0, p0, [Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v1}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    new-instance v2, Landroid/os/health/HealthStatsWriter;

    sget-object v3, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v2, v3}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_13

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-wide v4, v1, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowRealtimeMs:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-object v8, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v8, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    move-result-wide v8

    div-long/2addr v8, v6

    const/16 v10, 0x2711

    invoke-virtual {v2, v10, v8, v9}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v8, v1, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->mNowUptimeMs:J

    mul-long/2addr v8, v6

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v11

    div-long/2addr v11, v6

    const/16 v13, 0x2712

    invoke-virtual {v2, v13, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-object v11, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryScreenOffTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-virtual {v11, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->computeRealtime(J)J

    move-result-wide v11

    div-long/2addr v11, v6

    const/16 v13, 0x2713

    invoke-virtual {v2, v13, v11, v12}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v8

    div-long/2addr v8, v6

    const/16 v0, 0x2714

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v11, 0x2

    if-eqz v8, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v13, 0x2715

    invoke-virtual {v1, v2, v13, v12, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v13, 0x2716

    invoke-virtual {v1, v2, v13, v12, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    invoke-virtual {v8, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    const/16 v11, 0x2717

    invoke-virtual {v1, v2, v11, v12, v9}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v8

    const/16 v9, 0x2718

    invoke-virtual {v1, v2, v9, v12, v8}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Timer;

    const/16 v13, 0x2719

    invoke-virtual {v1, v2, v13, v12, v8}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Timer;

    const/16 v13, 0x271a

    invoke-virtual {v1, v2, v13, v12, v8}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v12, v10

    :goto_3
    if-ge v12, v8, :cond_5

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    const/16 v14, -0x2710

    if-ne v13, v14, :cond_3

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    const/16 v14, 0x271b

    invoke-virtual {v1, v2, v14, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_4

    :cond_3
    const/16 v14, -0x2711

    if-ne v13, v14, :cond_4

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    const/16 v14, 0x2751

    invoke-virtual {v1, v2, v14, v13}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    goto :goto_4

    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v14}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    const/16 v15, 0x271c

    invoke-virtual {v1, v2, v15, v13, v14}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimers(Landroid/os/health/HealthStatsWriter;ILjava/lang/String;Landroid/os/BatteryStats$Timer;)V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    move v12, v10

    :goto_5
    if-ge v12, v8, :cond_7

    new-instance v13, Landroid/os/health/HealthStatsWriter;

    sget-object v14, Landroid/os/health/PidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v13, v14}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v14, :cond_6

    move-wide/from16 p0, v6

    goto :goto_6

    :cond_6
    iget v15, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move-wide/from16 p0, v6

    int-to-long v6, v15

    const/16 v15, 0x4e21

    invoke-virtual {v13, v15, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v6, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    const/16 v15, 0x4e22

    invoke-virtual {v13, v15, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    iget-wide v6, v14, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    invoke-virtual {v13, v15, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :goto_6
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x271d

    invoke-virtual {v2, v7, v6, v13}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v6, p0

    goto :goto_5

    :cond_7
    move-wide/from16 p0, v6

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Landroid/os/health/HealthStatsWriter;

    sget-object v8, Landroid/os/health/ProcessHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v7, v8}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Proc;

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v12

    const/16 v14, 0x7531

    invoke-virtual {v7, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v12, 0x7532

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v13

    invoke-virtual {v7, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v12

    int-to-long v12, v12

    const/16 v14, 0x7533

    invoke-virtual {v7, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v12

    int-to-long v12, v12

    const/16 v14, 0x7534

    invoke-virtual {v7, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v12

    int-to-long v12, v12

    const/16 v14, 0x7535

    invoke-virtual {v7, v14, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v12, 0x7536

    invoke-virtual {v8, v10}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v13

    invoke-virtual {v7, v12, v13, v14}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x271e

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    new-instance v7, Landroid/os/health/HealthStatsWriter;

    sget-object v8, Landroid/os/health/PackageHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v7, v8}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    new-instance v14, Landroid/os/health/HealthStatsWriter;

    sget-object v15, Landroid/os/health/ServiceHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v14, v15}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    invoke-virtual {v15, v10}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v11

    int-to-long v9, v11

    const v11, 0xc351

    invoke-virtual {v14, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v10

    int-to-long v9, v10

    const v11, 0xc352

    invoke-virtual {v14, v11, v9, v10}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const v10, 0x9c41

    invoke-virtual {v7, v10, v9, v14}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto :goto_9

    :cond_9
    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Counter;

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v10

    int-to-long v10, v10

    const v12, 0x9c42

    invoke-virtual {v7, v12, v9, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurements(ILjava/lang/String;J)V

    goto :goto_a

    :cond_b
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v8, 0x271f

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/health/HealthStatsWriter;->addStats(ILjava/lang/String;Landroid/os/health/HealthStatsWriter;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v8, 0x2720

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v8, 0x2721

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    array-length v10, v8

    move-wide v12, v6

    move v11, v9

    :goto_b
    if-ge v11, v10, :cond_d

    aget-object v14, v8, v11

    invoke-virtual {v14, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_d
    const/16 v8, 0x2722

    invoke-virtual {v2, v8, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v0, 0x2723

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v8, 0x2724

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v8, 0x2725

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    array-length v10, v8

    move-wide v12, v6

    move v11, v9

    :goto_d
    if-ge v11, v10, :cond_f

    aget-object v14, v8, v11

    invoke-virtual {v14, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_f
    const/16 v8, 0x2726

    invoke-virtual {v2, v8, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v0, 0x2727

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_10
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v8, 0x2728

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v8, 0x2729

    invoke-virtual {v2, v8, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    array-length v10, v8

    move-wide v12, v6

    move v11, v9

    :goto_e
    if-ge v11, v10, :cond_11

    aget-object v14, v8, v11

    invoke-virtual {v14, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    add-long/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_11
    const/16 v8, 0x272a

    invoke-virtual {v2, v8, v12, v13}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    const/16 v0, 0x272b

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_12
    invoke-virtual {v3, v4, v5, v9}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v10

    div-long v10, v10, p0

    const/16 v0, 0x272c

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v3, v4, v5, v9}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v10

    div-long v10, v10, p0

    const/16 v0, 0x272d

    invoke-virtual {v2, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v0

    invoke-virtual {v3, v4, v5, v9}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v10

    div-long v10, v10, p0

    const/16 v8, 0x272e

    invoke-virtual {v2, v8, v0, v10, v11}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    invoke-virtual {v3, v4, v5, v9}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v4

    div-long v4, v4, p0

    const/16 v0, 0x272f

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2730

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2731

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2732

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2733

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2734

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2735

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2736

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v0, 0x2737

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    invoke-virtual {v1, v2, v0, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v5, 0x2738

    invoke-virtual {v1, v2, v5, v4}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v4, 0x2739

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v8

    invoke-virtual {v1, v2, v4, v8}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/16 v8, 0x273a

    invoke-virtual {v1, v2, v8, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/BatteryStats$Uid;->getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const/16 v8, 0x273b

    invoke-virtual {v1, v2, v8, v5}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/16 v5, 0x273c

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v8

    invoke-virtual {v1, v2, v5, v8}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->addTimer(Landroid/os/health/HealthStatsWriter;ILandroid/os/BatteryStats$Timer;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v1

    int-to-long v10, v1

    const/16 v1, 0x273d

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1, v9}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v5

    int-to-long v10, v5

    const/16 v1, 0x273e

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v9}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v1

    int-to-long v10, v1

    const/16 v1, 0x273f

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v1, 0x2740

    invoke-virtual {v3, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v1, 0x2741

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v1, 0x2742

    invoke-virtual {v3, v5, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v1, 0x2743

    invoke-virtual {v3, v4, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v1, 0x2744

    invoke-virtual {v3, v0, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    invoke-virtual {v2, v1, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/4 v1, 0x5

    invoke-virtual {v3, v1, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v10

    const/16 v5, 0x2745

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v5, 0x2746

    invoke-virtual {v3, v9, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v5, 0x2747

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v5, 0x2748

    const/4 v8, 0x2

    invoke-virtual {v3, v8, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v5, 0x2749

    invoke-virtual {v3, v4, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    invoke-virtual {v2, v5, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v4, 0x274a

    invoke-virtual {v3, v0, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v10

    invoke-virtual {v2, v4, v10, v11}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x274b

    invoke-virtual {v3, v1, v9}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    const/16 v1, 0x274d

    invoke-virtual {v2, v1, v0, v4, v5}, Landroid/os/health/HealthStatsWriter;->addTimer(IIJ)V

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    div-long v0, v0, p0

    const/16 v4, 0x274e

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v0

    div-long v0, v0, p0

    const/16 v3, 0x274f

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    const/16 v0, 0x2750

    invoke-virtual {v2, v0, v6, v7}, Landroid/os/health/HealthStatsWriter;->addMeasurement(IJ)V

    :cond_13
    new-instance v0, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v0, v2}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v0
.end method

.method public final getScreenOffDischargeMah()J
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getScreenOffDischargeMah_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mDischargeScreenOffCounter:Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    iget-wide v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->mCount:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSemBatteryUsageStats()Landroid/os/SemBatterySipper;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getSemBatteryUsageStats_enforcePermission()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mSemBatteryUsageStatsProvider:Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;

    iget-object v1, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v5, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v5}, Lcom/android/internal/os/Clock;->uptimeMillis()J

    move-result-wide v5

    mul-long v4, v5, v3

    iget-object v3, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v3}, Lcom/android/internal/os/CpuScalingPolicies;->getPolicies()[I

    move-result-object v3

    array-length v3, v3

    new-array v6, v3, [[I

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_0

    iget-object v8, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    invoke-virtual {v8, v7}, Lcom/android/internal/os/CpuScalingPolicies;->getFrequencies(I)[I

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/os/SemDevicePowerInfo;

    const-wide/16 v7, 0x0

    invoke-direct {v9, v7, v8, v6}, Landroid/os/SemDevicePowerInfo;-><init>(D[[I)V

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v14

    :try_start_0
    iget-object v6, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v15, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    new-instance v3, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    move-wide/from16 v16, v7

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v3

    invoke-virtual {v6, v15, v3}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_3

    :try_start_1
    invoke-static {v3}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateDeviceScopeComponentPower(Landroid/os/BatteryUsageStats;)D

    move-result-wide v7

    iget-boolean v6, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mIsInitialized:Z

    if-eqz v6, :cond_2

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mAllComponentPower:D

    sub-double v1, v7, v1

    cmpg-double v1, v1, v16

    if-gez v1, :cond_1

    const-string/jumbo v1, "SemBatteryUsageStatsProvider"

    const-string/jumbo v2, "Receive crashed battery data, request the stats once again."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->close()V

    iget-object v1, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    new-instance v6, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateDeviceScopeComponentPower(Landroid/os/BatteryUsageStats;)D

    move-result-wide v7

    :cond_1
    :goto_1
    move-object v1, v3

    goto :goto_3

    :goto_2
    move-object v6, v9

    move-object v7, v10

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-wide/from16 v18, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mIsInitialized:Z

    const-string/jumbo v1, "SemBatteryUsageStatsProvider"

    const-string/jumbo v2, "May received wrong BatteryUsageStats when get data immediately."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SemBatteryUsageStatsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Components power: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->close()V

    iget-object v1, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mBatteryUsageStatsProvider:Lcom/android/server/power/stats/BatteryUsageStatsProvider;

    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    new-instance v6, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerModels()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeScreenStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->includePowerStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/android/server/power/stats/BatteryUsageStatsProvider;->getBatteryUsageStats(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateDeviceScopeComponentPower(Landroid/os/BatteryUsageStats;)D

    move-result-wide v7

    const-string/jumbo v1, "SemBatteryUsageStatsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Re-updated components power: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    :try_start_2
    iput-wide v7, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mAllComponentPower:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v9

    move-object v7, v10

    move-wide/from16 v2, v18

    :try_start_3
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateBatteryUsage(Landroid/os/BatteryUsageStats;JJLandroid/os/SemDevicePowerInfo;Landroid/util/SparseArray;)V

    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2, v11}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateWakeupReasonInfoToList(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2, v12}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateKernelWakelockInfoToList(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/ArrayList;)V

    iget-object v2, v0, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v2, v13}, Lcom/android/server/power/stats/SemBatteryUsageStatsProvider;->updateScreenWakeInfoToList(Lcom/android/server/power/stats/BatteryStatsImpl;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v3, v1

    goto :goto_6

    :goto_4
    move-object v3, v1

    goto :goto_a

    :goto_5
    move-object v3, v1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v6, v9

    move-object v7, v10

    goto :goto_5

    :cond_3
    move-object v6, v9

    move-object v7, v10

    :goto_6
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_c

    :cond_4
    const-string/jumbo v0, "SemBatteryUsageStatsProvider"

    const-string/jumbo v1, "Stat was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_9

    :catch_3
    :try_start_5
    const-string/jumbo v0, "SemBatteryUsageStatsProvider"

    const-string v1, "Failed to close a stat"

    :goto_7
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v6, v9

    move-object v7, v10

    const/4 v3, 0x0

    :goto_8
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_5

    :try_start_7
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_9

    :cond_5
    const-string/jumbo v0, "SemBatteryUsageStatsProvider"

    const-string/jumbo v1, "Stat was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_9

    :catch_5
    :try_start_8
    const-string/jumbo v0, "SemBatteryUsageStatsProvider"

    const-string v1, "Failed to close a stat"

    goto :goto_7

    :goto_9
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    new-instance v8, Landroid/os/SemBatterySipper;

    move-object v9, v6

    move-object v10, v7

    invoke-direct/range {v8 .. v13}, Landroid/os/SemBatterySipper;-><init>(Landroid/os/SemDevicePowerInfo;Landroid/util/SparseArray;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    :goto_a
    if-eqz v3, :cond_6

    :try_start_9
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->close()V

    goto :goto_b

    :cond_6
    const-string/jumbo v1, "SemBatteryUsageStatsProvider"

    const-string/jumbo v2, "Stat was null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    :catch_6
    :try_start_a
    const-string/jumbo v1, "SemBatteryUsageStatsProvider"

    const-string v2, "Failed to close a stat"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    throw v0

    :goto_c
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method

.method public final getServiceType()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public final getWakeLockStats()Landroid/os/WakeLockStats;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats_enforcePermission()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCharging()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCharging:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final monitor()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mMonitorEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final noteBleDutyScanStarted(Landroid/os/WorkSource;ZI)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleDutyScanStarted_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;

    const/4 v10, 0x1

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBleDutyScanStopped(Landroid/os/WorkSource;ZI)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleDutyScanStopped_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;

    const/4 v10, 0x0

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda45;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZIJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBleScanReset()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x5

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    const/4 v9, 0x0

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    const/4 v9, 0x0

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;

    const/4 v9, 0x1

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ZJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity_enforcePermission()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/bluetooth/BluetoothActivityEnergyInfo;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_0
    const-string p0, "BatteryStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "invalid bluetooth data given: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p6

    invoke-virtual {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource_enforcePermission()V

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4, v0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v2, :cond_1

    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3, v2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v7, v3

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v4

    move/from16 v3, p2

    move-object/from16 v4, p3

    :try_start_1
    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v17

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_1
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final noteConnectivityChanged(ILjava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/16 v10, 0x8

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final varargs noteCpuWakingActivity(J[II)V
    .locals 7

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move v3, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/BatteryStatsService;IJ[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final noteCurrentTimeChanged()V
    .locals 10

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/BatteryStatsService;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    const/4 v11, 0x1

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteDualScreenBrightness(III)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDualScreenBrightness_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;

    move-object v10, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x9

    invoke-static {p0, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteDualScreenState(IIII)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDualScreenState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1d

    move/from16 v5, p2

    invoke-static {p0, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteEvent(ILjava/lang/String;I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent_enforcePermission()V

    if-nez p2, :cond_0

    const-string p0, "BatteryStatsService"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "noteEvent called with null name. code = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    const/4 v11, 0x2

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteFlashlightOff(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0xc

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/16 p1, 0x1a

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteFlashlightOn(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0x9

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/16 p1, 0x1a

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteFullWifiLockAcquired(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x5

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteFullWifiLockReleased(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0xe

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged_enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v5, v0

    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object p2, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    const/4 v10, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJI)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteGpsSignalQuality(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x2

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteInteractive(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;-><init>(Lcom/android/server/am/BatteryStatsService;ZJ)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteJobFinish(Ljava/lang/String;II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;

    move-object v3, p0

    move-object v5, p1

    move v4, p2

    move v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteJobStart(Ljava/lang/String;I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x6

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    const/4 v11, 0x5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource_enforcePermission()V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    const/4 v2, 0x1

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    const/4 v11, 0x3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource_enforcePermission()V

    if-eqz p3, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p3}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p3, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;

    const/4 v2, 0x0

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda43;-><init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteMobileRadioPowerState(IJI)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    const/4 v5, 0x1

    move-object v12, p0

    move v3, p1

    move-wide v6, p2

    move/from16 v4, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0xc

    const/4 v0, 0x0

    move/from16 v4, p4

    invoke-static {p0, v4, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity_enforcePermission()V

    if-nez p1, :cond_0

    const-string p0, "BatteryStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invalid modem data given: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/usage/NetworkStatsManager;

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/ModemActivityInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteNetworkStatsEnabled()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePackageInstalled(JLjava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;

    move-object v3, p0

    move-wide v5, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda38;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;JJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePackageUninstalled(Ljava/lang/String;)V
    .locals 10

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    const/4 v9, 0x3

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePhoneDataConnectionState(IZIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;-><init>(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePhoneOff()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x7

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePhoneOn()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x6

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/telephony/SignalStrength;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notePhoneState(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0xb

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteProcessAnr(ILjava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x2

    move-object v3, p0

    move v5, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteProcessCrash(ILjava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x1

    move-object v3, p0

    move v5, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1c

    const/4 p1, 0x2

    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteProcessFinish(ILjava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x0

    move-object v3, p0

    move v5, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1c

    const/4 p1, 0x0

    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteProcessStart(ILjava/lang/String;)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x7

    move-object v3, p0

    move v5, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1c

    const/4 p1, 0x1

    invoke-static {p0, v5, v4, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteResetAudio()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x17

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteResetCamera()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x19

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteResetFlashlight()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/16 v8, 0x8

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1a

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteResetGps()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetGps_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    const/16 v6, -0x2711

    invoke-virtual {v5, v6, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    const v1, 0x186a1

    const/4 v2, -0x1

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteResetVideo()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x18

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteScreenBrightness(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    const/4 v5, 0x1

    move-object v10, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x9

    invoke-static {p0, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteScreenState(III)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;

    move-object v12, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda73;-><init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x1d

    invoke-static {p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteServiceStartLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    const/4 v11, 0x2

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteServiceStartRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    const/4 v11, 0x1

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteServiceStopLaunch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    const/4 v11, 0x0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteServiceStopRunning(ILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;

    const/4 v11, 0x4

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;Ljava/lang/String;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStartAudio(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0x10

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/16 p1, 0x17

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStartCamera(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0x12

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    if-eq v4, p0, :cond_0

    const/16 p0, 0x3e9

    if-eq v4, p0, :cond_0

    const/16 p0, 0x139d

    if-eq v4, p0, :cond_0

    const-string p0, "BatteryStatsService"

    const-string/jumbo v0, "set setWirelessPowerSharingExternelEvent"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v3, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p1}, Landroid/os/BatteryManagerInternal;->setWirelessPowerSharingExternelEvent(II)V

    :cond_0
    const/16 p0, 0x19

    const/4 v0, 0x0

    invoke-static {p0, v4, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStartGps(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    const/4 v1, 0x1

    const/16 v4, -0x2711

    invoke-virtual {p0, v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    const p0, 0x186a1

    invoke-static {p0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStartSensor(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    const/4 v5, 0x0

    move-object v10, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/4 p1, 0x5

    const/4 p2, 0x0

    invoke-static {p1, v3, p2, v4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStartTxPowerSharing()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartTxPowerSharing_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStartVideo(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0xf

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/16 p1, 0x18

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;

    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v13}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStopAudio(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x1

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/16 p1, 0x17

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStopCamera(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0x8

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_WIRELESS_POWER_SHARING:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e8

    if-eq v4, p0, :cond_0

    const/16 p0, 0x3e9

    if-eq v4, p0, :cond_0

    const/16 p0, 0x139d

    if-eq v4, p0, :cond_0

    const-string p0, "BatteryStatsService"

    const-string/jumbo v0, "set setWirelessPowerSharingExternelEvent"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v3, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/BatteryManagerInternal;->setWirelessPowerSharingExternelEvent(II)V

    :cond_0
    const/16 p0, 0x19

    const/4 v0, 0x0

    invoke-static {p0, v4, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStopGps(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {v2}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(I)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    const/16 v1, -0x2711

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    const p0, 0x186a1

    invoke-static {p0, p1, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStopSensor(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    const/4 v5, 0x4

    move-object v10, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x5

    const/4 p2, 0x0

    invoke-static {p1, v3, p2, v4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStopTxPowerSharing()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopTxPowerSharing_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStopVideo(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x5

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/16 p1, 0x18

    const/4 v0, 0x0

    invoke-static {p1, v4, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;

    move-object v2, p0

    move v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteSyncFinish(Ljava/lang/String;I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x5

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-static {p1, v5, p2, v4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteSyncStart(Ljava/lang/String;I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/4 v10, 0x4

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-static {p1, v5, p2, v4, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteUpdateNetworkStats(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUpdateNetworkStats_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteUserActivity(II)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;

    const/4 v5, 0x2

    move-object v10, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda30;-><init>(IIIJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteVibratorOff(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x3

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteVibratorOn(IJ)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;

    move-object v3, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;-><init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWakeUp(Ljava/lang/String;I)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;

    const/16 v10, 0x9

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWakeupSensorEvent(JII)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0, p4}, Landroid/hardware/SensorManager;->getSensorByHandle(I)Landroid/hardware/Sensor;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unknown sensor handle "

    const-string p1, " received in noteWakeupSensorEvent"

    invoke-static {p4, p0, p1, v1}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid uid "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for sensor event with sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p4, 0x4

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(J[II)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling uid "

    const-string p2, " is not system uid"

    invoke-static {v0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;

    const/4 v9, 0x1

    move-object v2, p0

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda71;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;IJJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity_enforcePermission()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v4, p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/usage/NetworkStatsManager;

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda47;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/connectivity/WifiActivityEnergyInfo;JJLandroid/app/usage/NetworkStatsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :goto_0
    const-string p0, "BatteryStatsService"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "invalid wifi data given: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final noteWifiMulticastDisabled(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x4

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiMulticastEnabled(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0xa

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiOff()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x71

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteWifiOn()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;

    const/4 v8, 0x4

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BatteryStatsService;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x71

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteWifiRadioPowerState(IJI)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    const/4 v5, 0x0

    move-object v12, p0

    move v3, p1

    move-wide v6, p2

    move/from16 v4, p4

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0xd

    const/4 v0, 0x0

    move/from16 v4, p4

    invoke-static {p0, v4, v0, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteWifiRssiChanged(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/4 v9, 0x7

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x6

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x72

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged_enforcePermission()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :cond_1
    move-object v5, v0

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;

    const/4 v10, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda58;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x72

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteWifiScanStarted(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0x11

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x3

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiScanStopped(I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    const/16 v9, 0xd

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/BatteryStatsService;IJJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x4

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiState(ILjava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped_enforcePermission()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    iget-object v9, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;JJI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p0, 0x72

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteWifiSupplicantStateChanged(IZ)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;

    move-object v8, p0

    move v3, p1

    move v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;-><init>(IJJLcom/android/server/am/BatteryStatsService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 10

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    const/4 v9, 0x4

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final populatePowerEntityMaps()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsInternal:Landroid/power/PowerStatsInternal;

    check-cast v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;

    iget-object v0, v0, Lcom/android/server/powerstats/PowerStatsService$LocalService;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v0}, Lcom/android/server/powerstats/PowerStatsService;->getPowerStatsHal()Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    :goto_1
    iget-object v6, v3, Landroid/hardware/power/stats/PowerEntity;->states:[Landroid/hardware/power/stats/State;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-object v6, v6, v5

    iget v7, v6, Landroid/hardware/power/stats/State;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Landroid/hardware/power/stats/State;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mEntityNames:Ljava/util/Map;

    iget v6, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v3, Landroid/hardware/power/stats/PowerEntity;->name:Ljava/lang/String;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService;->mStateNames:Ljava/util/Map;

    iget v3, v3, Landroid/hardware/power/stats/PowerEntity;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public final registerBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->registerBatteryStatsCallback_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/app/IBatteryStatsCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .locals 5

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "registerDeviceBatteryInfoChanged package: "

    invoke-static {v1, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string/jumbo v0, "registerDeviceBatteryInfoChanged() : "

    const-string/jumbo v1, "mRegisteredPackage size :"

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackageLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "DeviceBatteryInfoService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "DeviceBatteryInfoService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/battery/WatchBatteryManager;->notifyPackageRegistered(Z)V

    :cond_2
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const-string p0, "DeviceBatteryInfoService"

    const-string/jumbo p1, "registerDeviceBatteryInfoChanged : packageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final removeIsolatedUid(II)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    const-string v0, "Attempt to remove an isolated UID "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, p2, :cond_0

    const-string/jumbo v3, "PowerStatsUidResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with the parent UID "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". The registered parent UID is "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsUidResolver;->mListeners:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;

    invoke-interface {v1, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;->onBeforeIsolatedUidRemoved(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->releaseIsolatedUid(I)V

    :goto_1
    const/16 p0, 0x2b

    const/4 p2, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final removeUid(I)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;

    const/4 v7, 0x0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/BatteryStatsService;IJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resetBattery(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->resetBattery(Z)V

    return-void
.end method

.method public final scheduleWriteToDisk()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/am/BatteryStatsService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setBatteryLevel(IZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setBatteryLevel(IZ)V

    return-void
.end method

.method public final setBatteryState(IIIIIIIIJIIIIZ)V
    .locals 20

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState_enforcePermission()V

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move/from16 v3, p1

    move/from16 v2, p3

    :try_start_1
    invoke-direct/range {v0 .. v17}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v18

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    :goto_0
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final setChargerAcOnline(ZZ)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryManagerInternal;->setChargerAcOnline(ZZ)V

    return-void
.end method

.method public final setChargingStateUpdateDelayMillis(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "battery_charging_state_update_delay"

    int-to-long v3, p1

    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDeviceBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .locals 4

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "setDeviceBatteryInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DeviceBatteryInfoService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.SEM_BATTERY_INFO_PROVIDER"

    const-string/jumbo v3, "Permission Require"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string/jumbo v2, "addBatteryInfo / callingPid :"

    invoke-static {v1, v2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string/jumbo p0, "address is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final setTemperatureNCurrent(IIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->setTemperatureNCurrent_enforcePermission()V

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda103;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIJJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldCollectExternalStats()Z
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    monitor-enter v2

    :try_start_0
    iget-wide v3, v2, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v3

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final suspendBatteryInput()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->suspendBatteryInput()V

    return-void
.end method

.method public final syncStats(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->collectPowerStatsSamples()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1, p1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    return-void
.end method

.method public final takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "get-health-stats-for-uids"

    invoke-virtual {p0, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->awaitCompletion()V

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "get-health-stats-for-uids"

    invoke-virtual {p0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    array-length v4, p1

    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    :goto_3
    if-ge v2, v4, :cond_3

    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final takeUidSnapshotsAsync([ILandroid/os/ResultReceiver;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    if-eq v3, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string/jumbo p1, "exception"

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p2, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string/jumbo v1, "get-health-stats-for-uids"

    const/16 v2, 0x7f

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda85;-><init>(Lcom/android/server/am/BatteryStatsService;[ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final unRegisterDeviceBatteryInfoChanged(Ljava/lang/String;)V
    .locals 3

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "unRegisterDeviceBatteryInfoChanged package: "

    invoke-static {v1, p1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    const-string/jumbo v0, "mRegisteredPackage size :"

    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    if-eqz p1, :cond_2

    const-string v1, "DeviceBatteryInfoService"

    const-string/jumbo v2, "unRegisterDeviceBatteryInfoChanged() : "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackageLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "DeviceBatteryInfoService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/WatchBatteryManager;->notifyPackageRegistered(Z)V

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string p0, "DeviceBatteryInfoService"

    const-string/jumbo p1, "unRegisterDeviceBatteryInfoChanged : packageName is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final unplugBattery(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->unplugBattery(Z)V

    return-void
.end method

.method public final unregisterBatteryStatsCallback(Lcom/android/internal/app/IBatteryStatsCallback;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->unregisterBatteryStatsCallback_enforcePermission()V

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/app/IBatteryStatsCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unsetDeviceBatteryInfo(Ljava/lang/String;)V
    .locals 4

    const-string v0, "BatteryStatsService"

    const-string/jumbo v1, "removeDeviceBatteryInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mDeviceBatteryInfoServiceInternal:Lcom/samsung/android/server/battery/DeviceBatteryInfoService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "unsetDeviceBatteryInfo()"

    const-string v1, "DeviceBatteryInfoService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.permission.SEM_BATTERY_INFO_PROVIDER"

    const-string/jumbo v3, "Permission Require"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "device is not exist"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const-string/jumbo p0, "address is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final updateSemModemActivityInfo(Landroid/os/SemModemActivityInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->updateSemModemActivityInfo_enforcePermission()V

    if-nez p1, :cond_0

    const-string p0, "BatteryStatsService"

    const-string p1, "Invalid SemModemActivityInfo, Null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda91;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateSpeakerOutEnergyInfo(Landroid/os/SpeakerOutEnergyInfo;)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->updateSpeakerOutEnergyInfo_enforcePermission()V

    if-nez p1, :cond_0

    const-string p0, "BatteryStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "invalid SpeakerOutEnergyInfo given: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/Object;JJI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
