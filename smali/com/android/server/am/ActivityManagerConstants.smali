.class public final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

.field public static final ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

.field public static BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

.field public static BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

.field public static BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

.field public static BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

.field public static final DEFAULT_ENABLE_NEW_OOM_ADJ:Z

.field public static final DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

.field public static final DEFAULT_FREEZER_CUTOFF_ADJ:I

.field public static DEFAULT_MAX_CACHED_PROCESSES:I

.field public static final DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

.field public static final DEFAULT_SERVICE_TIMEOUT:J

.field public static EMPTY_RATE:F

.field public static final ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

.field public static final FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

.field public static final FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

.field public static LOW_SWAP_THRESHOLD_PERCENT:F

.field public static MAX_PREVIOUS_TIME:J

.field public static MIN_ASSOC_LOG_DURATION:J

.field public static MIN_CRASH_INTERVAL:I

.field public static PROACTIVE_KILLS_ENABLED:Z

.field public static PROCESS_CRASH_COUNT_LIMIT:I

.field public static PROCESS_CRASH_COUNT_RESET_INTERVAL:J


# instance fields
.field public APP_PROFILER_PSS_PROFILING_DISABLED:Z

.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field public CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

.field public CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

.field public final ENABLE_BATCHING_OOM_ADJ:Z

.field public final ENABLE_NEW_OOMADJ:Z

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FGS_BOOT_COMPLETED_ALLOWLIST:I

.field public FLAG_PROCESS_START_ASYNC:Z

.field public FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

.field public FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

.field public FREEZER_CUTOFF_ADJ:I

.field public FULL_PSS_LOWERED_INTERVAL:J

.field public FULL_PSS_MIN_INTERVAL:J

.field public GC_MIN_INTERVAL:J

.field public GC_TIMEOUT:J

.field public final IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

.field public final IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

.field public final KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

.field public MAX_CACHED_PROCESSES:I

.field public MAX_PHANTOM_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field public MEMORY_INFO_THROTTLE_TIME:J

.field public OOMADJ_UPDATE_QUICK:Z

.field public PENDINGINTENT_WARNING_THRESHOLD:I

.field public POWER_CHECK_INTERVAL:J

.field public POWER_CHECK_MAX_CPU_1:I

.field public POWER_CHECK_MAX_CPU_2:I

.field public POWER_CHECK_MAX_CPU_3:I

.field public POWER_CHECK_MAX_CPU_4:I

.field public PSS_TO_RSS_THRESHOLD_MODIFIER:F

.field public final SERVICE_BACKGROUND_TIMEOUT:J

.field public SERVICE_BG_ACTIVITY_START_TIMEOUT:J

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field public final SERVICE_TIMEOUT:J

.field public SERVICE_USAGE_INTERACTION_TIME_POST_S:J

.field public SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

.field public TIERED_CACHED_ADJ_DECAY_TIME:J

.field public TIERED_CACHED_ADJ_UI_TIER_SIZE:I

.field public TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

.field public volatile TOP_TO_FGS_GRACE_DURATION:J

.field public USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

.field public USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

.field public USE_TIERED_CACHED_ADJ:Z

.field public volatile mBootTimeTempAllowlistDuration:J

.field public volatile mComponentAliasOverrides:Ljava/lang/String;

.field public final mCustomizedMaxCachedProcesses:I

.field public volatile mDataSyncFgsTimeoutDuration:J

.field public final mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

.field public final mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

.field public final mDefaultBinderHeavyHitterAutoSamplerThreshold:F

.field public final mDefaultBinderHeavyHitterWatcherBatchSize:I

.field public final mDefaultBinderHeavyHitterWatcherEnabled:Z

.field public final mDefaultBinderHeavyHitterWatcherThreshold:F

.field public final mDefaultDisableAppProfilerPssProfiling:Z

.field public final mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

.field public final mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

.field public final mDefaultPssToRssThresholdModifier:F

.field public final mDefaultTieredCachedAdjUiTierSize:I

