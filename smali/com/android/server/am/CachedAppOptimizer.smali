.class public Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_MAX_OOM_ADJ:J = 0x3e7L

.field static final DEFAULT_COMPACT_THROTTLE_MIN_OOM_ADJ:J = 0x352L

.field static final DEFAULT_FREEZER_BINDER_ASYNC_THRESHOLD:I = 0x400

.field static final DEFAULT_FREEZER_BINDER_CALLBACK_ENABLED:Z = true

.field static final DEFAULT_FREEZER_BINDER_CALLBACK_THROTTLE:J = 0x2710L

.field static final DEFAULT_FREEZER_BINDER_DIVISOR:J = 0x4L

.field static final DEFAULT_FREEZER_BINDER_ENABLED:Z = true

.field static final DEFAULT_FREEZER_BINDER_OFFSET:I = 0x1f4

.field static final DEFAULT_FREEZER_BINDER_THRESHOLD:J = 0x3e8L

.field static final DEFAULT_FREEZER_DEBOUNCE_TIMEOUT:J = 0x2710L

.field static final DEFAULT_FREEZER_EXEMPT_INST_PKG:Z = false

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static final DEFAULT_USE_COMPACTION:Z = true

.field static final DEFAULT_USE_FREEZER:Z = true

.field static final ENABLE_SHARED_AND_CODE_COMPACT:Z = false

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"

.field static final KEY_COMPACT_THROTTLE_MAX_OOM_ADJ:Ljava/lang/String; = "compact_throttle_max_oom_adj"

.field static final KEY_COMPACT_THROTTLE_MIN_OOM_ADJ:Ljava/lang/String; = "compact_throttle_min_oom_adj"

.field static final KEY_FREEZER_BINDER_ASYNC_THRESHOLD:Ljava/lang/String; = "freeze_binder_async_threshold"

.field static final KEY_FREEZER_BINDER_CALLBACK_ENABLED:Ljava/lang/String; = "freeze_binder_callback_enabled"

.field static final KEY_FREEZER_BINDER_CALLBACK_THROTTLE:Ljava/lang/String; = "freeze_binder_callback_throttle"

.field static final KEY_FREEZER_BINDER_DIVISOR:Ljava/lang/String; = "freeze_binder_divisor"

.field static final KEY_FREEZER_BINDER_ENABLED:Ljava/lang/String; = "freeze_binder_enabled"

.field static final KEY_FREEZER_BINDER_OFFSET:Ljava/lang/String; = "freeze_binder_offset"

.field static final KEY_FREEZER_BINDER_THRESHOLD:Ljava/lang/String; = "freeze_binder_threshold"

.field static final KEY_FREEZER_DEBOUNCE_TIMEOUT:Ljava/lang/String; = "freeze_debounce_timeout"

.field static final KEY_FREEZER_EXEMPT_INST_PKG:Ljava/lang/String; = "freeze_exempt_inst_pkg"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"


# instance fields
.field public final isDebuggable:Z

.field public final mAm:Lcom/android/server/am/ActivityManagerService;

.field public final mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

.field public final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottleMaxOomAdj:J

.field volatile mCompactThrottleMinOomAdj:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field public mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

.field public final mFreezer:Lcom/android/server/am/Freezer;

.field volatile mFreezerBinderAsyncThreshold:I

.field volatile mFreezerBinderCallbackEnabled:Z

.field public mFreezerBinderCallbackLast:J

.field volatile mFreezerBinderCallbackThrottle:J

.field volatile mFreezerBinderDivisor:J

.field volatile mFreezerBinderEnabled:Z

.field volatile mFreezerBinderOffset:I

.field volatile mFreezerBinderThreshold:J

.field volatile mFreezerDebounceTimeout:J

.field public mFreezerDisableCount:I

.field volatile mFreezerExemptInstPkg:Z

.field public final mFreezerLock:Ljava/lang/Object;

.field public mFreezerOverride:Z

.field volatile mFreezerStatsdSampleRate:F

.field public final mFrozenProcesses:Landroid/util/SparseArray;

.field volatile mFullAnonRssThrottleKb:J

.field volatile mFullDeltaRssThrottleKb:J

.field public final mOnFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

.field public final mOnNativeBootFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

.field public final mPendingCompactionProcesses:Ljava/util/ArrayList;

.field final mPhenotypeFlagLock:Ljava/lang/Object;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public final mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

.field final mProcStateThrottle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field public final mRandom:Ljava/util/Random;

.field public final mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

.field public final mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field public volatile mUseCompaction:Z

.field public volatile mUseFreezer:Z


