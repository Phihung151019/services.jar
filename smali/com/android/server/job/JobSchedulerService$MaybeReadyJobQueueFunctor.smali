.class public final Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field final mBatches:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Network;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mUnbatchedJobCount:Landroid/util/ArrayMap;

.field public final mUnbatchedJobs:Landroid/util/ArraySet;

.field final runnableJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v9, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v10}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Aborting job "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -- package not allowed to start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x2

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    return-void

    :cond_1
    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    const-wide/16 v11, 0x1

    if-lez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    :goto_0
    move v3, v4

    :goto_1
    const-wide/16 v15, 0x0

    goto/16 :goto_c

    :cond_2
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-wide/16 v15, 0x0

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    if-ne v3, v7, :cond_5

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    move v3, v8

    goto :goto_1

    :cond_5
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v13, v7, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    add-long/2addr v5, v13

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    sget-object v13, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v13}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v15, v13, v14}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(ILjava/lang/String;J)J

    move-result-wide v13

    cmp-long v3, v13, v5

    if-lez v3, :cond_6

    move v3, v8

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    if-eqz v3, :cond_7

    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    goto :goto_1

    :cond_7
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    goto :goto_0

    :cond_9
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-wide/16 v15, 0x0

    iget-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v17, v9, v15

    if-lez v17, :cond_a

    sub-long v9, v13, v9

    const-wide/32 v17, 0x3a980

    cmp-long v9, v9, v17

    if-ltz v9, :cond_a

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    :goto_3
    move v3, v4

    goto :goto_7

    :cond_a
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v1, v9}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    sub-long/2addr v9, v13

    goto :goto_4

    :cond_b
    const-wide v9, 0x7fffffffffffffffL

    :goto_4
    const-wide/32 v13, 0x1d4c0

    cmp-long v9, v9, v13

    if-lez v9, :cond_f

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v9

    if-ne v9, v6, :cond_c

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    goto :goto_3

    :cond_c
    iget-object v6, v3, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v9, v3, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    iget v10, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v9, v10, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-le v5, v7, :cond_d

    move v5, v8

    goto :goto_5

    :cond_d
    move v5, v4

    :goto_5
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_e

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    iget-wide v6, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    add-long/2addr v6, v11

    iput-wide v6, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    :goto_6
    move v3, v5

    goto :goto_7

    :cond_e
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    iget-wide v6, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    add-long/2addr v6, v11

    iput-wide v6, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_f
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    goto :goto_3

    :goto_7
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    if-eqz v3, :cond_10

    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    goto :goto_c

    :cond_10
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    goto :goto_c

    :cond_11
    const-wide/16 v15, 0x0

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    if-le v3, v8, :cond_12

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    if-eqz v3, :cond_12

    move v3, v8

    goto :goto_8

    :cond_12
    move v3, v4

    :goto_8
    iget-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v5, v9, v15

    if-lez v5, :cond_13

    sub-long/2addr v13, v9

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    cmp-long v5, v13, v9

    if-ltz v5, :cond_13

    move v5, v8

    goto :goto_9

    :cond_13
    move v5, v4

    :goto_9
    if-eqz v3, :cond_14

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v3

    if-eq v3, v6, :cond_14

    if-nez v5, :cond_14

    move v3, v8

    goto :goto_a

    :cond_14
    move v3, v4

    :goto_a
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    if-eqz v3, :cond_15

    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    goto :goto_c

    :cond_15
    iget-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    add-long/2addr v6, v11

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    goto :goto_c

    :goto_b
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    iget-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    add-long/2addr v5, v11

    iput-wide v5, v3, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    move v3, v4

    :goto_c
    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    if-nez v6, :cond_16

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_17

    iget-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    cmp-long v4, v4, v15

    if-nez v4, :cond_18

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/job/controllers/JobStatus;->mFirstForceBatchedTimeElapsed:J

    goto :goto_d

    :cond_17
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    :goto_d
    if-nez v2, :cond_1e

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_1e

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_19
    if-eqz v2, :cond_1d

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v2

    if-ne v2, v7, :cond_1a

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1a

    const-string/jumbo v2, "cancelled due to restricted bucket"

    move v5, v6

    goto :goto_e

    :cond_1a
    const-string/jumbo v2, "cancelled due to unsatisfied constraints"

    move v5, v8

    goto :goto_e

    :cond_1b
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget v5, v2, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "restricted due to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_1c
    const-string/jumbo v2, "couldn\'t figure out why the job should stop running"

    :goto_e
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    invoke-virtual {v0, v1, v3, v5, v2}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    return-void

    :cond_1d
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1e
    return-void
.end method