.field public volatile mDeferBootCompletedBroadcast:I

.field public volatile mEnableComponentAlias:Z

.field public mEnableExtraServiceRestartDelayOnMemPressure:Z

.field public volatile mEnableProcStateStacktrace:Z

.field public volatile mEnableWaitForFinishAttachApplication:Z

.field public mExtraServiceRestartDelayOnMemPressure:[J

.field public volatile mFgToBgFgsGraceDuration:J

.field public volatile mFgsAllowOptOut:Z

.field public volatile mFgsAtomSampleRate:F

.field public volatile mFgsCrashExtraWaitDuration:J

.field public volatile mFgsNotificationDeferralExclusionTime:J

.field public volatile mFgsNotificationDeferralExclusionTimeForShort:J

.field public volatile mFgsNotificationDeferralInterval:J

.field public volatile mFgsNotificationDeferralIntervalForShort:J

.field public volatile mFgsStartAllowedLogSampleRate:F

.field public volatile mFgsStartDeniedLogSampleRate:F

.field public volatile mFgsStartForegroundTimeoutMs:J

.field public volatile mFgsStartRestrictionCheckCallerTargetSdk:Z

.field public volatile mFgsStartRestrictionNotificationEnabled:Z

.field public volatile mFlagActivityStartsLoggingEnabled:Z

.field public volatile mFlagBackgroundActivityStartsEnabled:Z

.field public volatile mFlagBackgroundFgsStartRestrictionEnabled:Z

.field public volatile mFlagFgsNotificationDeferralApiGated:Z

.field public volatile mFlagFgsNotificationDeferralEnabled:Z

.field public volatile mFlagFgsStartRestrictionEnabled:Z

.field public volatile mFlagSystemExemptPowerRestrictionsEnabled:Z

.field public volatile mForceEnablePssProfiling:Z

.field public volatile mKillBgRestrictedAndCachedIdle:Z

.field public volatile mKillBgRestrictedAndCachedIdleSettleTimeMs:J

.field public volatile mMaxEmptyTimeMillis:J

.field public volatile mMaxServiceConnectionsPerProcess:I

.field public volatile mMediaProcessingFgsTimeoutDuration:J

.field public volatile mNetworkAccessTimeoutMs:J

.field public volatile mNoKillCachedProcessesPostBootCompletedDurationMillis:J

.field public volatile mNoKillCachedProcessesUntilBootCompleted:Z

.field public final mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

.field public final mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

.field public mOverrideMaxCachedProcesses:I

.field public final mParser:Landroid/util/KeyValueListParser;

.field public volatile mPrioritizeAlarmBroadcasts:Z

.field public volatile mProcStateDebugSetProcStateDelay:I

.field public volatile mProcStateDebugSetUidStateDelay:I

.field public volatile mProcStateDebugUids:Landroid/util/SparseBooleanArray;

.field public volatile mProcessKillTimeoutMs:J

.field public volatile mPushMessagingOverQuotaBehavior:I

.field public mResolver:Landroid/content/ContentResolver;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public volatile mServiceBindAlmostPerceptibleTimeoutMs:J

.field public volatile mServiceStartForegroundAnrDelayMs:I

.field public volatile mServiceStartForegroundTimeoutMs:I

.field public volatile mShortFgsAnrExtraWaitDuration:J

.field public volatile mShortFgsProcStateExtraWaitDuration:J

.field public volatile mShortFgsTimeoutDuration:J

.field public final mSystemServerAutomaticHeapDumpEnabled:Z

.field public final mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

.field public final mSystemServerAutomaticHeapDumpPssThresholdBytes:J

.field public volatile mVisibleToInvisibleUijScheduleGraceDurationMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.slmk.fha_cached_max"

    const-string v1, "1024"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_ENABLE_NEW_OOM_ADJ:Z

    const/16 v0, 0x352

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_FREEZER_CUTOFF_ADJ:I

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x7530

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    const-string/jumbo v0, "ro.slmk.fha_empty_rate"

    const-string v1, "0.5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    const v0, 0x1d4c0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    const-wide/32 v0, 0x2932e00

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    const/16 v0, 0xc

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    const-string/jumbo v0, "activity_manager_constants"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "activity_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "foreground_service_starts_logging_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    const-string/jumbo v0, "enable_automatic_system_server_heap_dumps"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "force_enable_pss_profiling"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x2710
        0x4e20
        0x7530
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$UiHandler;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableProcStateStacktrace:Z

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    sget v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    const-wide/32 v4, 0xea60

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    const-wide/16 v6, 0x7d0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    const-wide/16 v6, 0xbb8

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    const-wide/16 v6, 0x3e8

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    const-wide/16 v8, 0x1388

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    const v2, 0x40000718    # 2.000433f

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    const-wide/16 v10, 0x4e20

    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    const-wide/32 v12, 0x124f80

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    const-wide/32 v12, 0x493e0

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    const/16 v14, 0x19

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    const/16 v14, 0xa

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    const/4 v14, 0x2

    iput v14, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    move/from16 p3, v14

    const-wide/32 v14, 0x1b7740

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    const-wide/32 v8, 0x6ddd00

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    const-wide/32 v8, 0x927c0

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    const/4 v8, 0x4

    iput v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    const-wide/16 v8, 0x2710

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    sget-wide v6, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_TIMEOUT:J

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_TIMEOUT:J

    sget-wide v6, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_SERVICE_BACKGROUND_TIMEOUT:J

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BACKGROUND_TIMEOUT:J

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    const-wide/16 v6, 0x3a98

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    const-wide/16 v14, 0x10

    iput-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    const-wide/32 v12, 0x1d4c0

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    iput-wide v12, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    const-wide/16 v10, 0x1388

    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    iput-wide v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mVisibleToInvisibleUijScheduleGraceDurationMs:J

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    const/high16 v11, 0x3e800000    # 0.25f

    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    sget-object v10, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_EXTRA_SERVICE_RESTART_DELAY_ON_MEM_PRESSURE:[J

    iput-object v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mExtraServiceRestartDelayOnMemPressure:[J

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableExtraServiceRestartDelayOnMemPressure:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    const/4 v10, 0x6

    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    const/16 v10, 0x7530

    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    const/16 v10, 0x2710

    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    const-string v6, ""

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    const/16 v6, 0xbb8

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    new-instance v6, Landroid/util/KeyValueListParser;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v6, -0x1

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    iget v6, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    iget v6, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v6}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x3

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    iput v3, v0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    const-wide v6, 0xd693a400L

    iput-wide v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iput-object v6, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    const/16 v10, 0x7d0

    iput v10, v0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    iput-object v10, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    const/16 v11, 0x20

    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-wide/16 v11, 0xc8

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    const-wide/32 v11, 0x2bf20

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    const-wide/16 v11, 0x1388

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    const-wide/32 v11, 0x1499700

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    iput-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    iput-wide v4, v0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    sget-boolean v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_ENABLE_NEW_OOM_ADJ:Z

    iput-boolean v4, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    iput-boolean v3, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    const-wide/16 v8, 0x3e8

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    sget v5, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_FREEZER_CUTOFF_ADJ:I

    iput v5, v0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v5, v0, v3}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;I)V

    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedListener:Lcom/android/server/am/ActivityManagerConstants$1;

    new-instance v5, Lcom/android/server/am/ActivityManagerConstants$1;

    invoke-direct {v5, v0, v2}, Lcom/android/server/am/ActivityManagerConstants$1;-><init>(Lcom/android/server/am/ActivityManagerConstants;I)V

    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mOnDeviceConfigChangedForComponentAliasListener:Lcom/android/server/am/ActivityManagerConstants$1;

    iput-object v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x111012e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10e0075

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v8, v5

    const-wide/32 v11, 0x19000

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x10700cb

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptPackages:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10700cc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultImperceptibleKillExemptProcStates:Ljava/util/List;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110133

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e007b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherBatchSize:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10500f5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    iput v7, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterWatcherThreshold:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1110132

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10e007a

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    iput v9, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerBatchSize:I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10500f4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    iput v11, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultBinderHeavyHitterAutoSamplerThreshold:F

    sput-boolean v5, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    sput v6, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    sput v7, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    sput-boolean v8, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    sput v9, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    sput v11, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v6, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v10, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v1, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    iget v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v5, v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v2, v5}, Ljava/lang/Integer;->min(II)I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    sget v1, Lcom/android/server/am/BroadcastConstants;->MAX_HISTORY_ABORTED_BROADCAST:I

    const-string/jumbo v1, "persist.sys.activity_manager_native_boot."

    const-string/jumbo v2, "enable_new_oom_adj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "persist.device_config.activity_manager_native_boot."

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    const-string/jumbo v2, "enable_batching_oom_adj"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultDisableAppProfilerPssProfiling:Z

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultPssToRssThresholdModifier:F

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->mDefaultTieredCachedAdjUiTierSize:I

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 4

    int-to-float p0, p0

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    mul-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    add-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_cached_processes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    const-string v1, "  "

    const-string/jumbo v2, "background_settle_time"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "fgservice_min_shown_time"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "fgservice_min_report_time"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "fgservice_screen_on_before_time"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "fgservice_screen_on_after_time"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "fgs_boot_completed_allowlist"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    const-string v1, "  "

    const-string/jumbo v2, "content_provider_retain_time"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "gc_timeout"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    const-string v2, "  "

    const-string/jumbo v3, "gc_min_interval"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    const-string v2, "  "

    const-string/jumbo v3, "force_bg_check_on_restricted"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FORCE_BACKGROUND_CHECK_ON_RESTRICTED_APPS:Z

    const-string v1, "  "

    const-string/jumbo v2, "full_pss_min_interval"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    const-string v2, "  "

    const-string/jumbo v3, "full_pss_lowered_interval"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    const-string v2, "  "

    const-string/jumbo v3, "power_check_interval"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    const-string v2, "  "

    const-string/jumbo v3, "power_check_max_cpu_1"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    const-string v1, "  "

    const-string/jumbo v2, "power_check_max_cpu_2"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    const-string v1, "  "

    const-string/jumbo v2, "power_check_max_cpu_3"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    const-string v1, "  "

    const-string/jumbo v2, "power_check_max_cpu_4"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    const-string v1, "  "

    const-string/jumbo v2, "service_usage_interaction_time"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    const-string v2, "  "

    const-string/jumbo v3, "service_usage_interaction_time_post_s"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    const-string v2, "  "

    const-string/jumbo v3, "usage_stats_interaction_interval"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    const-string v2, "  "

    const-string/jumbo v3, "usage_stats_interaction_interval_post_s"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    const-string v2, "  "

    const-string/jumbo v3, "service_restart_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    const-string v2, "  "

    const-string/jumbo v3, "service_reset_run_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    const-string v2, "  "

    const-string/jumbo v3, "service_restart_duration_factor"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    const-string v1, "  "

    const-string/jumbo v2, "service_min_restart_time_between"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    const-string v2, "  "

    const-string/jumbo v3, "service_max_inactivity"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    const-string v2, "  "

    const-string/jumbo v3, "service_bg_start_timeout"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    const-string v2, "  "

    const-string/jumbo v3, "service_bg_activity_start_timeout"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    const-string v2, "  "

    const-string/jumbo v3, "service_crash_restart_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    const-string v2, "  "

    const-string/jumbo v3, "service_crash_max_retry"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    const-string v2, "  "

    const-string/jumbo v3, "process_start_async"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    const-string v1, "  "

    const-string/jumbo v2, "memory_info_throttle_time"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "top_to_fgs_grace_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    const-string v2, "  "

    const-string/jumbo v3, "top_to_almost_perceptible_grace_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    const-string v2, "  "

    const-string/jumbo v3, "min_crash_interval"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    const-string v1, "  "

    const-string/jumbo v2, "process_crash_count_reset_interval"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    const-string v2, "  "

    const-string/jumbo v3, "process_crash_count_limit"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    const-string v1, "  "

    const-string/jumbo v2, "imperceptible_kill_exempt_proc_states"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PROC_STATES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "imperceptible_kill_exempt_packages"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->IMPERCEPTIBLE_KILL_EXEMPT_PACKAGES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_assoc_log_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    const-string v2, "  "

    const-string/jumbo v3, "binder_heavy_hitter_watcher_enabled"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    const-string v1, "  "

    const-string/jumbo v2, "binder_heavy_hitter_watcher_batchsize"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    const-string v1, "  "

    const-string/jumbo v2, "binder_heavy_hitter_watcher_threshold"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "binder_heavy_hitter_auto_sampler_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    const-string v1, "  "

    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_batchsize"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    const-string v1, "  "

    const-string/jumbo v2, "binder_heavy_hitter_auto_sampler_threshold"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_phantom_processes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    const-string v1, "  "

    const-string/jumbo v2, "boot_time_temp_allowlist_duration"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mBootTimeTempAllowlistDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "fg_to_bg_fgs_grace_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgToBgFgsGraceDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "fgs_start_foreground_timeout"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartForegroundTimeoutMs:J

    const-string v2, "  "

    const-string/jumbo v3, "default_background_activity_starts_enabled"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    const-string v1, "  "

    const-string/jumbo v2, "default_background_fgs_starts_restriction_enabled"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundFgsStartRestrictionEnabled:Z

    const-string v1, "  "

    const-string/jumbo v2, "default_fgs_starts_restriction_enabled"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsStartRestrictionEnabled:Z

    const-string v1, "  "

    const-string/jumbo v2, "default_fgs_starts_restriction_notification_enabled"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionNotificationEnabled:Z

    const-string v1, "  "

    const-string/jumbo v2, "default_fgs_starts_restriction_check_caller_target_sdk"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartRestrictionCheckCallerTargetSdk:Z

    const-string v1, "  "

    const-string/jumbo v2, "fgs_atom_sample_rate"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAtomSampleRate:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "fgs_start_allowed_log_sample_rate"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartAllowedLogSampleRate:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "fgs_start_denied_log_sample_rate"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsStartDeniedLogSampleRate:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "push_messaging_over_quota_behavior"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPushMessagingOverQuotaBehavior:I

    const-string v1, "  "

    const-string/jumbo v2, "fgs_allow_opt_out"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsAllowOptOut:Z

    const-string v1, "  "

    const-string/jumbo v2, "enable_experimental_component_alias"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableComponentAlias:Z

    const-string v1, "  "

    const-string/jumbo v2, "component_alias_overrides"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mComponentAliasOverrides:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "defer_boot_completed_broadcast"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDeferBootCompletedBroadcast:I

    const-string v1, "  "

    const-string/jumbo v2, "prioritize_alarm_broadcasts"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mPrioritizeAlarmBroadcasts:Z

    const-string v1, "  "

    const-string/jumbo v2, "no_kill_cached_processes_until_boot_completed"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    const-string v1, "  "

    const-string/jumbo v2, "no_kill_cached_processes_post_boot_completed_duration_millis"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    const-string v2, "  "

    const-string/jumbo v3, "max_empty_time_millis"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    const-string v2, "  "

    const-string/jumbo v3, "service_start_foreground_timeout_ms"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundTimeoutMs:I

    const-string v1, "  "

    const-string/jumbo v2, "service_start_foreground_anr_delay_ms"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceStartForegroundAnrDelayMs:I

    const-string v1, "  "

    const-string/jumbo v2, "service_bind_almost_perceptible_timeout_ms"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    const-string v2, "  "

    const-string/jumbo v3, "network_access_timeout_ms"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-string v2, "  "

    const-string/jumbo v3, "max_service_connections_per_process"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMaxServiceConnectionsPerProcess:I

    const-string v1, "  "

    const-string/jumbo v2, "proactive_kills_enabled"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->PROACTIVE_KILLS_ENABLED:Z

    const-string v1, "  "

    const-string/jumbo v2, "low_swap_threshold_percent"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->LOW_SWAP_THRESHOLD_PERCENT:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "deferred_fgs_notifications_enabled"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralEnabled:Z

    const-string v1, "  "

    const-string/jumbo v2, "deferred_fgs_notifications_api_gated"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagFgsNotificationDeferralApiGated:Z

    const-string v1, "  "

    const-string/jumbo v2, "deferred_fgs_notification_interval"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralInterval:J

    const-string v2, "  "

    const-string/jumbo v3, "deferred_fgs_notification_interval_for_short"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralIntervalForShort:J

    const-string v2, "  "

    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTime:J

    const-string v2, "  "

    const-string/jumbo v3, "deferred_fgs_notification_exclusion_time_for_short"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsNotificationDeferralExclusionTimeForShort:J

    const-string v2, "  "

    const-string/jumbo v3, "system_exempt_power_restrictions_enabled"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagSystemExemptPowerRestrictionsEnabled:Z

    const-string v1, "  "

    const-string/jumbo v2, "short_fgs_timeout_duration"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsTimeoutDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "short_fgs_proc_state_extra_wait_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsProcStateExtraWaitDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "short_fgs_anr_extra_wait_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mShortFgsAnrExtraWaitDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "media_processing_fgs_timeout_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mMediaProcessingFgsTimeoutDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "data_sync_fgs_timeout_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mDataSyncFgsTimeoutDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "fgs_crash_extra_wait_duration"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFgsCrashExtraWaitDuration:J

    const-string v2, "  "

    const-string/jumbo v3, "use_tiered_cached_adj"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USE_TIERED_CACHED_ADJ:Z

    const-string v1, "  "

    const-string/jumbo v2, "tiered_cached_adj_decay_time"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_DECAY_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "tiered_cached_adj_ui_tier_size"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->TIERED_CACHED_ADJ_UI_TIER_SIZE:I

    const-string v1, "  "

    const-string/jumbo v2, "enable_new_oom_adj"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_NEW_OOMADJ:Z

    const-string v1, "  "

    const-string/jumbo v2, "freezer_cutoff_adj"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    const-string v1, "  "

    const-string/jumbo v2, "disable_app_profiler_pss_profiling"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->APP_PROFILER_PSS_PROFILING_DISABLED:Z

    const-string v1, "  "

    const-string/jumbo v2, "pss_to_rss_threshold_modifier"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PSS_TO_RSS_THRESHOLD_MODIFIER:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_previous_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MAX_PREVIOUS_TIME:J

    const-string v2, "  "

    const-string/jumbo v3, "enable_batching_oom_adj"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_BATCHING_OOM_ADJ:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_0

    const-string v0, "  mOverrideMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    const-string v0, "  mCustomizedMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mCustomizedMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  OOMADJ_UPDATE_QUICK="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  ENABLE_WAIT_FOR_FINISH_ATTACH_APPLICATION="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mEnableWaitForFinishAttachApplication:Z

    const-string v1, "  "

    const-string/jumbo v2, "follow_up_oomadj_update_wait_duration"

    const-string v3, "="

    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FOLLOW_UP_OOMADJ_UPDATE_WAIT_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "proc_state_debug_uids"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "    uid-state-delay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetUidStateDelay:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "    proc-state-delay="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mProcStateDebugSetProcStateDelay:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_MANAGER_CONSTANTS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    return-void

    :cond_1
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ACTIVITY_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "activity_starts_logging_enabled"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return-void

    :cond_3
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FOREGROUND_SERVICE_STARTS_LOGGING_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "foreground_service_starts_logging_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    return-void

    :cond_4
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->ENABLE_AUTOMATIC_SYSTEM_SERVER_HEAP_DUMPS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateEnableAutomaticSystemServerHeapDumps()V

    return-void

    :cond_5
    sget-object p1, Lcom/android/server/am/ActivityManagerConstants;->FORCE_ENABLE_PSS_PROFILING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "force_enable_pss_profiling"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_6

    move v0, v1

    :cond_6
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mForceEnablePssProfiling:Z

    :cond_7
    :goto_0
    return-void