# direct methods
.method public static -$$Nest$mupdateFreezerBinderState(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 5

    const-string/jumbo v0, "activity_manager_native_boot"

    const-string/jumbo v1, "freeze_binder_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    const-string/jumbo v1, "freeze_binder_divisor"

    const-wide/16 v3, 0x4

    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    const-string/jumbo v1, "freeze_binder_offset"

    const/16 v3, 0x1f4

    invoke-static {v0, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    const-string/jumbo v1, "freeze_binder_threshold"

    const-wide/16 v3, 0x3e8

    invoke-static {v0, v1, v3, v4}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    const-string/jumbo v1, "freeze_binder_callback_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    const-string/jumbo v1, "freeze_binder_callback_throttle"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    const-string/jumbo v1, "freeze_binder_async_threshold"

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freezer binder state set to enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", divisor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", callback enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", callback throttle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", async threshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    const-string v1, "ActivityManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smcompactProcess(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactProcess(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smgetUsedZramMemory()J
    .locals 2

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getUsedZramMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smthreadCpuTimeNs()J
    .locals 2

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->threadCpuTimeNs()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string/jumbo v0, "cached_apps_freezer"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->CACHED_APP_FREEZER_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebuggable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;I)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;I)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnNativeBootFlagsChangedListener:Lcom/android/server/am/CachedAppOptimizer$1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v5, 0x1f4

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/16 v5, 0x352

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v5, 0x3e7

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const-wide/16 v5, 0x2ee0

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v5, 0x1f40

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    const-wide/16 v5, 0x4

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    const-wide/16 v5, 0x3e8

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackEnabled:Z

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackThrottle:J

    const/16 v0, 0x400

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderCallbackLast:J

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "CachedAppOptimizerThread"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    new-instance p2, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    invoke-direct {p2, p0}, Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSettingsObserver:Lcom/android/server/am/CachedAppOptimizer$SettingsContentObserver;

    new-instance p2, Lcom/android/internal/os/ProcLocksReader;

    invoke-direct {p2}, Lcom/android/internal/os/ProcLocksReader;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mFreezer:Lcom/android/server/am/Freezer;

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    new-instance p1, Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    const-string/jumbo p2, "cachedAppOptimizer"

    invoke-direct {p1, p2}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer$Reclaimer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    sget-boolean p0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    return-void
.end method

.method private static native cancelCompaction()V
.end method

.method private static native compactProcess(II)I
.end method

.method private native compactSystem()V
.end method

.method public static native getFreeSwapPercent()D
.end method

.method private static native getMemoryFreedCompaction()J
.end method