.method public postProcessLocked()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "maybeQueueReadyJobsForExecutionLocked: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unbatched jobs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-ltz v4, :cond_a

    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Network;

    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    new-instance v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;

    invoke-direct {v13, v10}, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;-><init>(Landroid/net/Network;)V

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v14

    iput v14, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->totalJobCount:I

    if-eqz v10, :cond_2

    if-lez v14, :cond_2

    iput-boolean v6, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->hasNetworkJob:Z

    :cond_2
    if-nez v10, :cond_3

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move/from16 v17, v4

    move/from16 v16, v6

    goto/16 :goto_5

    :cond_3
    if-lez v11, :cond_5

    sget-boolean v9, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "JobScheduler"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "maybeQueueReadyJobsForExecutionLocked: piggybacking "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " jobs on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " because of unbatched job"

    invoke-static {v14, v10, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v11, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_2

    :cond_5
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v14, v14, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v14, v10}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v14

    if-nez v14, :cond_6

    goto :goto_3

    :cond_6
    iget-object v9, v14, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_3
    if-nez v9, :cond_7

    const-string v9, "JobScheduler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Couldn\'t get NetworkCapabilities for network "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v9

    array-length v14, v9

    move/from16 v16, v6

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v14, :cond_8

    aget v7, v9, v15

    move/from16 v17, v4

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    goto :goto_4

    :cond_8
    move/from16 v17, v4

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lt v4, v6, :cond_9

    const-string v4, "JobScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "maybeQueueReadyJobsForExecutionLocked: [BatchNetworkJob] "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " batched network jobs meet requirement for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v11, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->unbatchJobCount:I

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v12}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v4

    iput v4, v13, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->deferedJobCount:I

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v17, -0x1

    move/from16 v6, v16

    goto/16 :goto_0

    :cond_a
    move/from16 v16, v6

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_f

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lez v7, :cond_d

    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_b

    const/4 v6, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_6
    const-string v7, "JobScheduler"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "maybeQueueReadyJobsForExecutionLocked: piggybacking "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " non-network jobs"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-lt v7, v6, :cond_f

    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_e

    const-string v6, "JobScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "maybeQueueReadyJobsForExecutionLocked: adding "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " batched non-network jobs."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_f
    :goto_7
    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    new-instance v6, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    if-gtz v8, :cond_12

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_10

    goto :goto_8

    :cond_10
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_11

    const-string v2, "JobScheduler"

    const-string/jumbo v3, "maybeQueueReadyJobsForExecutionLocked: Not running anything."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_12
    :goto_8
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string v6, "JobScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "maybeQueueReadyJobsForExecutionLocked: Running "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " jobs."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_9
    if-ltz v7, :cond_14

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    iget-object v9, v6, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v9, v8}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_14
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v6, v1}, Lcom/android/server/job/PendingJobQueue;->addAll(Landroid/util/ArraySet;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mJobCounter:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mBeginTime:J

    const-wide/32 v9, 0x927c0

    add-long/2addr v9, v7

    cmp-long v9, v2, v9

    if-lez v9, :cond_15

    new-instance v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;

    iget v10, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    iget v11, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    iget v12, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-wide v7, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->begin:J

    iput v10, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->operationCount:I

    iput v11, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->deferedCount:I

    iput v12, v9, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->networkJobGroupCount:I

    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v7, v7, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7, v9}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iput-wide v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mBeginTime:J

    const/4 v2, 0x0

    iput v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    iput v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    iput v2, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    :goto_a
    iget v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mOperationCount:I

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mDeferedCount:I

    :cond_16
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/job/JobSchedulerService$JobOperationGroup$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v6, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;->mNetworkJobGroupCount:I

    :cond_17
    if-eqz v4, :cond_1a

    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "maybeQueueReadyJobsForExecutionLocked: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    const-string/jumbo v5, "empty"

    goto :goto_c

    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_b
    if-ge v8, v7, :cond_19

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;

    invoke-virtual {v9}, Lcom/android/server/job/JobSchedulerService$JobCountPerNetwork;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_19
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", acceptCounter= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_d
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1e

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eq v3, v4, :cond_1e

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v4

    move v7, v2

    :goto_e
    if-ge v7, v3, :cond_1d

    :try_start_0
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    goto :goto_10

    :cond_1b
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    iget v6, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v8, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-nez v5, :cond_1c

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    iget v8, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v9, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :catchall_0
    move-exception v0

    goto :goto_11

    :cond_1c
    :goto_f
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const/16 v6, 0xd

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1d
    monitor-exit v4

    goto :goto_12

    :goto_11
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1e
    :goto_12
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->reset()V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->runnableJobs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mBatches:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->mUnbatchedJobCount:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method
