.class public final Lcom/android/server/job/JobServiceContext;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final NOTIFICATION_TIMEOUT_MILLIS:J

.field public static final OP_BIND_TIMEOUT_MILLIS:J

.field public static final OP_TIMEOUT_MILLIS:J

.field public static final VERB_STRINGS:[Ljava/lang/String;

.field public static final sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAvailable:Z

.field public mAwaitingNotification:Z

.field public final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field public final mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

.field public mCancelled:Z

.field public final mCompletedListener:Lcom/android/server/job/JobSchedulerService;

.field public final mContext:Landroid/content/Context;

.field public mDeathMarkDebugReason:Ljava/lang/String;

.field public mDeathMarkInternalStopReason:I

.field public mDeathMarkStopReason:I

.field public mEstimatedDownloadBytes:J

.field public mEstimatedUploadBytes:J

.field public mExecutionStartTimeElapsed:J

.field public mInitialDownloadedBytesFromCalling:J

.field public mInitialDownloadedBytesFromSource:J

.field public mInitialUploadedBytesFromCalling:J

.field public mInitialUploadedBytesFromSource:J

.field public final mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field public mLastExecutionDurationStampTimeElapsed:J

.field public mLastUnsuccessfulFinishElapsed:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxExecutionTimeMillis:J

.field public mMinExecutionGuaranteeMillis:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mParams:Landroid/app/job/JobParameters;

.field public mPendingDebugStopReason:Ljava/lang/String;

.field public mPendingInternalStopReason:I

.field public mPendingNetworkChange:Landroid/net/Network;

.field public mPendingStopReason:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPreferredUid:I

.field public mPreviousJobHadSuccessfulFinish:Z

.field public mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

.field public mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field public mRunningJobWorkType:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public mTimeoutElapsed:J

.field public mTransferredDownloadBytes:J

.field public mTransferredUploadBytes:J

.field public final mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mVerb:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public service:Landroid/app/job/IJobService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v1, v0, 0x4650

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    mul-int/lit16 v1, v0, 0x1f40

    int-to-long v1, v1

    sput-wide v1, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    const-wide/16 v1, 0x2710

    int-to-long v3, v0

    mul-long/2addr v3, v1

    sput-wide v3, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/high16 v2, 0x40400000    # 3.0f

    const v3, 0x3fb33333    # 1.4f

    const/16 v4, 0x14

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_enqueued_work_items_at_job_start"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/high16 v4, 0x42000000    # 32.0f

    const v5, 0x3fa7ae14    # 1.31f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v6, "job_scheduler.value_hist_transferred_network_download_kilobytes_high_water_mark"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v6, "job_scheduler.value_hist_transferred_network_upload_kilobytes_high_water_mark"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v6, "job_scheduler.value_hist_updated_estimated_network_download_kilobytes"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "job_scheduler.value_hist_updated_estimated_network_upload_kilobytes"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    const-string/jumbo v0, "VERB_STOPPING"

    const-string/jumbo v1, "VERB_FINISHED"

    const-string/jumbo v2, "VERB_BINDING"

    const-string/jumbo v3, "VERB_STARTING"

    const-string/jumbo v4, "VERB_EXECUTING"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    new-instance p4, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {p4, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobSchedulerService;

    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    return-void
.end method


# virtual methods
.method public final applyStoppedReasonLocked(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-object p0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    iput-wide v0, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    :cond_0
    return-void
.end method

.method public final assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3a98

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x80

    const-string v2, "Caller no longer running"

    invoke-static {p0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, ", last stopped "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v0, " because: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/32 v2, 0x10341a19

    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v2, v3, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "network info via JS"

    const/4 v6, -0x1

    const-string/jumbo v5, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v9, 0x0

    invoke-static/range {v4 .. v10}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final cancelExecutingJobLocked(IILjava/lang/String;)V
    .locals 4

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iput p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    sget-boolean p1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Too late to process cancel for context (verb="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const-string p2, "), ignoring."

    const-string p3, "JobServiceContext"

    invoke-static {p0, p2, p3, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    return-void
.end method

.method public final closeAndCleanupJobLocked(Ljava/lang/String;Z)V
    .locals 87

    move-object/from16 v1, p0

    move/from16 v2, p2

    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto/16 :goto_27

    :cond_0
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v4, "JobServiceContext"

    if-eqz v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cleaning up "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reschedule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-static {v5, v12, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v12, p1

    :goto_0
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-wide v7, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    sub-long v7, v5, v7

    iget-wide v9, v14, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    add-long/2addr v9, v7

    iput-wide v9, v14, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v7}, Landroid/app/job/JobParameters;->getStopReason()I

    move-result v34

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v7}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    move-result v13

    iget v7, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Job marked for death because of "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    invoke-static {v7}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    invoke-static {v0, v7, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v0, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    iget v7, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    move v15, v0

    goto :goto_1

    :cond_3
    move v7, v13

    move/from16 v15, v34

    :goto_1
    const/16 v0, 0xa

    const/4 v8, 0x1

    if-ne v13, v0, :cond_4

    move v0, v8

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mPreviousJobHadSuccessfulFinish:Z

    if-nez v0, :cond_5

    iput-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mLastUnsuccessfulFinishElapsed:J

    :cond_5
    move v5, v7

    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    iget v0, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v6, 0x28

    move/from16 v16, v15

    iget-object v15, v14, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v3, v14, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    if-lt v0, v6, :cond_7

    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v3, v15}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v6, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-ne v6, v8, :cond_6

    move/from16 v17, v8

    iget-wide v8, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    move/from16 v19, v5

    move/from16 v20, v6

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v5, v10, v5

    add-long/2addr v5, v8

    iput-wide v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    goto :goto_3

    :cond_6
    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v17, v8

    :goto_3
    add-int/lit8 v6, v20, -0x1

    iput v6, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    iget-object v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v13, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    move/from16 v20, v17

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    move/from16 v19, v5

    move/from16 v17, v8

    iget-object v0, v7, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v3, v15}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    iget v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    move/from16 v6, v17

    if-ne v5, v6, :cond_8

    iget-wide v8, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    move/from16 v20, v6

    move-object/from16 v17, v7

    iget-wide v6, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    sub-long v6, v10, v6

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    goto :goto_4

    :cond_8
    move/from16 v20, v6

    move-object/from16 v17, v7

    :goto_4
    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    iget-object v5, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v13, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v13, v5}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v7, v17

    :goto_5
    invoke-virtual {v7, v10, v11}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_9

    const/4 v8, 0x4

    goto :goto_6

    :cond_9
    move v8, v5

    :goto_6
    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v10

    iget v9, v14, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v11, v14, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    move-object/from16 v17, v15

    move/from16 v85, v19

    move v15, v6

    move/from16 v6, v20

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/job/JobPackageTracker;->addEvent(IIILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget v7, v14, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v0, v7}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v0

    const/16 v8, 0x8

    if-le v0, v8, :cond_a

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    :cond_a
    iget-boolean v9, v14, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    if-eqz v9, :cond_b

    filled-new-array {v3, v7}, [I

    move-result-object v10

    goto :goto_7

    :cond_b
    new-array v10, v6, [I

    aput v3, v10, v15

    :goto_7
    const/4 v11, 0x0

    iget-object v12, v14, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v9, :cond_c

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v9

    goto :goto_8

    :cond_c
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v9

    :goto_8
    iget v12, v14, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v14, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v24

    invoke-virtual {v14, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v25

    invoke-virtual {v14, v8}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v26

    const/high16 v15, -0x80000000

    invoke-virtual {v14, v15}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v27

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v14, v11}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v28

    const/4 v11, 0x4

    invoke-virtual {v14, v11}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v29

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v30

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v31

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v32

    iget-boolean v11, v14, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    iget-object v15, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v35

    iget-object v15, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v36

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v37

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v38

    iget-object v15, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v39

    iget-object v15, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v15}, Landroid/app/job/JobParameters;->isOverrideDeadlineExpired()Z

    move-result v41

    invoke-virtual {v14, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v42

    invoke-virtual {v14, v5}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v43

    invoke-virtual {v14, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v44

    const/high16 v15, -0x80000000

    invoke-virtual {v14, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v45

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v46

    const/high16 v15, 0x10000000

    invoke-virtual {v14, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v47

    const/high16 v15, 0x4000000

    invoke-virtual {v14, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v48

    move-object v15, v9

    iget-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move/from16 v86, v6

    iget-wide v5, v14, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long v49, v8, v5

    iget-object v5, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v51

    iget-boolean v5, v14, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    iget-object v6, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v53

    iget-object v6, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v54

    iget-wide v8, v14, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    move/from16 v52, v5

    iget-wide v5, v14, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v60

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v61

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v19

    move-wide/from16 v58, v5

    iget-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    sub-long v63, v19, v5

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    move-wide/from16 v19, v5

    iget-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    sub-long v65, v19, v5

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    move-wide/from16 v19, v5

    iget-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    sub-long v67, v19, v5

    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    move-wide/from16 v19, v5

    iget-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    sub-long v69, v19, v5

    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v71

    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v73

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v75

    const/high16 v0, 0x200000

    invoke-virtual {v14, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v76

    iget v0, v14, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    iget v5, v14, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v80

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v81

    iget-object v6, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v6

    add-int/lit8 v83, v6, 0x1

    iget-object v6, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    move/from16 v78, v0

    iget v0, v14, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    invoke-virtual {v6, v0, v3}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v84

    iget-boolean v0, v14, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    iget v6, v14, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    move-object/from16 v19, v17

    move-object/from16 v17, v15

    iget-object v15, v14, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move/from16 v79, v5

    move/from16 v82, v6

    iget-wide v5, v14, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    move/from16 v77, v0

    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    move-object/from16 v62, v0

    move-wide/from16 v22, v5

    move-wide/from16 v56, v8

    move/from16 v33, v11

    move/from16 v20, v13

    move-object/from16 v18, v15

    move/from16 v5, v16

    move-object/from16 v8, v21

    const/4 v6, 0x0

    const/16 v15, 0x8

    move-object/from16 v16, v10

    move/from16 v21, v12

    invoke-static/range {v15 .. v84}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    const-wide/32 v9, 0x80000

    invoke-static {v9, v10}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    const-string v11, "JobScheduler"

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v9, v10, v11, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_d
    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    const-wide/16 v9, 0x1000

    invoke-static {v9, v10, v11, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_e
    :try_start_0
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v9, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v10, v9, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    iget v9, v9, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-interface {v0, v10, v9, v13}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    invoke-virtual {v0, v5, v1, v14}, Lcom/android/server/job/JobNotificationCoordinator;->removeNotificationAssociation(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_f
    iget v9, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    :try_start_1
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_9
    const/4 v4, 0x0

    goto :goto_a

    :catch_1
    move-exception v0

    const-string/jumbo v10, "unbindService failed : "

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_a
    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v15, 0x4

    iput v15, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    iput-boolean v6, v1, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    move/from16 v10, v86

    iput-boolean v10, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    iput-object v1, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput v6, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v15, 0xb

    invoke-virtual {v0, v15, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobSchedulerService;

    sget-boolean v10, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v10, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v4, "Completed "

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", reason="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v85

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", reschedule="

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_11
    move/from16 v4, v85

    :goto_b
    iget v12, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aput-object v14, v13, v12

    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    aput-wide v18, v13, v12

    iget v12, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/16 v86, 0x1

    add-int/lit8 v12, v12, 0x1

    rem-int/lit8 v12, v12, 0x14

    iput v12, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    invoke-virtual {v0, v14, v4}, Lcom/android/server/job/JobSchedulerService;->maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V

    const/4 v12, 0x7

    if-eq v4, v12, :cond_1b

    const/16 v12, 0x8

    if-ne v4, v12, :cond_12

    goto/16 :goto_11

    :cond_12
    if-eqz v2, :cond_13

    invoke-virtual {v0, v14, v5, v4}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    :goto_c
    const-wide/32 v12, 0x163457ac

    invoke-static {v12, v13, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_14

    const/16 v3, 0xd

    if-ne v4, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_d

    :cond_14
    move v3, v6

    :goto_d
    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v5, 0x3

    if-eq v4, v5, :cond_15

    if-nez v3, :cond_15

    const/4 v3, 0x2

    if-ne v4, v3, :cond_16

    :cond_15
    const/high16 v3, 0x2400000

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->addDynamicConstraints(I)V

    :cond_16
    iget-object v3, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v3

    const/16 v86, 0x1

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v14, v2, v3}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v3

    if-nez v3, :cond_18

    if-eqz v10, :cond_17

    const-string v2, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v11, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v2, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v4, v14, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v0, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_12

    :cond_18
    const-string/jumbo v3, "Unable to regrant job permissions for "

    if-eqz v2, :cond_19

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    invoke-virtual {v0, v2, v14}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_10

    :cond_19
    iget-object v2, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v14}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_f

    :catch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-virtual {v0, v2, v14}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1a
    :goto_10
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    goto :goto_12

    :cond_1b
    :goto_11
    invoke-virtual {v14}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    :cond_1c
    :goto_12
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    iget-object v3, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const/16 v86, 0x1

    add-int/lit8 v3, v3, -0x1

    const-string v4, "JobScheduler.Concurrency"

    if-gez v3, :cond_1d

    const-string v3, "# running jobs for "

    const-string v5, " went negative."

    invoke-static {v9, v3, v5, v4}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1d
    iget-object v5, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v9, v3}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v9}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    :goto_13
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    iget-object v5, v14, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3, v5, v7}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->removeRunningJobs(Landroid/app/job/JobInfo;I)V

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/16 v5, 0x60

    if-ge v3, v5, :cond_1e

    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1e
    iget v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    const/16 v86, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    :goto_14
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v5, v14, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    if-nez v3, :cond_1f

    const-string/jumbo v3, "Running job didn\'t have an active PackageStats object"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_1f
    iget-boolean v5, v14, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-static {v3, v6, v5}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    iget v5, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    if-gtz v5, :cond_20

    iget v5, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    if-gtz v5, :cond_20

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    iget v7, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    iget-object v8, v3, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    check-cast v5, Landroid/util/Pools$SimplePool;

    invoke-virtual {v5, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_20
    :goto_15
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget v5, v3, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v7, -0x1

    if-nez v5, :cond_21

    iput v7, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    goto/16 :goto_27

    :cond_21
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    if-lt v5, v8, :cond_27

    iget-boolean v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    if-nez v5, :cond_22

    move v5, v9

    const/4 v8, 0x1

    goto/16 :goto_1a

    :cond_22
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v86, 0x1

    add-int/lit8 v5, v5, -0x1

    const-wide v12, 0x7fffffffffffffffL

    :goto_16
    if-ltz v5, :cond_23

    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/JobServiceContext;

    iget-wide v6, v8, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move v15, v5

    move-wide/from16 v19, v6

    iget-wide v5, v8, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long v6, v19, v5

    sub-long/2addr v6, v10

    move v5, v9

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    add-int/lit8 v6, v15, -0x1

    move v9, v5

    move v5, v6

    const/4 v6, 0x0

    const/4 v7, -0x1

    goto :goto_16

    :cond_23
    move v5, v9

    const/4 v15, 0x4

    invoke-virtual {v2, v15}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v6

    if-lez v6, :cond_25

    iget-wide v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    cmp-long v6, v12, v6

    if-ltz v6, :cond_24

    :goto_17
    const/4 v8, 0x1

    goto :goto_18

    :cond_24
    const/4 v8, 0x0

    :goto_18
    const/16 v86, 0x1

    goto :goto_19

    :cond_25
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    move-result v6

    if-lez v6, :cond_26

    iget-wide v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    cmp-long v6, v12, v6

    if-ltz v6, :cond_24

    goto :goto_17

    :cond_26
    iget-wide v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    cmp-long v6, v12, v6

    if-ltz v6, :cond_24

    goto :goto_17

    :goto_19
    xor-int/lit8 v8, v8, 0x1

    :goto_1a
    if-eqz v8, :cond_28

    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    goto/16 :goto_27

    :cond_27
    move v5, v9

    :cond_28
    iget v6, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    sget-boolean v7, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    const-string v8, "Already running similar job to: "

    const-string/jumbo v9, "Pending+not ready job: "

    const-string/jumbo v10, "Pending+running job: "

    const-string/jumbo v11, "Pending queue contained a running job"

    const/4 v12, -0x1

    if-eq v6, v12, :cond_39

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    move/from16 v16, v5

    move/from16 v17, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move/from16 v7, v16

    :goto_1b
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v6

    if-eqz v6, :cond_33

    move/from16 v20, v12

    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2a

    invoke-static {v4, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_29

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual {v3, v6}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    :goto_1c
    move-object/from16 v21, v8

    goto/16 :goto_1e

    :cond_2a
    iget v12, v6, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v6, v12}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v12

    if-nez v12, :cond_2c

    if-eqz v17, :cond_2b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {v3, v6}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_1c

    :cond_2c
    if-eqz v17, :cond_2d

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    if-eqz v12, :cond_2d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget v12, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    move-object/from16 v21, v8

    iget v8, v6, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    if-eq v12, v8, :cond_2e

    if-nez v15, :cond_30

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-nez v8, :cond_30

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v12

    if-eqz v12, :cond_30

    move-object v15, v6

    move/from16 v19, v12

    move v12, v8

    :goto_1d
    move-object/from16 v8, v21

    goto :goto_1b

    :cond_2e
    iget v8, v6, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v12, v14, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-gt v8, v12, :cond_2f

    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_2f

    goto :goto_1e

    :cond_2f
    if-eqz v13, :cond_31

    iget v8, v13, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v12, v6, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v8, v12, :cond_30

    goto :goto_1f

    :cond_30
    :goto_1e
    move/from16 v12, v20

    goto :goto_1d

    :cond_31
    :goto_1f
    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v5

    if-nez v5, :cond_32

    move/from16 v5, v16

    :cond_32
    move-object v13, v6

    goto :goto_1e

    :cond_33
    move/from16 v20, v12

    const-string/jumbo v3, "Running job "

    if-eqz v13, :cond_35

    if-eqz v17, :cond_34

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as preemption"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-virtual {v2, v5, v7}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    invoke-virtual {v0, v5, v1, v13}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_20

    :cond_35
    if-eqz v17, :cond_36

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Couldn\'t find preemption job for uid "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    invoke-static {v5, v6, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_36
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    if-eqz v15, :cond_38

    if-eqz v17, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " instead"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    move/from16 v3, v19

    move/from16 v12, v20

    invoke-virtual {v2, v3, v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    invoke-virtual {v0, v3, v1, v15}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_38
    :goto_20
    const/4 v6, 0x0

    goto/16 :goto_26

    :cond_39
    move/from16 v16, v5

    move/from16 v17, v7

    move-object/from16 v21, v8

    iget v5, v3, Lcom/android/server/job/PendingJobQueue;->mSize:I

    if-lez v5, :cond_38

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    move/from16 v5, v16

    move v6, v5

    const/4 v7, 0x0

    :goto_21
    invoke-virtual {v3}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    if-eqz v8, :cond_43

    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v12, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-static {v4, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_3a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    invoke-virtual {v3, v8}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    :goto_22
    move-object/from16 v13, v21

    goto :goto_24

    :cond_3b
    iget v12, v8, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v8, v12}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v12

    if-nez v12, :cond_3d

    if-eqz v17, :cond_3c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-virtual {v3, v8}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    goto :goto_22

    :cond_3d
    if-eqz v17, :cond_3e

    invoke-virtual {v0, v8}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    if-eqz v12, :cond_3e

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v21

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_3e
    move-object/from16 v13, v21

    :goto_23
    invoke-virtual {v0, v8}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v12

    if-eqz v12, :cond_3f

    goto :goto_24

    :cond_3f
    invoke-virtual {v0, v8}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v12

    invoke-virtual {v2, v12}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    move-result v14

    if-nez v14, :cond_40

    :goto_24
    move-object/from16 v21, v13

    goto :goto_21

    :cond_40
    if-eqz v7, :cond_41

    iget v15, v7, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    move-object/from16 v16, v3

    iget v3, v8, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ge v15, v3, :cond_42

    goto :goto_25

    :cond_41
    move-object/from16 v16, v3

    :goto_25
    move-object v7, v8

    move v6, v12

    move v5, v14

    :cond_42
    move-object/from16 v21, v13

    move-object/from16 v3, v16

    goto/16 :goto_21

    :cond_43
    if-eqz v7, :cond_38

    if-eqz v17, :cond_44

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "About to run job: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    invoke-virtual {v2, v5, v6}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    invoke-virtual {v0, v5, v1, v7}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    goto/16 :goto_20

    :goto_26
    invoke-virtual {v0, v6}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    :goto_27
    return-void
.end method

.method public final doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    move-result p1

    if-nez p1, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p0, p3, p2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(Ljava/lang/String;Z)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final doCallbackLocked(Ljava/lang/String;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doCallback of : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    invoke-static {v2, v3, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    if-eq v2, v4, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Handling started job but job wasn\'t starting! Was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-nez p2, :cond_2

    const/4 p1, 0x0

    const-string/jumbo p2, "onStartJob returned false"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    const-string p1, "Job cancelled while waiting for onStartJob to complete."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->handleCancelLocked(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getNetwork()Landroid/net/Network;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object p0, p1, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_6
    if-eq v2, v3, :cond_9

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    goto :goto_0

    :cond_7
    if-eqz v0, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Unrecognised callback: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->handleFinishedLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public final doServiceBoundLocked()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleServiceBound for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sending onStartJob for a job that isn\'t pending. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-static {v0, v2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v1, "started job not pending"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Job cancelled while waiting for bind to complete. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "cancelled while waiting for bind"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void

    :cond_3
    :try_start_0
    iput v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {v0, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error sending onStart message to \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "inactive since "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string p2, ", stopped because: "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo p0, "inactive"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "Running for: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long v0, p2, v0

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ", timeout at: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "Remaining execution limits: ["

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v2

    sub-long/2addr v0, p2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo p2, "]"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz p2, :cond_2

    const-string p2, " Pending stop because "

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p2, "/"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    invoke-virtual {p1, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z
    .locals 80

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Job service "

    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const-string v0, "JobServiceContext"

    const-string/jumbo v1, "Starting new runnable but context is unavailable > Error."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return v5

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :cond_0
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    iput-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    move/from16 v0, p2

    iput v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    new-instance v0, Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-direct {v0, v1}, Lcom/android/server/job/JobServiceContext$JobCallback;-><init>(Lcom/android/server/job/JobServiceContext;)V

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v0, v9, v11

    if-gez v0, :cond_1

    move/from16 v17, v8

    goto :goto_0

    :cond_1
    move/from16 v17, v5

    :goto_0
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v20, v0

    goto :goto_1

    :cond_2
    move-object/from16 v20, v6

    :goto_1
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v21, v0

    goto :goto_2

    :cond_3
    move-object/from16 v21, v6

    :goto_2
    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    move-object/from16 v22, v9

    goto :goto_3

    :cond_4
    move-object/from16 v22, v6

    :goto_3
    new-instance v9, Landroid/app/job/JobParameters;

    iget-object v10, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    iget-object v11, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v12}, Landroid/app/job/JobInfo;->getId()I

    move-result v12

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v13

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v15

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v16

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v18

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v19

    invoke-direct/range {v9 .. v22}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/PersistableBundle;Landroid/os/Bundle;Landroid/content/ClipData;IZZZ[Landroid/net/Uri;[Ljava/lang/String;Landroid/net/Network;)V

    iput-object v9, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v9

    iget-wide v11, v1, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    iget-wide v11, v2, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    cmp-long v0, v11, v9

    if-lez v0, :cond_5

    iget-wide v13, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    sub-long/2addr v13, v11

    const/16 v0, 0x1f40

    invoke-static {v0, v13, v14}, Landroid/util/EventLog;->writeEvent(IJ)I

    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG_STANDBY:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v11, "Starting job deferred for standby by "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13, v14, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v11, " ms : "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "JobServiceContext"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v11, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget v12, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(I)Landroid/os/WorkSource;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iput v5, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v11, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v11, 0x4

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-boolean v12, v2, Lcom/android/server/job/controllers/JobStatus;->mIsUserBgRestricted:Z

    if-nez v12, :cond_7

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v12

    if-eqz v12, :cond_6

    const-wide v12, 0x100038001L

    goto :goto_4

    :cond_6
    const-wide/32 v12, 0x18001

    :goto_4
    move v14, v8

    goto :goto_7

    :catch_0
    move-exception v0

    move v14, v5

    goto :goto_9

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_6

    :cond_8
    const-wide/32 v12, 0x8105

    :goto_5
    move v14, v5

    goto :goto_7

    :cond_9
    :goto_6
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_a

    const-wide/32 v12, 0x38005

    goto :goto_5

    :cond_a
    const-wide/32 v12, 0x18005

    goto :goto_5

    :goto_7
    :try_start_2
    iget-object v15, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v12

    iget v13, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v15, v0, v1, v12, v13}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_8
    move v3, v14

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_9
    :try_start_3
    const-string v12, "JobServiceContext"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be executed: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    goto :goto_8

    :goto_a
    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "JobServiceContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unavailable."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iput v5, v1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    iput-object v6, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iput-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput v11, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    monitor-exit v4

    return v5

    :cond_c
    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromSource:J

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromSource:J

    iget v12, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v12}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/job/JobServiceContext;->mInitialDownloadedBytesFromCalling:J

    iget v12, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v12}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/server/job/JobServiceContext;->mInitialUploadedBytesFromCalling:J

    iget-object v12, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget v13, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v12, v13}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v12

    const/16 v13, 0x8

    if-le v12, v13, :cond_d

    iget-object v12, v1, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v14, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v12, v14}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v12

    :cond_d
    iget-boolean v14, v2, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    if-eqz v14, :cond_e

    iget v15, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    filled-new-array {v0, v15}, [I

    move-result-object v0

    goto :goto_b

    :cond_e
    filled-new-array {v0}, [I

    move-result-object v0

    :goto_b
    if-eqz v14, :cond_f

    iget-object v14, v2, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    filled-new-array {v6, v14}, [Ljava/lang/String;

    move-result-object v14

    :goto_c
    move v15, v12

    goto :goto_d

    :cond_f
    iget-object v14, v2, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :goto_d
    iget-object v12, v2, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    move/from16 v16, v15

    iget v15, v2, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    iget-wide v9, v2, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    const-wide/16 v19, 0x0

    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v18

    const/4 v6, 0x2

    move-wide/from16 v20, v19

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v19

    move-wide/from16 v21, v20

    invoke-virtual {v2, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v20

    const/high16 v5, -0x80000000

    move-wide/from16 v22, v21

    invoke-virtual {v2, v5}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v21

    invoke-virtual {v2, v7}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v7

    move-wide/from16 v24, v22

    invoke-virtual {v2, v11}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v23

    move-wide/from16 v25, v24

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v24

    move-wide/from16 v26, v25

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v25

    move-wide/from16 v27, v26

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v26

    move-wide/from16 v28, v27

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v27

    iget-object v11, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v11

    iget-object v5, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v31

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v32

    iget-object v13, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v34

    invoke-virtual {v2, v8}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v36

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v37

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v38

    const/high16 v6, -0x80000000

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v39

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v40

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v41

    const/high16 v6, 0x4000000

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v42

    move v6, v8

    move-wide/from16 v43, v9

    iget-wide v8, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    move/from16 v79, v6

    move/from16 v22, v7

    iget-wide v6, v2, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    sub-long/2addr v8, v6

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v45

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v46

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v47

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v48

    iget-wide v6, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    move/from16 v30, v5

    move-wide/from16 v50, v6

    iget-wide v5, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v54

    invoke-static/range {v16 .. v16}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v55

    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v65

    iget-object v10, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v67

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v69

    const/high16 v10, 0x200000

    invoke-virtual {v2, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v70

    iget-boolean v10, v2, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    iget v13, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    move-object/from16 v16, v0

    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v74

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v75

    move/from16 v73, v0

    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    move/from16 v76, v0

    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    add-int/lit8 v77, v0, 0x1

    iget-object v0, v1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    move-wide/from16 v52, v5

    iget v5, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    iget v6, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v78

    const-wide/16 v61, 0x0

    const-wide/16 v63, 0x0

    move/from16 v71, v10

    move-object/from16 v10, v16

    move-wide/from16 v33, v34

    move/from16 v35, v17

    move-wide/from16 v16, v43

    move-wide/from16 v43, v8

    const/16 v9, 0x8

    move/from16 v72, v13

    const/4 v13, 0x1

    move-wide/from16 v5, v28

    move/from16 v29, v11

    move-object v11, v14

    const/4 v14, -0x1

    const/16 v28, 0x0

    const-wide/16 v57, 0x0

    const-wide/16 v59, 0x0

    move-object/from16 v56, v7

    invoke-static/range {v9 .. v78}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    sget-object v0, Lcom/android/server/job/JobServiceContext;->sEnqueuedJwiAtJobStart:Lcom/android/modules/expresslog/Histogram;

    iget v7, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    iget-object v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const-wide/32 v7, 0x80000

    invoke-static {v7, v8}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "JobScheduler"

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->computeSystemTraceTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v7, v8, v9, v10, v11}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_10
    iget-object v7, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string v7, "JobScheduler"

    iget-object v8, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getTraceTag()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v9}, Landroid/app/job/JobInfo;->getId()I

    move-result v9

    const-wide/16 v10, 0x1000

    invoke-static {v10, v11, v7, v8, v9}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_11
    :try_start_4
    iget-object v7, v1, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v8, v2, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-interface {v7, v8, v9}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :try_start_5
    iget v7, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    iget-object v8, v1, Lcom/android/server/job/JobServiceContext;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-wide v9, v1, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    check-cast v8, Lcom/android/server/usage/UsageStatsService$LocalService;

    iget-object v8, v8, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v8, v8, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v8, v0, v7, v9, v10}, Lcom/android/server/usage/AppStandbyInternal;->setLastJobRunTime(Ljava/lang/String;IJ)V

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/job/JobServiceContext;->mStoppedReason:Ljava/lang/String;

    iput-wide v5, v1, Lcom/android/server/job/JobServiceContext;->mStoppedTime:J

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    iput-boolean v0, v2, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    iput-boolean v3, v2, Lcom/android/server/job/controllers/JobStatus;->startedWithForegroundFlag:Z

    monitor-exit v4

    return v79

    :goto_e
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final getRunningJobNameLocked()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "<null>"

    return-object p0
.end method

.method public final handleCancelLocked(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const-string v1, "JobServiceContext"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Handling cancel for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    invoke-static {v0, v2, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cancelling a job without a valid verb: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-static {p1, p0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Z

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    return-void
.end method

.method public final handleFinishedLocked(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object p0, p2, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobServiceContext"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleOpTimeoutLocked()V
    .locals 13

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    const-wide/32 v2, 0xf6461b8

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_0

    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling timeout for an invalid job state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dropping."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "invalid timeout"

    invoke-virtual {p0, v0, v5}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v7, "job_scheduler.value_cntr_w_uid_slow_app_response_on_stop_job"

    const-string/jumbo v9, "timed out while stopping"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No response to onStopJob, ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v2, v3, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_1
    move-object v0, p0

    iget p0, v0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1, v5}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    iput v5, v0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iput v5, v0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JS was waiting to stop this job. Sending onStop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v1, v0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    iget v2, v0, Lcom/android/server/job/JobServiceContext;->mPendingInternalStopReason:I

    iget-object v3, v0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mPendingDebugStopReason:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    iget-wide v1, v0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v6, v0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v6, v1

    iget-wide v8, v0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v1, v8

    sget-object p0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long p0, v8, v6

    if-ltz p0, :cond_7

    const-string p0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client timed out while executing (no jobFinished received). Sending onStop: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timeout while executing"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "client timed out"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_4

    iget v3, p0, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const-wide/32 v6, 0x163457ac

    invoke-static {v6, v7, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/job/controllers/JobStatus;->mIsAbandoned:Z

    if-eqz v3, :cond_4

    const-string v3, " and maybe abandoned"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and maybe abandoned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x10

    const/16 v3, 0xd

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    if-eqz p0, :cond_6

    iget-boolean v6, p0, Lcom/android/server/job/controllers/JobStatus;->mIsHeavyJob:Z

    if-eqz v6, :cond_6

    const-string v6, " and heavy job regulation"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and heavy job regulation"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v6, Lcom/android/server/job/JobSchedulerService;->mHeavyJobHistoryList:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, p0, v10, v11}, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;-><init>(Lcom/android/server/job/controllers/JobStatus;J)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v6, Lcom/android/server/job/JobSchedulerService;->mHeavyJobHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v8, 0xa

    if-le p0, v8, :cond_5

    iget-object p0, v6, Lcom/android/server/job/JobSchedulerService;->mHeavyJobHistoryList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    monitor-exit v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_2
    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v3, v2}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    :cond_7
    cmp-long p0, v8, v1

    if-ltz p0, :cond_9

    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mJobConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Stopping client after min execution time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4, p0}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    return-void

    :cond_8
    const-string p0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Letting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " continue to run past min execution time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void

    :cond_9
    iget-boolean p0, v0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz p0, :cond_a

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_set_notification"

    const-string/jumbo v3, "timed out while stopping"

    const-string/jumbo v6, "required notification not provided"

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_a
    iget-wide v1, v0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    sub-long v1, v8, v1

    const-wide/32 v3, 0x493e0

    cmp-long p0, v1, v3

    if-gez p0, :cond_b

    const-string p0, "JobServiceContext"

    const-string/jumbo v3, "Unexpected op timeout while EXECUTING"

    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    iget-object v1, v0, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p0}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    iput-wide v8, v0, Lcom/android/server/job/JobServiceContext;->mLastExecutionDurationStampTimeElapsed:J

    invoke-virtual {v0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    return-void

    :cond_c
    move-object v0, p0

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_on_start_job"

    move-wide v4, v2

    const-string/jumbo v3, "timed out while starting"

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No response to onStartJob, ("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p0, v0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v4, v5, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    return-void

    :cond_d
    move-object v0, p0

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_slow_app_response_binding"

    const-string/jumbo v3, "timed out while binding"

    const-string/jumbo v6, "Timed out while trying to bind"

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;->onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public final informOfNetworkChangeLocked(Landroid/net/Network;)V
    .locals 4

    const-string v0, "JobServiceContext"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext;->canGetNetworkInformation(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string/jumbo p0, "Skipping network change call because of missing permissions"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Sending onNetworkChanged for a job that isn\'t started. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    return-void

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1, p1}, Landroid/app/job/JobParameters;->setNetwork(Landroid/net/Network;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingNetworkChange:Landroid/net/Network;

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v1}, Landroid/app/job/IJobService;->onNetworkChanged(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "Error sending onNetworkChanged to client."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p1, "host crashed when trying to inform of network change"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public final isWithinExecutionGuaranteeTime()Z
    .locals 6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    const-string v0, "Binding died for "

    const-string v1, "Binding died for "

    const-string v2, "Binding died for "

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v4, :cond_0

    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p1, "binding died"

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 5

    const-string v0, "Got null binding for "

    const-string v1, "Got null binding for "

    const-string v2, "Got null binding for "

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v4, :cond_0

    const-string v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but no running job on this context"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, v4, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but context is running a different job"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p1, "null binding"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->doServiceBoundLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p1, "connected for different component"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    iget v2, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_unexpected_service_disconnects"

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "unexpectedly disconnected"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSlowAppResponseLocked(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)V
    .locals 2

    const-string v0, " for "

    invoke-static {p6, v0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->getRunningJobNameLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    const/4 p4, 0x0

    const/16 v0, 0xc

    invoke-virtual {p1, p4, v0, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object p5, p4, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    invoke-static {p6}, Lcom/android/internal/os/TimeoutRecord;->forJobService(Ljava/lang/String;)Lcom/android/internal/os/TimeoutRecord;

    move-result-object p6

    iget p4, p4, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p1, p5, p4, p6}, Landroid/app/ActivityManagerInternal;->appNotResponding(Ljava/lang/String;ILcom/android/internal/os/TimeoutRecord;)V

    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public final removeOpTimeOutLocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final scheduleOpTimeOutLocked()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    const-wide/16 v1, 0x2

    sget-wide v3, Lcom/android/server/job/JobServiceContext;->OP_TIMEOUT_MILLIS:J

    if-eqz v0, :cond_0

    div-long/2addr v3, v1

    const-wide/16 v0, 0x3

    mul-long/2addr v3, v0

    goto :goto_1

    :cond_0
    mul-long/2addr v3, v1

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v2, p0, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mMaxExecutionTimeMillis:J

    add-long/2addr v0, v4

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_2
    sub-long v2, v0, v4

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    if-eqz v0, :cond_3

    sget-wide v0, Lcom/android/server/job/JobServiceContext;->NOTIFICATION_TIMEOUT_MILLIS:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_3
    const-wide/32 v0, 0x493e0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    goto :goto_1

    :cond_4
    sget-wide v3, Lcom/android/server/job/JobServiceContext;->OP_BIND_TIMEOUT_MILLIS:J

    :goto_1
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Scheduling time out for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' jId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x3e8

    div-long v1, v3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobServiceContext"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-void
.end method

.method public sendStopMessageLocked(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOutLocked()V

    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v1, 0x2

    const-string v2, "JobServiceContext"

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sending onStopJob for a job that isn\'t started. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobServiceContext;->applyStoppedReasonLocked(Ljava/lang/String;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-interface {p1, v0}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error sending onStopJob to client."

    invoke-static {v2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    const-string/jumbo v0, "host crashed when trying to stop"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/JobServiceContext;->closeAndCleanupJobLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method public setJobParamsLockedForTest(Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method public setPendingStopReasonLockedForTest(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPendingStopReason:I

    return-void
.end method

.method public setRunningCallbackLockedForTest(Lcom/android/server/job/JobServiceContext$JobCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    return-void
.end method

.method public setRunningJobLockedForTest(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-void
.end method

.method public final verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobServiceContext;->mRunningCallback:Lcom/android/server/job/JobServiceContext$JobCallback;

    if-eq p0, p1, :cond_1

    sget-boolean p0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "JobServiceContext"

    const-string/jumbo p1, "Stale callback received, ignoring."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