.method public static getUnfreezeReasonCodeFromOomAdjReason(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x1f

    return p0

    :pswitch_1
    const/16 p0, 0x1e

    return p0

    :pswitch_2
    const/16 p0, 0x1d

    return p0

    :pswitch_3
    const/16 p0, 0x1c

    return p0

    :pswitch_4
    const/16 p0, 0x1b

    return p0

    :pswitch_5
    const/16 p0, 0x1a

    return p0

    :pswitch_6
    const/16 p0, 0x19

    return p0

    :pswitch_7
    const/16 p0, 0x18

    return p0

    :pswitch_8
    const/16 p0, 0x17

    return p0

    :pswitch_9
    const/16 p0, 0x16

    return p0

    :pswitch_a
    const/16 p0, 0x15

    return p0

    :pswitch_b
    const/16 p0, 0x14

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_d
    const/16 p0, 0xb

    return p0

    :pswitch_e
    const/16 p0, 0xa

    return p0

    :pswitch_f
    const/16 p0, 0x9

    return p0

    :pswitch_10
    const/16 p0, 0x8

    return p0

    :pswitch_11
    const/4 p0, 0x7

    return p0

    :pswitch_12
    const/4 p0, 0x6

    return p0

    :pswitch_13
    const/4 p0, 0x5

    return p0

    :pswitch_14
    const/4 p0, 0x4

    return p0

    :pswitch_15
    const/4 p0, 0x3

    return p0

    :pswitch_16
    const/4 p0, 0x2

    return p0

    :pswitch_17
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

.method private static native getUsedZramMemory()J
.end method

.method public static onProcessFrozenCancelled(Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method private static native threadCpuTimeNs()J
.end method

.method public static traceAppFreeze(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-gez p1, :cond_0

    const-string v1, "Freeze "

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "Unfreeze "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, 0x40

    const-string v0, "Freezer"

    invoke-static {p1, p2, v0, p0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-wide v3, v2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    add-long/2addr p1, v0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, v2, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-wide p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mEarliestFreezableTimeMillis:J

    sub-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final cancelCompactionForProcess(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CancelCompactReason;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iput-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v1

    :cond_0
    sget v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;->mPidCompacting:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->cancelCompaction()V

    move v2, v1

    :cond_1
    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    iget-object p1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionsCancelled:Ljava/util/EnumMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public final compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V
    .locals 8

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iput-object p3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    iput-object p2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v2, p3}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object p3

    invoke-virtual {v2, v1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    if-eq v2, v3, :cond_3

    const/4 v6, 0x3

    if-eq v2, v6, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stats cannot be logged for compaction type."

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CompactionStatsManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-wide v6, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    iget-wide v1, p3, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    add-long/2addr v1, v4

    iput-wide v1, p3, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mFullCompactRequested:J

    goto :goto_1

    :cond_3
    iget-wide v6, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    iget-wide v1, p3, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    add-long/2addr v1, v4

    iput-wide v1, p3, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactRequested:J

    :goto_1
    iget-boolean p2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    if-nez p2, :cond_4

    iput-boolean v3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    iput-boolean p4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p2, p1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p0, v3, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public final declared-synchronized enableFreezer(Z)Z
    .locals 6

    const-string/jumbo v0, "freezer override set to "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :try_start_1
    iget v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    if-gez v3, :cond_3

    :try_start_2
    const-string p1, "ActivityManager"

    const-string/jumbo v0, "unbalanced call to enableFreezer, ignoring"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_3
    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDisableCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-le v2, v1, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    xor-int/lit8 v4, p1, 0x1

    :try_start_6
    iput-boolean v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v4, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :goto_0
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw p1
.end method

.method public forceFreezeForTest(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3, v4, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V
    .locals 6

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    invoke-virtual {p1, v3, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    invoke-virtual {p0, v3, v4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    if-eqz v1, :cond_1

    if-nez p4, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean p4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mIsCached:Z

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    iput-boolean v4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mIsCached:Z

    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p4, p4, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    const/16 v5, 0x28

    if-lt p4, v1, :cond_3

    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p4, :cond_4

    :try_start_0
    invoke-virtual {p4, v5}, Landroid/app/IApplicationThread$Delegator;->scheduleTrimMemory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    const/16 v1, 0x352

    if-lt p4, v1, :cond_4

    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-eqz p4, :cond_4

    :try_start_1
    invoke-virtual {p4, v5}, Landroid/app/IApplicationThread$Delegator;->scheduleTrimMemory(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p4, p4, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p4, p4, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {p4, v1, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p4, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    sget-boolean p4, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p4, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iget v5, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v1}, Lcom/android/server/am/FreecessController;->freezeTargetProcess(ILjava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_6

    goto :goto_2

    :cond_6
    iget-object p4, p3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iput-wide p1, p4, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    invoke-virtual {p0, v3, v4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean v4, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    :cond_7
    :goto_2
    return-void
.end method

.method public final isProcessFrozen(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final onCleanupApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v2, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    if-eq v2, v1, :cond_2

    iput-boolean v2, v0, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    iget v0, v0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_3
    return-void
.end method

.method public final onProcessFrozen(Lcom/android/server/am/ProcessRecord;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->useCompaction()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v2, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/server/am/CachedAppOptimizer;->compactApp(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/CachedAppOptimizer$CompactProfile;Lcom/android/server/am/CachedAppOptimizer$CompactSource;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v4, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->onProcessFrozen(IILjava/lang/String;IZ)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1

    :cond_2
    return-void
.end method

.method public final parseProcStateThrottle(Ljava/lang/String;)Z
    .locals 6

    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    const-string p0, "Failed to parse default app compaction proc state: "

    const-string p1, "ActivityManager"

    invoke-static {p0, v3, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final postUidFrozenMessage(IZ)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    const-string v8, " "

    const-string v9, "ActivityManager"

    const-string/jumbo v4, "pid "

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v11, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeSticky:Z

    const/4 v12, 0x0

    if-eqz v6, :cond_0

    if-nez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    const/4 v7, 0x6

    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v15, 0x3

    invoke-virtual {v6, v15, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v12, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    iget-object v6, v13, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v6, v6, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v6, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v12

    :goto_0
    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    const/16 p3, 0x1

    if-eqz v15, :cond_2

    iget-boolean v14, v15, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    if-eqz v14, :cond_2

    iput-boolean v12, v15, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    iget v14, v15, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v0, v14, v12}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    :cond_2
    iput-boolean v12, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    if-eqz v10, :cond_6

    iget-boolean v14, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v14, :cond_3

    goto/16 :goto_3

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/android/server/am/Freezer;->getBinderFreezeInfo(I)I

    move-result v14

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " received sync transactions while frozen, killing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "Sync transaction while in frozen state"

    const/16 v3, 0x14

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v2, 0xe

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_4
    if-nez v6, :cond_5

    iget-object v4, v13, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v4, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    iget-wide v6, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v12, v12}, Lcom/android/server/am/Freezer;->freezeBinder(IIZ)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v10, v2, v11}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(IILjava/lang/String;)V

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v10, v3, v12}, Landroid/os/Process;->setProcessFrozen(IIZ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    iput-boolean v12, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-string/jumbo v3, "Unable to unfreeze "

    const-string v4, ". This might cause inconsistency or UI hangs."

    invoke-static {v10, v3, v8, v11, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v3, :cond_6

    const-string/jumbo v3, "sync unfroze "

    const-string v4, " for "

    invoke-static {v10, v3, v8, v11, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v2, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    iget-wide v3, v5, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    sub-long/2addr v3, v6

    const-wide/32 v5, 0x7fffffff

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return p3

    :catch_2
    const-string/jumbo v0, "Unable to unfreeze binder for "

    const-string v2, ". Killing it"

    invoke-static {v10, v0, v8, v11, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x13

    const/4 v6, 0x1

    const-string/jumbo v4, "Unable to unfreeze"

    const/16 v2, 0xe

    const/4 v7, 0x1

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_3

    :goto_2
    const-string/jumbo v1, "Unable to query binder frozen info for pid "

    const-string v2, ". Killing it. Exception: "

    invoke-static {v10, v1, v8, v11, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x13

    const/4 v6, 0x1

    const-string/jumbo v4, "Unable to query binder frozen stats"

    const/16 v2, 0xe

    const/4 v7, 0x1

    move-object v5, v4

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_6
    :goto_3
    return v12
.end method

.method public final unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mIsCached:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mIsCached:Z

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppInternalLSP(Lcom/android/server/am/ProcessRecord;IZ)Z

    move-result p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final unfreezeProcess(II)V
    .locals 7

    const-string/jumbo v0, "Unable to quick unfreeze binder for "

    const-string/jumbo v1, "Unable to quick unfreeze "

    const-string/jumbo v2, "quick sync unfreeze "

    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p1, v2, v2}, Lcom/android/server/am/Freezer;->freezeBinder(IIZ)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(IILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    iget p2, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v2}, Landroid/os/Process;->setProcessFrozen(IIZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_3
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, v4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-object p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p2, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :catch_1
    :try_start_4
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_1
    return-void

    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    invoke-static {p4, p2, p3}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide p2

    iget-object v1, p4, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-nez v2, :cond_0

    iget-boolean v1, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p4, p1, v1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    invoke-virtual {p0, p2, p3, p4, v1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_2
    return-void
.end method

.method public final unfreezeTemporarily(ILcom/android/server/am/ProcessRecord;)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeTemporarily(IJLcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public final updateCompactionThrottles()V
    .locals 9

    const-string/jumbo v0, "compact_throttle_1"

    const-string/jumbo v1, "activity_manager"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "compact_throttle_2"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "compact_throttle_3"

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "compact_throttle_4"

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "compact_throttle_5"

    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "compact_throttle_6"

    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "compact_throttle_min_oom_adj"

    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "compact_throttle_max_oom_adj"

    invoke-static {v1, v8}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    :goto_0
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    const-wide/16 v0, 0x352

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMinOomAdj:J

    const-wide/16 v0, 0x3e7

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleMaxOomAdj:J

    return-void
.end method

.method public final updateFreezerDebounceTimeout()V
    .locals 6

    const-string/jumbo v0, "activity_manager_native_boot"

    const-string/jumbo v1, "freeze_debounce_timeout"

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freezer timeout set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    const-string p0, "ActivityManager"

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    return-void
.end method

.method public final updateFreezerExemptInstPkg()V
    .locals 3

    const-string/jumbo v0, "freeze_exempt_inst_pkg"

    const/4 v1, 0x0

    const-string/jumbo v2, "activity_manager_native_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Freezer exemption set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerExemptInstPkg:Z

    const-string v1, "ActivityManager"

    invoke-static {v1, v0, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public final updateProcStateThrottle()V
    .locals 5

    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Unable to parse app compact proc state throttle \""

    const-string v3, "\" falling back to default."

    const-string v4, "ActivityManager"

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/ProfileService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unable to parse default app compact proc state throttle "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final updateUseCompaction()V
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "activity_manager"

    const-string/jumbo v2, "use_compaction"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    :cond_0
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {v0}, Lcom/android/server/am/compaction/CompactionStatsManager;-><init>()V

    sput-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    :cond_1
    sget-object v0, Lcom/android/server/am/compaction/CompactionStatsManager;->sInstance:Lcom/android/server/am/compaction/CompactionStatsManager;

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    :cond_2
    return-void
.end method

.method public final updateUseFreezer()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "cached_apps_freezer"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    const-string/jumbo v1, "activity_manager_native_boot"

    const-string/jumbo v3, "use_freezer"

    invoke-static {v1, v3, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/Freezer;->isFreezerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerDebounceTimeout()V

    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerExemptInstPkg()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/CachedAppOptimizer;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final useCompaction()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final useFreezer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