.end method

.method public final updateConstants()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "activity_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "ActivityManagerConstants"

    const-string v3, "Bad activity manager config settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "background_settle_time"

    const-wide/32 v5, 0xea60

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "fgservice_min_shown_time"

    const-wide/16 v7, 0x7d0

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "fgservice_min_report_time"

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "fgservice_screen_on_before_time"

    const-wide/16 v7, 0x3e8

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "fgservice_screen_on_after_time"

    const-wide/16 v9, 0x1388

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "fgs_boot_completed_allowlist"

    const v11, 0x40000718    # 2.000433f

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGS_BOOT_COMPLETED_ALLOWLIST:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "content_provider_retain_time"

    const-wide/16 v11, 0x4e20

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "gc_timeout"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "gc_min_interval"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "full_pss_min_interval"

    const-wide/32 v9, 0x124f80

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "full_pss_lowered_interval"

    const-wide/32 v9, 0x493e0

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_interval"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_1"

    const/16 v11, 0x19

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_2"

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_3"

    const/16 v11, 0xa

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "power_check_max_cpu_4"

    const/4 v11, 0x2

    invoke-virtual {v0, v4, v11}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_usage_interaction_time"

    const-wide/32 v11, 0x1b7740

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_usage_interaction_time_post_s"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "usage_stats_interaction_interval"

    const-wide/32 v13, 0x6ddd00

    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "usage_stats_interaction_interval_post_s"

    const-wide/32 v13, 0x927c0

    invoke-virtual {v0, v4, v13, v14}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_restart_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_reset_run_duration"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_restart_duration_factor"

    const/4 v5, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_min_restart_time_between"

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_max_inactivity"

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_bg_start_timeout"

    const-wide/16 v7, 0x3a98

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_bg_activity_start_timeout"

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_BG_ACTIVITY_START_TIMEOUT:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_crash_restart_duration"

    invoke-virtual {v0, v4, v11, v12}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "service_crash_max_retry"

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_start_async"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "memory_info_throttle_time"

    invoke-virtual {v0, v4, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->MEMORY_INFO_THROTTLE_TIME:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "top_to_almost_perceptible_grace_duration"

    invoke-virtual {v0, v4, v7, v8}, Landroid/util/KeyValueListParser;->getDurationMillis(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "min_crash_interval"

    const v5, 0x1d4c0

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "pendingintent_warning_threshold"

    const/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->PENDINGINTENT_WARNING_THRESHOLD:I

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_crash_count_reset_interval"

    const v5, 0x2932e00

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_RESET_INTERVAL:J

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v4, "process_crash_count_limit"

    const/16 v5, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->PROCESS_CRASH_COUNT_LIMIT:I

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final updateEnableAutomaticSystemServerHeapDumps()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpEnabled:Z

    if-nez v0, :cond_0

    const-string p0, "ActivityManagerConstants"

    const-string/jumbo v0, "updateEnableAutomaticSystemServerHeapDumps called when leak detection disabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "enable_automatic_system_server_heap_dumps"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPssThresholdBytes:J

    :goto_0
    move-wide v5, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerConstants;->mSystemServerAutomaticHeapDumpPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    return-void
.end method

.method public final updateMaxCachedProcesses()V
    .locals 4

    const-string/jumbo v0, "activity_manager"

    const-string/jumbo v1, "max_cached_processes"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to parse flag for max_cached_processes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManagerConstants"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    :goto_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->min(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->min(II)I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_EMPTY_PROCESSES:I

    if-eqz v0, :cond_2

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    :cond_2
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUSTOM_CUR_TRIM_CACHED_PROCESSES:I

    if-eqz v0, :cond_3

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    :cond_3
    return-void
.end method
