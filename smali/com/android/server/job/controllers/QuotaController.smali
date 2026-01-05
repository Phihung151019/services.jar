.class public final Lcom/android/server/job/controllers/QuotaController;
.super Lcom/android/server/job/controllers/StateController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field static final MSG_END_GRACE_PERIOD:I = 0x6

.field static final MSG_REACHED_EJ_TIME_QUOTA:I = 0x4

.field static final MSG_REACHED_TIME_QUOTA:I = 0x0

.field static final OVERRIDE_QUOTA_ADJUST_DEFAULT_CONSTANTS:J = 0x1689cb07L

.field static final OVERRIDE_QUOTA_ENFORCEMENT_TO_FGS_JOBS:J = 0x1456519fL

.field static final OVERRIDE_QUOTA_ENFORCEMENT_TO_TOP_STARTED_JOBS:J = 0x164fba92L


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mAllowedTimePerPeriodMs:[J

.field public mAllowedTimePeriodAdditionaInstallerMs:J

.field public final mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

.field public final mBucketPeriodsMs:[J

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

.field public mEJGracePeriodTempAllowlistMs:J

.field public mEJGracePeriodTopAppMs:J

.field public mEJLimitWindowSizeMs:J

.field public final mEJLimitsMs:[J

.field public final mEJPkgTimers:Landroid/util/SparseArrayMap;

.field public mEJRewardInteractionMs:J

.field public mEJRewardNotificationSeenMs:J

.field public mEJRewardTopAppMs:J

.field public final mEJStats:Landroid/util/SparseArrayMap;

.field public final mEJTimingSessions:Landroid/util/SparseArrayMap;

.field public mEJTopAppTimeChunkSizeMs:J

.field public final mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

.field public mEjLimitAdditionInstallerMs:J

.field public mEjLimitAdditionSpecialMs:J

.field public final mExecutionStatsCache:Landroid/util/SparseArrayMap;

.field public final mForegroundUids:Landroid/util/SparseBooleanArray;

.field public final mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

.field public final mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

.field public final mMaxBucketJobCounts:[I

.field public final mMaxBucketSessionCounts:[I

.field public mMaxExecutionTimeIntoQuotaMs:J

.field public mMaxExecutionTimeMs:J

.field public mMaxJobCountPerRateLimitingWindow:I

.field public mMaxSessionCountPerRateLimitingWindow:I

.field public mNextCleanupTimeElapsed:J

.field public final mPkgTimers:Landroid/util/SparseArrayMap;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

.field public mQuotaBufferMs:J

.field public mRateLimitingWindowMs:J

.field public final mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

.field public final mSystemInstallers:Landroid/util/SparseSetArray;

.field public final mTempAllowlistCache:Landroid/util/SparseBooleanArray;

.field public final mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

.field public final mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

.field public final mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

.field public final mTimingEvents:Landroid/util/SparseArrayMap;

.field public mTimingSessionCoalescingDurationMs:J

.field public final mTopAppCache:Landroid/util/SparseBooleanArray;

.field public final mTopAppGraceCache:Landroid/util/SparseLongArray;

.field public final mTopAppTrackers:Landroid/util/SparseArrayMap;

.field public final mTopStartedJobs:Landroid/util/ArraySet;

.field public final mTrackedJobs:Landroid/util/SparseArrayMap;

.field public final mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;


# direct methods
.method public static -$$Nest$mgrantRewardForInstantEvent(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;J)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-wide v8, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mmaybeUpdateConstraintForUidLocked(Lcom/android/server/job/controllers/QuotaController;I)Landroid/util/ArraySet;
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mUpdateTimeElapsed:J

    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobStore;->forEachJobForSourceUid(ILjava/util/function/Consumer;)V

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v2, p0

    :goto_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v5, v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->mToScheduleStartAlarms:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    iget-object p0, v0, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;->changedJobs:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static -$$Nest$smhashLong(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Quota"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    const-wide/32 v1, 0x927c0

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    new-array v6, v5, [J

    fill-array-data v6, :array_0

    iput-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    const-wide/32 v6, 0xdbba00

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    const-wide/16 v6, 0x7530

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    const-wide/32 v8, 0xdb44d0

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    const-wide/32 v8, 0xea60

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    const/16 v10, 0x14

    iput v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    iput v10, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    new-instance v10, Lcom/android/server/job/controllers/QuotaController$1;

    invoke-direct {v10, v0}, Lcom/android/server/job/controllers/QuotaController$1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

    const-wide/32 v10, 0x5265c00

    new-array v12, v5, [J

    fill-array-data v12, :array_1

    iput-object v12, v0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    const/4 v12, 0x0

    new-array v13, v5, [I

    fill-array-data v13, :array_2

    iput-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    new-array v15, v5, [I

    fill-array-data v15, :array_3

    iput-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    const-wide/16 v13, 0x1388

    iput-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    const-wide/32 v13, 0x1b7740

    new-array v5, v5, [J

    fill-array-data v5, :array_4

    iput-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    iput-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    const-wide/32 v13, 0xdbba0

    iput-wide v13, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    iput-wide v10, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    const-wide/16 v1, 0x2710

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    const-wide/16 v1, 0x3a98

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    const-wide/32 v1, 0x2bf20

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    iput-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    new-instance v1, Landroid/util/SparseSetArray;

    invoke-direct {v1}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    invoke-direct {v1, v0}, Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mUpdateUidConstraints:Lcom/android/server/job/controllers/QuotaController$UidConstraintUpdater;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v12, v0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/job/controllers/QuotaController$QcHandler;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-direct {v1, v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;-><init>(Lcom/android/server/job/controllers/QuotaController;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$StandbyTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$UsageEventTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->registerListener(Landroid/app/usage/UsageStatsManagerInternal$UsageEventListener;)V

    const-class v1, Lcom/android/server/PowerAllowlistInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerAllowlistInternal;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$TempAllowlistTracker;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    invoke-interface {v1, v2}, Lcom/android/server/PowerAllowlistInternal;->registerTempAllowlistChangeListener(Lcom/android/server/PowerAllowlistInternal$TempAllowlistChangeListener;)V

    const-string/jumbo v1, "platform_compat"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/PlatformCompat;

    iput-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    const-wide/32 v3, 0x1689cb07

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/compat/PlatformCompat;->registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v15, 0x1

    invoke-interface {v1, v2, v15, v4, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    const/4 v4, 0x3

    invoke-interface {v1, v2, v15, v4, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;

    invoke-direct {v2, v0}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    const/4 v4, 0x2

    invoke-interface {v1, v2, v15, v4, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v0, v12}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultBucketWindowSizes(Z)V

    invoke-virtual {v0, v12}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultEjLimits(Z)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 8
        0x927c0
        0x927c0
        0x927c0
        0x927c0
        0x0
        0x927c0
        0x927c0
    .end array-data

    :array_1
    .array-data 8
        0x927c0
        0x6ddd00
        0x1b77400
        0x5265c00
        0x0
        0x5265c00
        0x927c0
    .end array-data

    :array_2
    .array-data 4
        0x4b
        0x78
        0xc8
        0x30
        0x0
        0xa
        0x4b
    .end array-data

    :array_3
    .array-data 4
        0x4b
        0xa
        0x8
        0x3
        0x0
        0x1
        0x4b
    .end array-data

    :array_4
    .array-data 8
        0x1b7740
        0x1b7740
        0x927c0
        0x927c0
        0x0
        0x493e0
        0x36ee80
    .end array-data
.end method


# virtual methods
.method public final cacheInstallerPackagesLocked(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x4c3000

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string/jumbo v4, "android.permission.INSTALL_PACKAGES"

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final calculateTimeUntilQuotaConsumedLocked(JJLjava/util/List;)J
    .locals 14

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v6, p1

    move v5, v3

    move-wide v3, v1

    move-wide/from16 v1, p3

    :goto_0
    if-ge v5, v0, :cond_3

    move-object/from16 v8, p5

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v10, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v12, v10, p1

    if-gez v12, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v12, v9, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v9, v12, p1

    if-gtz v9, :cond_1

    sub-long v6, v10, p1

    add-long/2addr v6, v3

    move-wide v3, v6

    move-wide v6, v10

    goto :goto_1

    :cond_1
    sub-long v6, v12, v6

    cmp-long v9, v6, v1

    if-lez v9, :cond_2

    goto :goto_2

    :cond_2
    sub-long v12, v10, v12

    add-long/2addr v12, v6

    add-long/2addr v12, v3

    sub-long/2addr v1, v6

    move-wide v6, v10

    move-wide v3, v12

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    add-long/2addr v3, v1

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long p0, v3, v0

    if-lez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Calculated quota consumed time too high: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JobScheduler.Quota"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v3
.end method

.method public final clearAppStatsLocked(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-string v1, "JobScheduler.Quota"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "clearAppStats called before Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "clearAppStats called before EJ Timer turned off."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteObsoleteSessionsLocked()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimedEventTooOld:Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mDeleteOldEventsFunctor:Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v3

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v3, v5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$TimingSession;->getEndTimeElapsed()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    const-wide/32 v12, 0x5265c00

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v8, v10

    neg-long v7, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "QuotaController:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_exempted_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_active_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_working_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_frequent_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_rare_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_restricted_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ADDITION_INSTALLER_MS:J

    const-string/jumbo v2, "qc_allowed_time_per_period_addition_installer_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-string/jumbo v2, "qc_in_quota_buffer_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_window_size_exempted_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-string/jumbo v2, "qc_window_size_active_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-string/jumbo v2, "qc_window_size_working_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-string/jumbo v2, "qc_window_size_frequent_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-string/jumbo v2, "qc_window_size_rare_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_window_size_restricted_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    const-string/jumbo v2, "qc_max_execution_time_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    const-string/jumbo v1, "qc_max_job_count_exempted"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const-string/jumbo v1, "qc_max_job_count_active"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const-string/jumbo v1, "qc_max_job_count_working"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const-string/jumbo v1, "qc_max_job_count_frequent"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const-string/jumbo v1, "qc_max_job_count_rare"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    const-string/jumbo v1, "qc_max_job_count_restricted"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-string/jumbo v2, "qc_rate_limiting_window_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-string/jumbo v1, "qc_max_job_count_per_rate_limiting_window"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    const-string/jumbo v1, "qc_max_session_count_exempted"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const-string/jumbo v1, "qc_max_session_count_active"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const-string/jumbo v1, "qc_max_session_count_working"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const-string/jumbo v1, "qc_max_session_count_frequent"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    const-string/jumbo v1, "qc_max_session_count_rare"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const-string/jumbo v1, "qc_max_session_count_restricted"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    const-string/jumbo v1, "qc_max_session_count_per_rate_limiting_window"

    invoke-static {v0, p1, v1}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(ILandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-string/jumbo v2, "qc_timing_session_coalescing_duration_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-string/jumbo v2, "qc_min_quota_check_delay_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_exempted_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    const-string/jumbo v2, "qc_ej_limit_active_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-string/jumbo v2, "qc_ej_limit_working_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-string/jumbo v2, "qc_ej_limit_frequent_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-string/jumbo v2, "qc_ej_limit_rare_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_restricted_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_installer_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_special_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    const-string/jumbo v2, "qc_ej_window_size_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-string/jumbo v2, "qc_ej_top_app_time_chunk_size_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    const-string/jumbo v2, "qc_ej_reward_top_app_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-string/jumbo v2, "qc_ej_reward_interaction_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    const-string/jumbo v2, "qc_ej_reward_notification_seen_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    const-string/jumbo v2, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x10b00000018L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000003L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000004L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000005L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000006L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000014L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000007L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000008L

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000aL

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000bL

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000015L

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000013L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000cL

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000dL

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000eL

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000fL

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000010L

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000016L

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000011L

    iget v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000012L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000017L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000018L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000019L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001aL

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001bL

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001cL

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001dL

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001eL

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1030000001fL

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000020L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000021L

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 8
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "Aconfig Flags:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.job.adjust_quota_default_constants: true"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.job.enforce_quota_policy_to_fgs_jobs: true"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.job.enforce_quota_policy_to_top_started_jobs: true"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    com.android.server.job.additional_quota_for_system_installer: true"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current elapsed time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Foreground UIDs: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v0, "Cached top apps: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached top app grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached temp allowlist: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Cached temp allowlist grace period: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "Special apps:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "System installers={"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2}, Landroid/util/SparseSetArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v2, "->"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    :goto_2
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v5, "Saved events:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v2

    move v3, v0

    :goto_5
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v5, "Saved sessions:"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_6
    if-ltz v5, :cond_6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {v6, p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->dump(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "Cached execution stats:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    :goto_7
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    const-string v2, ": "

    if-ge p2, v1, :cond_d

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    :goto_8
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-static {v1, v4}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v4, v0

    :goto_9
    array-length v6, v5

    if-ge v4, v6, :cond_b

    aget-object v6, v5, v4

    if-eqz v6, :cond_a

    invoke-static {v4}, Lcom/android/server/job/controllers/JobStatus;->bucketName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_b
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_d
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string p2, "EJ debits:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move p2, v0

    :goto_a
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v1

    if-ge p2, v1, :cond_f

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    move v3, v0

    :goto_b
    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    invoke-static {v1, v4}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide v3, 0x20b00000004L

    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10b00000009L

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v9, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v9}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v9

    const-wide v10, 0x10800000001L

    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    sget-object v9, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide v11, 0x10300000006L

    invoke-virtual {v1, v11, v12, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v10, 0x0

    :goto_0
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13}, Landroid/util/SparseBooleanArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_0

    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    const-wide v14, 0x20500000003L

    invoke-virtual {v1, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    new-instance v13, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;

    invoke-direct {v13, v0, v2, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v10, v13}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    const/4 v10, 0x0

    :goto_1
    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v13

    if-ge v10, v13, :cond_7

    iget-object v13, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v13, v10}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v13}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v15

    if-ge v14, v15, :cond_6

    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v15, v10, v14}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-wide v11, 0x20b00000005L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v10, v14}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/QuotaController$Timer;

    const-wide v3, 0x10b00000002L

    invoke-virtual {v9, v1, v3, v4, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v13, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    move v4, v10

    if-eqz v3, :cond_1

    const-wide v9, 0x10b00000006L

    invoke-virtual {v3, v1, v9, v10, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->dump(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    :cond_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v13, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v9, v16

    :goto_3
    if-ltz v9, :cond_3

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    instance-of v2, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    if-nez v2, :cond_2

    move-object/from16 v16, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    move v8, v4

    goto :goto_4

    :cond_2
    check-cast v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v3

    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    move-wide/from16 v17, v5

    move v6, v4

    const-wide v4, 0x10300000001L

    move-wide/from16 v19, v7

    move v8, v6

    iget-wide v6, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v4, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    const-wide v6, 0x10300000002L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10500000003L

    iget v6, v10, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_4
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v2, p2

    move v4, v8

    move-object/from16 v3, v16

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    goto :goto_3

    :cond_3
    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    move v8, v4

    iget-object v2, v0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v13, v15}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    :goto_5
    array-length v4, v2

    if-ge v3, v4, :cond_5

    aget-object v4, v2, v3

    if-nez v4, :cond_4

    move-object v7, v2

    move v15, v3

    goto/16 :goto_6

    :cond_4
    const-wide v5, 0x20b00000004L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v5, 0x10e00000001L

    invoke-virtual {v1, v5, v6, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    move-object v7, v2

    move v15, v3

    const-wide v2, 0x10300000002L

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000003L

    iget-wide v2, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000eL

    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000fL

    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000004L

    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000005L

    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v2, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    const-wide v5, 0x10300000006L

    invoke-virtual {v1, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10500000007L

    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1050000000bL

    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10300000008L

    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x10300000009L

    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000aL

    iget v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x1030000000cL

    iget-wide v5, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v2, 0x1050000000dL

    iget v4, v4, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v3, v15, 0x1

    move-object v2, v7

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move v10, v8

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    const-wide v3, 0x20b00000004L

    const-wide v11, 0x10300000006L

    goto/16 :goto_2

    :cond_6
    move-wide/from16 v17, v5

    move-wide/from16 v19, v7

    move v8, v10

    add-int/lit8 v10, v8, 0x1

    move-object/from16 v2, p2

    move-wide/from16 v7, v19

    const-wide v3, 0x20b00000004L

    const-wide v11, 0x10300000006L

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v17, v5

    move-wide v2, v7

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v2, v17

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAllowedTimePerPeriodMs()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    return-object p0
.end method

.method public final getAllowedTimePerPeriodMsLocked(IILjava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v0, v0, p2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method public getAllowedTimePeriodAdditionInstallerMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    return-wide v0
.end method

.method public getBucketMaxJobCounts()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    return-object p0
.end method

.method public getBucketMaxSessionCounts()[I
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    return-object p0
.end method

.method public getBucketWindowSizes()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    return-object p0
.end method

.method public getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    move-result v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getEJGracePeriodTempAllowlistMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-wide v0
.end method

.method public getEJGracePeriodTopAppMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-wide v0
.end method

.method public final getEJLimitMsLocked(IILjava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v0, v0, p2

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method

.method public getEJLimitWindowSizeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    return-wide v0
.end method

.method public getEJLimitsMs()[J
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    return-object p0
.end method

.method public getEJRewardInteractionMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-wide v0
.end method

.method public getEJRewardNotificationSeenMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-wide v0
.end method

.method public getEJRewardTopAppMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    return-wide v0
.end method

.method public getEJTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getEJTopAppTimeChunkSizeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    return-wide v0
.end method

.method public getEjLimitAdditionInstallerMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    return-wide v0
.end method

.method public getEjLimitAdditionSpecialMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    return-wide v0
.end method

.method public final getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 9

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p0, "JobScheduler.Quota"

    const-string/jumbo p1, "getExecutionStatsLocked called for a NEVER app."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    if-nez v0, :cond_1

    array-length v0, v1

    new-array v0, v0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p3, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    aget-object v2, v0, p2

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v2}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    aput-object v2, v0, p2

    :cond_2
    if-eqz p4, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getAllowedTimePerPeriodMsLocked(IILjava/lang/String;)J

    move-result-wide v3

    aget-wide v0, v1, p2

    iget-object p4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    aget p4, p4, p2

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    aget p2, v5, p2

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    iget-wide v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_4

    iget v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v5, p4, :cond_4

    iget v5, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-eq v5, p2, :cond_5

    :cond_4
    iput-wide v3, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iput-wide v0, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iput p4, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    iput p2, v2, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {p0, p1, p3, v2}, Lcom/android/server/job/controllers/QuotaController;->updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V

    :cond_5
    return-object v2
.end method

.method public getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundUids()Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    return-object p0
.end method

.method public getInQuotaBufferMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    return-wide v0
.end method

.method public getMaxExecutionTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0
.end method

.method public getMaxJobCountPerRateLimitingWindow()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    return p0
.end method

.method public final getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p1

    const/16 v1, 0x190

    if-ge p1, v1, :cond_3

    move v2, v3

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    :cond_4
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide p0, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    return-wide p0

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v1, 0x6

    const-wide/16 v8, 0x2

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    if-ne v0, v1, :cond_7

    aget-wide v0, v4, v1

    div-long/2addr v0, v8

    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_7
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result p1

    if-eqz p1, :cond_9

    aget-wide v0, v4, v2

    div-long/2addr v0, v8

    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_9
    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_a
    :goto_2
    aget-wide v0, v4, v3

    div-long/2addr v0, v8

    invoke-virtual {p0, v7, v6}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getMaxSessionCountPerRateLimitingWindow()I
    .locals 0

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    return p0
.end method

.method public getMinQuotaCheckDelayMs()J
    .locals 3

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/utils/AlarmQueue;->mMinTimeBetweenAlarmsMs:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProcessStateQuotaFreeThreshold(I)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v0, 0x1456519f

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method public getQcConstants()Lcom/android/server/job/controllers/QuotaController$QcConstants;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    return-object p0
.end method

.method public getRateLimitingWindowMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    return-wide v0
.end method

.method public getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v3

    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    sub-long/2addr v4, v6

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long v9, v7, v9

    const/4 v11, 0x0

    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v13, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v15, v13, v9

    iget-wide v11, v12, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    if-gez v15, :cond_1

    sub-long/2addr v13, v11

    add-long/2addr v4, v13

    neg-long v11, v13

    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    const/4 v13, 0x0

    invoke-interface {v6, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v11, v13

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    cmp-long v3, v11, v9

    if-gez v3, :cond_3

    sub-long/2addr v9, v11

    add-long/2addr v4, v9

    goto :goto_1

    :cond_2
    move v13, v11

    :cond_3
    :goto_1
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;

    if-eqz v3, :cond_6

    iget-object v6, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v6, v6, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v9, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-lez v9, :cond_4

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    move v11, v13

    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_6

    iget-object v6, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-wide v9, v6, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long/2addr v7, v11

    iget-wide v11, v6, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    div-long v13, v7, v11

    long-to-int v3, v13

    rem-long/2addr v7, v11

    const-wide/16 v11, 0x3e8

    cmp-long v6, v7, v11

    if-ltz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    :cond_5
    int-to-long v6, v3

    mul-long/2addr v9, v6

    add-long/2addr v4, v9

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_3
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-nez v0, :cond_7

    return-wide v4

    :cond_7
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v0

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public getRemainingExecutionTimeLocked(ILjava/lang/String;)J
    .locals 4

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRemainingExecutionTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 4

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTimeUntilEJQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v8

    iget v8, v8, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    invoke-virtual {v0, v1, v8, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    move-result-wide v1

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v0, 0x0

    move-wide v10, v8

    move-wide v12, v10

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_6

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-wide/from16 p0, v8

    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v15, v8, v6

    move-wide/from16 v16, v6

    iget-wide v6, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    if-gez v15, :cond_1

    sub-long/2addr v8, v6

    add-long/2addr v8, v3

    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move-wide v3, v8

    goto :goto_2

    :cond_1
    cmp-long v15, v6, v16

    if-gez v15, :cond_2

    sub-long v12, v8, v16

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    move-wide/from16 v8, v16

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v0, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {v8}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v8

    :goto_1
    sub-long v8, v6, v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    add-long v10, v10, v18

    cmp-long v8, v18, v8

    if-nez v8, :cond_4

    iget-wide v8, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v8, v6

    add-long/2addr v12, v8

    :cond_4
    sub-long v3, v3, v18

    cmp-long v6, v3, p0

    if-gtz v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v8, p0

    move-wide/from16 v6, v16

    goto :goto_0

    :cond_6
    :goto_3
    add-long/2addr v10, v12

    add-long/2addr v10, v3

    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_7
    :goto_4
    return-wide v3
.end method

.method public getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v7

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/job/controllers/QuotaController;->getAllowedTimePerPeriodMsLocked(IILjava/lang/String;)J

    move-result-wide v1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-wide/from16 p1, v1

    goto :goto_0

    :cond_2
    iget-wide v8, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v10, v3, v8

    const-wide/32 v12, 0x5265c00

    sub-long/2addr v3, v12

    iget-wide v12, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long v12, v1, v12

    iget-wide v14, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    move-wide/from16 p1, v1

    iget-wide v0, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v14, v0

    cmp-long v0, v8, p1

    if-nez v0, :cond_3

    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v5, v6

    move-wide v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(JJLjava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    move-object/from16 v0, p0

    move-wide v1, v3

    move-object v5, v6

    move-wide v3, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(JJLjava/util/List;)J

    move-result-wide v6

    move-wide v1, v10

    move-wide v3, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->calculateTimeUntilQuotaConsumedLocked(JJLjava/util/List;)J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :goto_0
    iget-wide v1, v7, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_4

    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    return-wide v0

    :cond_4
    return-wide p1
.end method

.method public getTimingSessionCoalescingDurationMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    return-wide v0
.end method

.method public getTimingSessions(ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/QuotaController$TimedEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final hasTempAllowlistExemptionLocked(IIJ)Z
    .locals 4

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v2

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-nez p0, :cond_2

    cmp-long p0, p3, v2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method public incrementJobCountLocked(ILjava/lang/String;I)V
    .locals 6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    array-length v2, v2

    new-array v2, v2, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    :goto_0
    array-length v3, v2

    if-ge p2, v3, :cond_3

    aget-object v3, v2, p2

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    invoke-direct {v3}, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;-><init>()V

    aput-object v3, v2, p2

    :cond_1
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v4, v4, v0

    if-gtz v4, :cond_2

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    iput p1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    :cond_2
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    add-int/2addr v4, p3

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public invalidateAllExecutionStatsLocked()V
    .locals 3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, v1}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda2;-><init>(J)V

    invoke-virtual {p0, v2}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public invalidateAllExecutionStatsLocked(ILjava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    iput-wide p1, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final isCompatOverridedForQuotaConstantAdjustment()Z
    .locals 4

    const-string/jumbo v0, "android"

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0x1689cb07

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isQuotaFreeLocked(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0x164fba92

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUidInForeground(I)Z
    .locals 1

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .locals 4

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-ge v0, p0, :cond_1

    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z
    .locals 4

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget p0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-ge v0, p0, :cond_1

    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->hasTempAllowlistExemptionLocked(IIJ)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_5

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, v0, p0

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWithinQuotaLocked(ILjava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    iget-wide p2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUidInForeground(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/QuotaController;->isQuotaFreeLocked(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v4, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v6, v1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public maybeScheduleCleanupAlarmLocked()V
    .locals 14

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    cmp-long v2, v2, v0

    const-string v3, "JobScheduler.Quota"

    sget-boolean v4, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-lez v2, :cond_0

    if-eqz v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Not scheduling cleanup since there\'s already one at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEarliestEndTimeFunctor:Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController$EarliestEndTimeFunctor;->earliestEndElapsed:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    if-eqz v4, :cond_3

    const-string p0, "Didn\'t find a time to schedule cleanup"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-wide/32 v0, 0x5265c00

    add-long/2addr v5, v0

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    sub-long v7, v5, v0

    const-wide/32 v9, 0x927c0

    cmp-long v2, v7, v9

    if-gtz v2, :cond_2

    add-long v5, v0, v9

    :cond_2
    move-wide v9, v5

    iput-wide v9, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x3

    const-string v11, "*job.cleanup*"

    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController;->mSessionCleanupAlarmListener:Lcom/android/server/job/controllers/QuotaController$1;

    iget-object v13, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Scheduled next cleanup for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController;->mNextCleanupTimeElapsed:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    const-string/jumbo v6, "maybeScheduleStartAlarmLocked called for "

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    const-string v8, "JobScheduler.Quota"

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result v9

    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/QuotaController;->isUnderSessionCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result v10

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/job/controllers/QuotaController;->getRemainingEJExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/job/controllers/QuotaController;->getAllowedTimePerPeriodMsLocked(IILjava/lang/String;)J

    move-result-wide v13

    move v15, v9

    move/from16 v16, v10

    iget-wide v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v9, v9, v13

    if-gez v9, :cond_2

    const/4 v9, 0x1

    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    move/from16 v17, v9

    iget-wide v9, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v9, v13, v9

    if-gez v9, :cond_3

    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    move/from16 v9, v17

    goto :goto_0

    :cond_2
    const/16 v17, 0x1

    :cond_3
    const/4 v9, 0x0

    :goto_0
    const-wide/16 v13, 0x0

    if-eqz v9, :cond_6

    cmp-long v10, v11, v13

    if-lez v10, :cond_6

    sget-boolean v5, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " even though it already has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(ILjava/lang/String;I)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object v3

    iget-wide v9, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v11, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    sub-long/2addr v9, v11

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v3, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v11, v3

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    :goto_1
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms in its quota."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_6
    const-wide v18, 0x7fffffffffffffffL

    if-nez v9, :cond_8

    move-wide/from16 v20, v13

    iget-wide v13, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    if-nez v15, :cond_7

    iget v4, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v6, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ge v4, v6, :cond_7

    move v4, v9

    iget-wide v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    goto :goto_2

    :cond_7
    move v4, v9

    :goto_2
    if-nez v16, :cond_9

    iget v6, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ge v6, v9, :cond_9

    iget-wide v9, v5, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    goto :goto_3

    :cond_8
    move v4, v9

    move-wide/from16 v20, v13

    move-wide/from16 v13, v18

    :cond_9
    :goto_3
    cmp-long v6, v11, v20

    if-gtz v6, :cond_d

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJLimitMsLocked(IILjava/lang/String;)J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v9, v11

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v15

    cmp-long v6, v15, v9

    if-ltz v6, :cond_a

    sub-long/2addr v11, v9

    move-object/from16 p3, v3

    move v6, v4

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long v18, v11, v3

    goto :goto_4

    :cond_a
    move-object/from16 p3, v3

    move v6, v4

    goto :goto_4

    :cond_b
    move-object/from16 p3, v3

    move v6, v4

    move-wide/from16 v15, v20

    :goto_4
    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_d

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    iget-wide v11, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v1, v6, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr v11, v1

    add-long/2addr v15, v11

    cmp-long v6, v15, v9

    if-ltz v6, :cond_c

    sub-long/2addr v15, v9

    add-long/2addr v15, v1

    iget-wide v0, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    add-long/2addr v15, v0

    move-wide/from16 v18, v15

    goto :goto_6

    :cond_c
    add-int/lit8 v4, v4, -0x1

    move/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_5

    :cond_d
    :goto_6
    move-wide/from16 v0, v18

    goto :goto_7

    :cond_e
    if-eqz p3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_f
    if-eqz v6, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has 0 EJ quota without running anything"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_7
    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "In quota time is "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v9, v2, v0

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms old. Now="

    const-string v9, ", inQuotaTime="

    invoke-static {v4, v6, v2, v3, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x493e0

    add-long/2addr v0, v2

    :cond_10
    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    return-void

    :cond_11
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " that has no jobs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 9

    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    iget-object v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, v6, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v8

    :goto_0
    move-object v0, p0

    move-object v1, p1

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move p0, v5

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v1, p0}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    xor-int/lit8 v7, p0, 0x1

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p0

    invoke-virtual {v0, p2, v6, p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static {v0, v1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final maybeUpdateAllConstraintsLocked()V
    .locals 8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v5

    move v6, v3

    :goto_1
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v5, v7, v1, v2}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_2
    return-void
.end method

.method public final maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    iget-object v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/util/ArraySet;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget v11, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v0, v6, v7, v11}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(ILjava/lang/String;I)Z

    move-result v4

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    move v13, v1

    move v14, v10

    :goto_0
    if-ltz v13, :cond_8

    invoke-virtual {v8, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v5, v12

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x1000000

    move v15, v11

    move-wide/from16 v10, p3

    invoke-virtual {v1, v2, v10, v11, v12}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v12, v1, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    move v10, v15

    move v15, v4

    goto :goto_2

    :cond_3
    move v15, v11

    move-wide/from16 v10, p3

    const/4 v2, 0x6

    move v3, v15

    if-eq v3, v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    if-ne v3, v2, :cond_4

    iget-object v2, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_4

    move-wide/from16 v16, v10

    move v10, v3

    move-wide/from16 v2, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v11

    move v15, v4

    if-eqz v11, :cond_5

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move v10, v3

    move v15, v4

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->isWithinQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    move-wide/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/QuotaController;->setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1, v5}, Lcom/android/server/job/controllers/QuotaController;->setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v9, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_6
    xor-int/lit8 v1, v5, 0x1

    or-int/2addr v14, v1

    :cond_7
    add-int/lit8 v13, v13, -0x1

    move v11, v10

    move v4, v15

    const/4 v10, 0x0

    goto :goto_0

    :cond_8
    move v15, v4

    move v10, v11

    if-eqz v15, :cond_a

    if-eqz v14, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-static/range {p1 .. p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    return-object v9

    :cond_a
    :goto_3
    invoke-virtual {v0, v6, v7, v10}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleStartAlarmLocked(ILjava/lang/String;I)V

    :cond_b
    :goto_4
    return-object v9
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p0, "JobScheduler.Quota"

    const-string/jumbo p1, "Told app removed but given null package name."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/job/controllers/QuotaController;->clearAppStatsLocked(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTempAllowlistGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseLongArray;->delete(I)V

    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppGraceCache:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    :cond_1
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 5

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/job/controllers/QuotaController;->mTimerChargingUpdateFunctor:Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;

    iput-wide v0, v4, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    iput-boolean v3, v4, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "handleNewChargingStateLocked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler.Quota"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/QuotaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/controllers/QuotaController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onSystemServicesReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserAddedLocked(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->cacheInstallerPackagesLocked(I)V

    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmsForUserId(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mExecutionStatsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mSystemInstallers:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    return-void
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10

    const-string v0, "JobScheduler.Quota"

    sget-boolean v1, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Prepping for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v3, 0x164fba92

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTopAppCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is top started job"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    :goto_0
    iget v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    const/4 v9, 0x1

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v4

    xor-int/lit8 v8, v4, 0x1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/job/controllers/QuotaController$Timer;-><init>(Lcom/android/server/job/controllers/QuotaController;IILjava/lang/String;Z)V

    invoke-virtual {v2, v6, v7, v3}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    const-string/jumbo v2, "Timer ignoring "

    if-eqz p0, :cond_6

    if-eqz v1, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because it\'s user-initiated"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object p0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isTopStartedJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because isTop"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Starting to track "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->shouldTrackLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    add-int/2addr v0, v9

    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    iget-boolean v0, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRegularJobTimer:Z

    if-eqz v0, :cond_9

    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    iget v2, v1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v9}, Lcom/android/server/job/controllers/QuotaController;->incrementJobCountLocked(ILjava/lang/String;I)V

    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    iget v2, v1, Landroid/content/pm/UserPackage;->userId:I

    iget-object v1, v1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, p1, v1, v4}, Lcom/android/server/job/controllers/QuotaController;->getExecutionStatsLocked(IILjava/lang/String;Z)Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->isUnderJobCountQuotaLocked(Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mRunningBgJobs:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ne p1, v9, :cond_c

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    const-wide/16 v1, 0x0

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    if-eqz v0, :cond_a

    iget-object p1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    iget v0, p1, Landroid/content/pm/UserPackage;->userId:I

    iget-object p1, p1, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    :cond_a
    invoke-virtual {v3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    return-void

    :cond_b
    const-wide/32 p0, 0x80000

    invoke-static {p0, p1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "QC/- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {p0, p1, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    return-void
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 46

    move-object/from16 v1, p2

    const-string/jumbo v3, "qc_allowed_time_per_period_working_ms"

    const-string/jumbo v4, "qc_allowed_time_per_period_addition_installer_ms"

    const-string/jumbo v5, "qc_window_size_rare_ms"

    const-string/jumbo v6, "qc_max_session_count_per_rate_limiting_window"

    const-string/jumbo v7, "qc_rate_limiting_window_ms"

    const-string/jumbo v8, "qc_allowed_time_per_period_frequent_ms"

    const-string/jumbo v9, "qc_window_size_restricted_ms"

    const-string/jumbo v11, "qc_ej_limit_addition_special_ms"

    const-string/jumbo v12, "qc_ej_limit_frequent_ms"

    const-string/jumbo v13, "qc_allowed_time_per_period_restricted_ms"

    const-string/jumbo v14, "qc_window_size_frequent_ms"

    const-string/jumbo v15, "qc_allowed_time_per_period_active_ms"

    const-string/jumbo v2, "qc_ej_limit_active_ms"

    const/16 v17, 0x2

    const/16 v18, 0x5

    const/16 v19, 0x6

    move-object/from16 v10, p0

    iget-object v10, v10, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v21

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    const-string v14, "JobScheduler.Quota"

    const-string v15, " vs "

    move-object/from16 p0, v14

    const-string v14, "EJ top app time chunk less than reward: "

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketJobCounts:[I

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxBucketSessionCounts:[I

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    const-string/jumbo v14, "jobscheduler"

    move-object/from16 v28, v14

    const/16 v29, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v30

    sparse-switch v30, :sswitch_data_0

    :goto_0
    move-object/from16 v14, v22

    :goto_1
    move-object/from16 v15, v23

    goto/16 :goto_3

    :sswitch_0
    const-string/jumbo v14, "qc_max_session_count_frequent"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    goto :goto_0

    :cond_0
    const/16 v14, 0x2c

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v14, "qc_max_session_count_rare"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    const/16 v14, 0x2b

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v14, "qc_max_session_count_restricted"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_0

    :cond_2
    const/16 v14, 0x2a

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v14, "qc_ej_window_size_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    const/16 v14, 0x29

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v14, "qc_timing_session_coalescing_duration_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_0

    :cond_4
    const/16 v14, 0x28

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v14, "qc_window_size_active_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_0

    :cond_5
    const/16 v14, 0x27

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v14, "qc_max_job_count_working"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_0

    :cond_6
    const/16 v14, 0x26

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v14, "qc_ej_reward_top_app_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    goto :goto_0

    :cond_7
    const/16 v14, 0x25

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v14, "qc_ej_limit_working_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    goto :goto_0

    :cond_8
    const/16 v14, 0x24

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v14, "qc_allowed_time_per_period_exempted_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v14, 0x23

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v14, "qc_max_session_count_working"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v14, 0x22

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v14, "qc_max_session_count_exempted"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v14, 0x21

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v14, "qc_in_quota_buffer_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v14, 0x20

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v14, "qc_min_quota_check_delay_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v14, 0x1f

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v14, "qc_ej_grace_period_temp_allowlist_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v14, 0x1e

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v14, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v14, 0x1d

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v14, "qc_max_session_count_active"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v14, 0x1c

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v14, "qc_window_size_working_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v14, 0x1b

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v14, "qc_ej_grace_period_top_app_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v14, 0x1a

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v14, "qc_max_execution_time_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v14, 0x19

    goto/16 :goto_2

    :sswitch_14
    const-string/jumbo v14, "qc_ej_limit_addition_installer_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v14, 0x18

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v14, "qc_ej_limit_rare_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v14, 0x17

    goto/16 :goto_2

    :sswitch_16
    const-string/jumbo v14, "qc_ej_limit_restricted_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v14, 0x16

    goto/16 :goto_2

    :sswitch_17
    const-string/jumbo v14, "qc_max_job_count_per_rate_limiting_window"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v14, 0x15

    goto/16 :goto_2

    :sswitch_18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    goto/16 :goto_0

    :cond_18
    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/16 v29, 0x14

    goto/16 :goto_3

    :sswitch_19
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v14, 0x13

    goto/16 :goto_2

    :sswitch_1a
    const-string/jumbo v14, "qc_max_job_count_frequent"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v14, 0x12

    goto/16 :goto_2

    :sswitch_1b
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v14, 0x11

    goto/16 :goto_2

    :sswitch_1c
    const-string/jumbo v14, "qc_max_job_count_restricted"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v14, 0x10

    goto/16 :goto_2

    :sswitch_1d
    const-string/jumbo v14, "qc_max_job_count_exempted"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v14, 0xf

    goto/16 :goto_2

    :sswitch_1e
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v14, 0xe

    goto/16 :goto_2

    :sswitch_1f
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v14, 0xd

    goto/16 :goto_2

    :sswitch_20
    const-string/jumbo v14, "qc_ej_reward_interaction_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v14, 0xc

    goto/16 :goto_2

    :sswitch_21
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v14, 0xb

    goto :goto_2

    :sswitch_22
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_22

    goto/16 :goto_0

    :cond_22
    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/16 v29, 0xa

    goto/16 :goto_3

    :sswitch_23
    const-string/jumbo v14, "qc_max_job_count_rare"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v14, 0x9

    goto :goto_2

    :sswitch_24
    const-string/jumbo v14, "qc_ej_top_app_time_chunk_size_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_24

    goto/16 :goto_0

    :cond_24
    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/16 v29, 0x8

    goto/16 :goto_3

    :sswitch_25
    const-string/jumbo v14, "qc_max_job_count_active"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    goto/16 :goto_0

    :cond_25
    const/4 v14, 0x7

    goto :goto_2

    :sswitch_26
    const-string/jumbo v14, "qc_ej_reward_notification_seen_ms"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_26

    goto/16 :goto_0

    :cond_26
    move/from16 v29, v19

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_27

    goto/16 :goto_0

    :cond_27
    move/from16 v29, v18

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_28

    goto/16 :goto_0

    :cond_28
    const/4 v14, 0x4

    :goto_2
    move/from16 v29, v14

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_29

    goto/16 :goto_0

    :cond_29
    move-object/from16 v14, v22

    move-object/from16 v15, v23

    const/16 v29, 0x3

    goto :goto_3

    :sswitch_2a
    move-object/from16 v14, v22

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2a

    goto/16 :goto_1

    :cond_2a
    move/from16 v29, v17

    goto/16 :goto_1

    :sswitch_2b
    move-object/from16 v14, v22

    move-object/from16 v15, v23

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2b

    goto :goto_3

    :cond_2b
    const/16 v29, 0x1

    goto :goto_3

    :sswitch_2c
    move-object/from16 v14, v22

    move-object/from16 v15, v23

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2c

    goto :goto_3

    :cond_2c
    const/16 v29, 0x0

    :goto_3
    packed-switch v29, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    move-object/from16 v2, p1

    const/16 v0, 0x8

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_FREQUENT:I

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v27, v17

    if-eq v1, v0, :cond_51

    aput v0, v27, v17

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_1
    move-object/from16 v2, p1

    const/4 v0, 0x3

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RARE:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v2, v27, v0

    if-eq v2, v1, :cond_51

    aput v1, v27, v0

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_2
    move-object/from16 v2, p1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_RESTRICTED:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v27, v18

    if-eq v1, v0, :cond_51

    aput v0, v27, v18

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_3
    move-object/from16 v2, p1

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->TIMING_SESSION_COALESCING_DURATION_MS:J

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_51

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_4
    move-object/from16 v2, p1

    const/4 v3, 0x1

    const/16 v0, 0x78

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_WORKING:I

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v25, v3

    if-eq v1, v0, :cond_51

    aput v0, v25, v3

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_5
    move-object/from16 v2, p1

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_TOP_APP_MS:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_51

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v26

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_6
    move-object/from16 v2, p1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_WORKING:I

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v27, v3

    if-eq v1, v0, :cond_51

    aput v0, v27, v3

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_7
    move-object/from16 v2, p1

    const/16 v0, 0x4b

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_EXEMPTED:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v27, v19

    if-eq v1, v0, :cond_51

    aput v0, v27, v19

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_8
    move-object/from16 v2, p1

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MIN_QUOTA_CHECK_DELAY_MS:J

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mInQuotaAlarmQueue:Lcom/android/server/job/controllers/QuotaController$InQuotaAlarmQueue;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/utils/AlarmQueue;->setMinTimeBetweenAlarmsMs(J)V

    return-void

    :pswitch_9
    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v2, v1, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TEMP_ALLOWLIST_MS:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTempAllowlistMs:J

    return-void

    :pswitch_a
    move-object/from16 v2, p1

    const/16 v0, 0x4b

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_ACTIVE:I

    const/4 v3, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v20, 0x0

    aget v1, v27, v20

    if-eq v1, v0, :cond_51

    aput v0, v27, v20

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_b
    move-object/from16 v2, p1

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_GRACE_PERIOD_TOP_APP_MS:J

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJGracePeriodTopAppMs:J

    return-void

    :pswitch_c
    move-object/from16 v2, p1

    const/16 v0, 0xc8

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_FREQUENT:I

    const/16 v3, 0xa

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v25, v17

    if-eq v1, v0, :cond_51

    aput v0, v25, v17

    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_d
    move-object/from16 v2, p1

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RESTRICTED:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v25, v18

    if-eq v1, v0, :cond_51

    aput v0, v25, v18

    iput-boolean v4, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_e
    move-object/from16 v2, p1

    const/16 v0, 0x4b

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_EXEMPTED:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v1, v25, v19

    if-eq v1, v0, :cond_51

    aput v0, v25, v19

    iput-boolean v4, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_f
    const/4 v4, 0x1

    iget-boolean v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    if-eqz v1, :cond_2d

    goto/16 :goto_f

    :cond_2d
    iput-boolean v4, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mRateLimitingConstantsUpdated:Z

    const-string/jumbo v1, "qc_max_job_count_per_rate_limiting_window"

    filled-new-array {v7, v1, v6}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v28

    invoke-static {v11, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v7, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const/16 v3, 0x14

    invoke-virtual {v2, v1, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-virtual {v2, v6, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    iget-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->RATE_LIMITING_WINDOW_MS:J

    const-wide/16 v3, 0x7530

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2e

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mRateLimitingWindowMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_4

    :cond_2e
    const/4 v3, 0x1

    :goto_4
    iget v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_PER_RATE_LIMITING_WINDOW:I

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    if-eq v4, v1, :cond_2f

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxJobCountPerRateLimitingWindow:I

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_2f
    iget v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_SESSION_COUNT_PER_RATE_LIMITING_WINDOW:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    if-eq v2, v1, :cond_51

    iput v1, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxSessionCountPerRateLimitingWindow:I

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_10
    move-object/from16 v2, p1

    if-nez v21, :cond_30

    const-wide/16 v3, 0x1388

    goto :goto_5

    :cond_30
    const-wide/16 v3, 0x3a98

    :goto_5
    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_INTERACTION_MS:J

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0xdbba0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardInteractionMs:J

    return-void

    :pswitch_11
    move-object/from16 v2, p1

    const/16 v0, 0x30

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_RARE:I

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v16, 0x3

    aget v1, v25, v16

    if-eq v1, v0, :cond_51

    aput v0, v25, v16

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_12
    move-object/from16 v5, p0

    move-object/from16 v2, p1

    move-object/from16 v4, v24

    move-object/from16 v3, v26

    if-nez v21, :cond_31

    const-wide/32 v14, 0x493e0

    goto :goto_6

    :cond_31
    const-wide/16 v14, 0x7530

    :goto_6
    invoke-virtual {v2, v1, v14, v15}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_TOP_APP_TIME_CHUNK_SIZE_MS:J

    const-wide/16 v6, 0x1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v6, 0xdbba0

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    cmp-long v6, v6, v1

    if-eqz v6, :cond_51

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_13
    move-object/from16 v2, p1

    const/16 v0, 0x4b

    invoke-virtual {v2, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_JOB_COUNT_ACTIVE:I

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v20, 0x0

    aget v1, v25, v20

    if-eq v1, v0, :cond_51

    aput v0, v25, v20

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_14
    move-object/from16 v2, p1

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_REWARD_NOTIFICATION_SEEN_MS:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x493e0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJRewardNotificationSeenMs:J

    return-void

    :pswitch_15
    move-object/from16 v11, v28

    iget-boolean v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    if-eqz v1, :cond_32

    goto/16 :goto_f

    :cond_32
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mExecutionPeriodConstantsUpdated:Z

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v1

    const-string/jumbo v42, "qc_window_size_working_ms"

    const-string/jumbo v43, "qc_window_size_frequent_ms"

    const-string/jumbo v31, "qc_allowed_time_per_period_exempted_ms"

    const-string/jumbo v32, "qc_allowed_time_per_period_active_ms"

    const-string/jumbo v33, "qc_allowed_time_per_period_working_ms"

    const-string/jumbo v34, "qc_allowed_time_per_period_frequent_ms"

    const-string/jumbo v35, "qc_allowed_time_per_period_rare_ms"

    const-string/jumbo v36, "qc_allowed_time_per_period_restricted_ms"

    const-string/jumbo v37, "qc_allowed_time_per_period_addition_installer_ms"

    const-string/jumbo v38, "qc_in_quota_buffer_ms"

    const-string/jumbo v39, "qc_max_execution_time_ms"

    const-string/jumbo v40, "qc_window_size_exempted_ms"

    const-string/jumbo v41, "qc_window_size_active_ms"

    const-string/jumbo v44, "qc_window_size_rare_ms"

    const-string/jumbo v45, "qc_window_size_restricted_ms"

    filled-new-array/range {v31 .. v45}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    const-string/jumbo v6, "qc_allowed_time_per_period_exempted_ms"

    const-wide/32 v11, 0x124f80

    invoke-virtual {v2, v6, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    invoke-virtual {v2, v15, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    const-wide/32 v6, 0x927c0

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    invoke-virtual {v2, v8, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    const-string/jumbo v3, "qc_allowed_time_per_period_rare_ms"

    invoke-virtual {v2, v3, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    invoke-virtual {v2, v13, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    const-wide/32 v6, 0x124f80

    invoke-virtual {v2, v4, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ADDITION_INSTALLER_MS:J

    const-string/jumbo v3, "qc_in_quota_buffer_ms"

    const-wide/16 v11, 0x7530

    invoke-virtual {v2, v3, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-string/jumbo v3, "qc_max_execution_time_ms"

    const-wide/32 v11, 0xdbba00

    invoke-virtual {v2, v3, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    if-nez v1, :cond_33

    const-wide/32 v3, 0x249f00

    goto :goto_7

    :cond_33
    if-nez v1, :cond_34

    move-wide v3, v6

    goto :goto_7

    :cond_34
    const-wide/32 v3, 0x927c0

    :goto_7
    const-string/jumbo v6, "qc_window_size_exempted_ms"

    invoke-virtual {v2, v6, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    if-nez v1, :cond_35

    const-wide/32 v3, 0x36ee80

    goto :goto_8

    :cond_35
    if-nez v1, :cond_36

    const-wide/32 v3, 0x1b7740

    goto :goto_8

    :cond_36
    const-wide/32 v3, 0x927c0

    :goto_8
    const-string/jumbo v6, "qc_window_size_active_ms"

    invoke-virtual {v2, v6, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    if-nez v1, :cond_37

    goto :goto_9

    :cond_37
    const-wide/32 v11, 0x6ddd00

    :goto_9
    const-string/jumbo v3, "qc_window_size_working_ms"

    invoke-virtual {v2, v3, v11, v12}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    if-nez v1, :cond_38

    const-wide/32 v3, 0x2932e00

    goto :goto_a

    :cond_38
    const-wide/32 v3, 0x1b77400

    :goto_a
    invoke-virtual {v2, v14, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v2, v5, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    invoke-virtual {v2, v9, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    iget-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->MAX_EXECUTION_TIME_MS:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_39

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_39
    iget-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_EXEMPTED_MS:J

    const-wide/32 v5, 0xea60

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePerPeriodMs:[J

    aget-wide v6, v5, v19

    cmp-long v6, v6, v1

    if-eqz v6, :cond_3a

    aput-wide v1, v5, v19

    const/4 v6, 0x1

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3a
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ACTIVE_MS:J

    const-wide/32 v11, 0xea60

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/16 v20, 0x0

    aget-wide v8, v5, v20

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3b

    aput-wide v6, v5, v20

    const/4 v6, 0x1

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_b

    :cond_3b
    const/4 v6, 0x1

    :goto_b
    iget-wide v7, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_WORKING_MS:J

    const-wide/32 v13, 0xea60

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    aget-wide v11, v5, v6

    cmp-long v9, v11, v7

    if-eqz v9, :cond_3c

    aput-wide v7, v5, v6

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3c
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_FREQUENT_MS:J

    const-wide/32 v13, 0xea60

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    aget-wide v8, v5, v17

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3d

    aput-wide v6, v5, v17

    const/4 v6, 0x1

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3d
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RARE_MS:J

    const-wide/32 v13, 0xea60

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const/16 v16, 0x3

    aget-wide v8, v5, v16

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3e

    aput-wide v6, v5, v16

    const/4 v6, 0x1

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3e
    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    iget-wide v8, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_RESTRICTED_MS:J

    const-wide/32 v13, 0xea60

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    aget-wide v8, v5, v18

    cmp-long v8, v8, v6

    if-eqz v8, :cond_3f

    aput-wide v6, v5, v18

    const/4 v6, 0x1

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_3f
    iget-wide v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->IN_QUOTA_BUFFER_MS:J

    const-wide/32 v8, 0x493e0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_40

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeMs:J

    sub-long/2addr v6, v3

    iput-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_40
    aget-wide v3, v5, v19

    iget-wide v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_EXEMPTED_MS:J

    const-wide/32 v8, 0x5265c00

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v6, v0, Lcom/android/server/job/controllers/QuotaController;->mBucketPeriodsMs:[J

    aget-wide v7, v6, v19

    cmp-long v7, v7, v3

    if-eqz v7, :cond_41

    aput-wide v3, v6, v19

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_41
    const/16 v20, 0x0

    aget-wide v3, v5, v20

    iget-wide v7, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_ACTIVE_MS:J

    const-wide/32 v11, 0x5265c00

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aget-wide v7, v6, v20

    cmp-long v7, v7, v3

    if-eqz v7, :cond_42

    aput-wide v3, v6, v20

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_c

    :cond_42
    const/4 v3, 0x1

    :goto_c
    aget-wide v7, v5, v3

    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_WORKING_MS:J

    const-wide/32 v13, 0x5265c00

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    aget-wide v11, v6, v3

    cmp-long v4, v11, v7

    if-eqz v4, :cond_43

    aput-wide v7, v6, v3

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_43
    aget-wide v3, v5, v17

    iget-wide v7, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_FREQUENT_MS:J

    const-wide/32 v13, 0x5265c00

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aget-wide v7, v6, v17

    cmp-long v7, v7, v3

    if-eqz v7, :cond_44

    aput-wide v3, v6, v17

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_44
    const/16 v16, 0x3

    aget-wide v3, v5, v16

    iget-wide v7, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RARE_MS:J

    const-wide/32 v13, 0x5265c00

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aget-wide v7, v6, v16

    cmp-long v7, v7, v3

    if-eqz v7, :cond_45

    aput-wide v3, v6, v16

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_45
    aget-wide v3, v5, v18

    const-wide/32 v7, 0x240c8400

    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->WINDOW_SIZE_RESTRICTED_MS:J

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    aget-wide v7, v6, v18

    cmp-long v5, v7, v3

    if-eqz v5, :cond_46

    aput-wide v3, v6, v18

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_46
    aget-wide v3, v6, v19

    sub-long/2addr v3, v1

    iget-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->ALLOWED_TIME_PER_PERIOD_ADDITION_INSTALLER_MS:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_51

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mAllowedTimePeriodAdditionaInstallerMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    return-void

    :pswitch_16
    move-object/from16 v1, v28

    const/4 v3, 0x1

    iget-boolean v4, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    if-eqz v4, :cond_47

    goto/16 :goto_f

    :cond_47
    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mEJLimitConstantsUpdated:Z

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v3

    const-string/jumbo v36, "qc_ej_limit_restricted_ms"

    const-string/jumbo v37, "qc_ej_limit_addition_special_ms"

    const-string/jumbo v31, "qc_ej_limit_exempted_ms"

    const-string/jumbo v32, "qc_ej_limit_active_ms"

    const-string/jumbo v33, "qc_ej_limit_working_ms"

    const-string/jumbo v34, "qc_ej_limit_frequent_ms"

    const-string/jumbo v35, "qc_ej_limit_rare_ms"

    const-string/jumbo v38, "qc_ej_limit_addition_installer_ms"

    const-string/jumbo v39, "qc_ej_window_size_ms"

    filled-new-array/range {v31 .. v39}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v1

    const-string/jumbo v4, "qc_ej_limit_exempted_ms"

    const-wide/32 v5, 0x36ee80

    invoke-virtual {v1, v4, v5, v6}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    if-nez v3, :cond_48

    const-wide/32 v2, 0xdbba0

    goto :goto_d

    :cond_48
    const-wide/32 v2, 0x1b7740

    :goto_d
    const-string/jumbo v4, "qc_ej_limit_working_ms"

    invoke-virtual {v1, v4, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    const-wide/32 v6, 0x927c0

    invoke-virtual {v1, v12, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    const-string/jumbo v2, "qc_ej_limit_rare_ms"

    invoke-virtual {v1, v2, v6, v7}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    const-string/jumbo v2, "qc_ej_limit_restricted_ms"

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    const-string/jumbo v2, "qc_ej_limit_addition_installer_ms"

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v2, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    const-wide/32 v3, 0xdbba0

    invoke-virtual {v1, v11, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    const-string/jumbo v2, "qc_ej_window_size_ms"

    const-wide/32 v13, 0x5265c00

    invoke-virtual {v1, v2, v13, v14}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_WINDOW_SIZE_MS:J

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_49

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitWindowSizeMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_49
    iget-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_EXEMPTED_MS:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/32 v6, 0xdbba0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEJLimitsMs:[J

    aget-wide v6, v5, v19

    cmp-long v6, v6, v3

    if-eqz v6, :cond_4a

    aput-wide v3, v5, v19

    const/4 v6, 0x1

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    goto :goto_e

    :cond_4a
    const/4 v6, 0x1

    :goto_e
    iget-wide v7, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ACTIVE_MS:J

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/32 v7, 0xdbba0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/16 v20, 0x0

    aget-wide v11, v5, v20

    cmp-long v9, v11, v3

    if-eqz v9, :cond_4b

    aput-wide v3, v5, v20

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4b
    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_WORKING_MS:J

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    aget-wide v11, v5, v6

    cmp-long v9, v11, v7

    if-eqz v9, :cond_4c

    aput-wide v7, v5, v6

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4c
    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_FREQUENT_MS:J

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const-wide/32 v11, 0x927c0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    aget-wide v13, v5, v17

    cmp-long v9, v13, v7

    if-eqz v9, :cond_4d

    aput-wide v7, v5, v17

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4d
    iget-wide v13, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RARE_MS:J

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const/16 v16, 0x3

    aget-wide v11, v5, v16

    cmp-long v9, v11, v7

    if-eqz v9, :cond_4e

    aput-wide v7, v5, v16

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4e
    iget-wide v11, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_RESTRICTED_MS:J

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    const-wide/32 v11, 0x493e0

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    aget-wide v11, v5, v18

    cmp-long v9, v11, v7

    if-eqz v9, :cond_4f

    aput-wide v7, v5, v18

    iput-boolean v6, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_4f
    sub-long/2addr v1, v3

    iget-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_INSTALLER_MS:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_50

    iput-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionInstallerMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_50
    iget-wide v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->EJ_LIMIT_ADDITION_SPECIAL_MS:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_51

    iput-wide v1, v0, Lcom/android/server/job/controllers/QuotaController;->mEjLimitAdditionSpecialMs:J

    const/4 v3, 0x1

    iput-boolean v3, v10, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    :cond_51
    :goto_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74649652 -> :sswitch_2c
        -0x66826d2f -> :sswitch_2b
        -0x64595545 -> :sswitch_2a
        -0x5a58eba4 -> :sswitch_29
        -0x59dc2eda -> :sswitch_28
        -0x5925a282 -> :sswitch_27
        -0x559f9f27 -> :sswitch_26
        -0x54322d00 -> :sswitch_25
        -0x53fcd7ab -> :sswitch_24
        -0x4d93a8e4 -> :sswitch_23
        -0x4ab902f2 -> :sswitch_22
        -0x3bdfc277 -> :sswitch_21
        -0x3877c08a -> :sswitch_20
        -0x38722911 -> :sswitch_1f
        -0x36564f14 -> :sswitch_1e
        -0x335625c8 -> :sswitch_1d
        -0x2c5330ab -> :sswitch_1c
        -0x1c3a6d99 -> :sswitch_1b
        -0x89fefb8 -> :sswitch_1a
        0x196f072 -> :sswitch_19
        0xc171262 -> :sswitch_18
        0x131036e5 -> :sswitch_17
        0x151434b9 -> :sswitch_16
        0x1514a652 -> :sswitch_15
        0x1ec063cf -> :sswitch_14
        0x20593da9 -> :sswitch_13
        0x2751f3d8 -> :sswitch_12
        0x3c5536f0 -> :sswitch_11
        0x3fca90c7 -> :sswitch_10
        0x46a4bc35 -> :sswitch_f
        0x48395f9f -> :sswitch_e
        0x4978a53a -> :sswitch_d
        0x5461fd31 -> :sswitch_c
        0x546e423f -> :sswitch_b
        0x59af5190 -> :sswitch_a
        0x5a02ed99 -> :sswitch_9
        0x5db41725 -> :sswitch_8
        0x6788a0b1 -> :sswitch_7
        0x6e145677 -> :sswitch_6
        0x71c1a483 -> :sswitch_5
        0x728b0d07 -> :sswitch_4
        0x7685d342 -> :sswitch_3
        0x7bf7519c -> :sswitch_2
        0x7c3bdaa3 -> :sswitch_1
        0x7f24784f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_15
        :pswitch_15
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_15
        :pswitch_c
        :pswitch_15
        :pswitch_15
        :pswitch_f
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_b
        :pswitch_15
        :pswitch_a
        :pswitch_15
        :pswitch_9
        :pswitch_8
        :pswitch_15
        :pswitch_7
        :pswitch_6
        :pswitch_15
        :pswitch_16
        :pswitch_5
        :pswitch_4
        :pswitch_15
        :pswitch_3
        :pswitch_16
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;Z)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/controllers/QuotaController;->saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V

    return-void
.end method

.method public final saveTimingSession(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$TimingSession;ZJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mEJTimingSessions:Landroid/util/SparseArrayMap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    :goto_0
    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, p2, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p4, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object p0

    iget-wide p1, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide p3, p3, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    sub-long/2addr p1, p3

    add-long/2addr p1, p5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/QuotaController;->invalidateAllExecutionStatsLocked(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setConstraintSatisfied(Lcom/android/server/job/controllers/JobStatus;JZZ)Z
    .locals 7

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move p4, p5

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p5, :cond_3

    if-eqz p4, :cond_2

    goto :goto_0

    :cond_2
    move p4, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p4, v1

    :goto_1
    if-nez p4, :cond_4

    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_4

    iput-wide p2, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    :cond_4
    const/high16 p0, 0x1000000

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result p0

    if-eqz p0, :cond_5

    iput-boolean p4, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyWithinQuota:Z

    return v1

    :cond_5
    return v2
.end method

.method public final setExpeditedQuotaApproved(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 4

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iput-boolean p2, p1, Lcom/android/server/job/controllers/JobStatus;->mExpeditedQuotaApproved:Z

    const/high16 v3, 0x2000000

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v0

    :goto_2
    iput-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->mReadyNotDozing:Z

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    const/16 v1, 0xa

    iput v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    goto :goto_3

    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    iput v1, p1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mBackgroundJobsController:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/BackgroundJobsController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    if-eqz p2, :cond_6

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_6
    return v0
.end method

.method public final transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z
    .locals 4

    iget-wide v0, p5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    neg-long p6, p6

    invoke-virtual {p5, p6, p7}, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->transactLocked(J)J

    move-result-wide p6

    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "debits overflowed by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Quota"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v2, p5, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mDebitTally:J

    cmp-long p5, v0, v2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p5, v0

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    add-long/2addr p1, p6

    iget-wide p5, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mStartTimeElapsed:J

    sub-long/2addr p5, p3

    invoke-static {p1, p2, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/job/controllers/QuotaController$Timer;->mDebitAdjustment:J

    return v0

    :cond_2
    return p5
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0x164fba92

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mTopStartedJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Lcom/android/server/job/controllers/QuotaController$ExecutionStats;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    const/4 v6, 0x0

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    const-wide v8, 0x7fffffffffffffffL

    if-eqz v7, :cond_1

    iget v7, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_1

    :cond_1
    :goto_0
    iput-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :goto_1
    iget-wide v10, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->allowedTimePerPeriodMs:J

    iget-wide v12, v0, Lcom/android/server/job/controllers/QuotaController;->mQuotaBufferMs:J

    sub-long/2addr v10, v12

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/QuotaController$Timer;

    sget-object v12, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/32 v14, 0x5265c00

    add-long v4, v12, v14

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v7, v12, v13}, Lcom/android/server/job/controllers/QuotaController$Timer;->getCurrentDuration(J)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-object v4, v7, Lcom/android/server/job/controllers/QuotaController$Timer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v5, v7, Lcom/android/server/job/controllers/QuotaController$Timer;->mBgJobCount:I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iput v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v4, v4, v10

    if-ltz v4, :cond_2

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    sub-long v16, v12, v10

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long v6, v16, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_2
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v6, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    sub-long v4, v12, v6

    add-long/2addr v4, v14

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_3
    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v5, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v4, v5, :cond_4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v12

    iget-wide v6, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    iget-object v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_9

    :cond_5
    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    sub-long v4, v12, v4

    sub-long v6, v12, v14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v16, 0x0

    move-wide/from16 v25, v14

    move-object/from16 v14, v16

    move-wide/from16 v16, v25

    const/16 v18, 0x0

    :goto_3
    if-ltz v2, :cond_f

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;

    move-object/from16 p1, v1

    move/from16 p2, v2

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v1, v4, v1

    if-gez v1, :cond_b

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v19, v4, v1

    if-gez v19, :cond_6

    move-wide/from16 v19, v1

    sub-long v1, v19, v4

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_4

    :cond_6
    move-wide/from16 v19, v4

    const-wide/16 v8, 0x0

    :goto_4
    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v21, v1

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v1, v1, v19

    add-long v1, v1, v21

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    move-wide/from16 v21, v1

    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    cmp-long v1, v21, v10

    if-ltz v1, :cond_7

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    add-long v19, v19, v21

    sub-long v19, v19, v10

    move-wide/from16 v21, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long v4, v19, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_5

    :cond_7
    move-wide/from16 v21, v4

    :goto_5
    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-lt v1, v2, :cond_8

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v1, v4

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_8
    if-eqz v14, :cond_9

    iget-wide v1, v14, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long/2addr v1, v4

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mTimingSessionCoalescingDurationMs:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v18, 0x1

    iget v2, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-lt v1, v2, :cond_a

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    move v14, v1

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    add-long/2addr v4, v1

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_6

    :cond_a
    move v14, v1

    :goto_6
    move/from16 v18, v14

    goto :goto_7

    :cond_b
    move-wide/from16 v21, v4

    :goto_7
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    cmp-long v4, v6, v1

    if-gez v4, :cond_d

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    move-wide/from16 v19, v1

    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    sub-long v1, v1, v19

    add-long/2addr v1, v4

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v2, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v1, v2

    iput v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    sub-long v1, v19, v6

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v8, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v14, v4, v8

    move-wide/from16 v19, v1

    if-ltz v14, :cond_c

    iget-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    move-wide/from16 v23, v4

    iget-wide v4, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->startTimeElapsed:J

    add-long v4, v4, v23

    sub-long/2addr v4, v8

    add-long v4, v4, v16

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_c
    move-wide/from16 v8, v19

    goto :goto_8

    :cond_d
    iget-wide v1, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->endTimeElapsed:J

    cmp-long v4, v6, v1

    if-gez v4, :cond_f

    iget-wide v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    sub-long/2addr v1, v6

    add-long/2addr v1, v4

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v5, v15, Lcom/android/server/job/controllers/QuotaController$TimingSession;->bgJobCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget-wide v4, v0, Lcom/android/server/job/controllers/QuotaController;->mMaxExecutionTimeIntoQuotaMs:J

    cmp-long v8, v1, v4

    if-ltz v8, :cond_e

    iget-wide v8, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    add-long/2addr v1, v6

    sub-long/2addr v1, v4

    add-long v1, v1, v16

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_e
    const-wide/16 v8, 0x0

    :goto_8
    add-int/lit8 v2, p2, -0x1

    move-object/from16 v1, p1

    move-object v14, v15

    move-wide/from16 v4, v21

    goto/16 :goto_3

    :cond_f
    move/from16 v0, v18

    add-long/2addr v12, v8

    iput-wide v12, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    iput v0, v3, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    :cond_10
    :goto_9
    return-void
.end method

.method public updateStandbyBucket(ILjava/lang/String;I)V
    .locals 9

    sget-boolean v0, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.Quota"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Moving pkg "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/job/controllers/StateController;->packageToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to bucketIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mEJStats:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    if-eqz v2, :cond_1

    iput p3, v2, Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;->mStandbyBucket:I

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController;->mTrackedJobs:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x5

    if-ltz v3, :cond_8

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    if-eq p3, v6, :cond_3

    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v8, v6, :cond_4

    :cond_3
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-eq p3, v8, :cond_4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_4
    :goto_1
    if-ne p3, v6, :cond_5

    const v6, 0x10000007

    invoke-virtual {v7, v6}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    goto :goto_3

    :cond_5
    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v8, v6, :cond_7

    iget v6, v7, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    const v8, -0x10000008

    and-int/2addr v6, v8

    iput v6, v7, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    if-eqz v6, :cond_6

    iget v8, v7, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    and-int/2addr v8, v6

    if-ne v6, v8, :cond_6

    move v6, v4

    goto :goto_2

    :cond_6
    move v6, v5

    :goto_2
    iput-boolean v6, v7, Lcom/android/server/job/controllers/JobStatus;->mReadyDynamicSatisfied:Z

    :cond_7
    :goto_3
    iput p3, v7, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    iput-boolean v5, v7, Lcom/android/server/job/controllers/JobStatus;->mLoggedBucketMismatch:Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_8
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    :cond_9
    iget-object p3, p0, Lcom/android/server/job/controllers/QuotaController;->mEJPkgTimers:Landroid/util/SparseArrayMap;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/QuotaController$Timer;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->isActive()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->cancelCutoff()V

    invoke-virtual {p3}, Lcom/android/server/job/controllers/QuotaController$Timer;->scheduleCutoff()V

    :cond_a
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_f

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_b

    const-string p0, "JobScheduler"

    const-string/jumbo p1, "onRestrictedBucketChanged called with no jobs"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :goto_4
    if-ge v5, p1, :cond_e

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_5
    if-ltz v1, :cond_d

    iget v2, p3, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v2, v6, :cond_c

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/RestrictingController;->startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/RestrictingController;

    invoke-virtual {v2, p3}, Lcom/android/server/job/controllers/RestrictingController;->stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V

    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_7
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_f
    return-void

    :cond_10
    :goto_8
    :try_start_3
    monitor-exit v1

    return-void

    :goto_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
