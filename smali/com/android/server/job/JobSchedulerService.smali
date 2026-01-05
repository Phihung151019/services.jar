.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_STANDBY:Z

.field public static final QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

.field public static final QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

.field public static final sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

.field public static final sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

.field public static sSystemClock:Ljava/time/Clock;

.field public static sUptimeMillisClock:Ljava/time/Clock;

.field public static sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# instance fields
.field public final mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

.field mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mBackingUpUids:Landroid/util/SparseBooleanArray;

.field final mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

.field public final mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public final mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

.field public final mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

.field public final mChangedJobList:Landroid/util/ArraySet;

.field public final mCloudMediaProviderPackages:Landroid/util/SparseArray;

.field public final mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

.field public final mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

.field public final mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

.field public final mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

.field public final mControllers:Ljava/util/List;

.field public final mDebuggableApps:Landroid/util/ArrayMap;

.field public final mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

.field public final mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field public final mHeavyJobController:Lcom/android/server/job/JobSchedulerService$HeavyJobController;

.field public final mHeavyJobHistoryList:Ljava/util/ArrayList;

.field public final mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

.field public final mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

.field public final mJobCounter:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

.field public final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field final mJobRestrictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/job/restrictions/JobRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field public final mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

.field public final mJobs:Lcom/android/server/job/JobStore;

.field public mLastCancelledJobIndex:I

.field public final mLastCancelledJobTimeElapsed:[J

.field public final mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLastCompletedJobIndex:I

.field public final mLastCompletedJobTimeElapsed:[J

.field public final mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public final mLocalPM:Landroid/content/pm/PackageManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

.field public mMediaProviderForceReadyOnce:Z

.field public final mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

.field public final mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

.field public final mPermissionCache:Landroid/util/SparseArray;

.field public final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field public final mQuotaController:Lcom/android/server/job/controllers/QuotaController;

.field public final mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

.field public final mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

.field public mReadyToRock:Z

.field public mReportedActive:Z

.field public final mRestrictiveControllers:Ljava/util/List;

.field public final mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

.field public mStartedUsers:[I

.field public final mStorageController:Lcom/android/server/job/controllers/StorageController;

.field public final mTimeSetReceiver:Lcom/android/server/job/JobSchedulerService$3;

.field public final mUidBiasOverride:Landroid/util/SparseIntArray;

.field public final mUidCapabilities:Landroid/util/SparseIntArray;

.field public final mUidObserver:Lcom/android/server/job/JobSchedulerService$4;

.field public final mUidProcStates:Landroid/util/SparseIntArray;

.field public final mUidToPackageCache:Landroid/util/SparseSetArray;

.field public final mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;


# direct methods
.method public static -$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Can\'t cancel all jobs for system package"

    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v2, v2, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_5

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    iget-object v1, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_3

    iget-object v1, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    move v6, p4

    move-object v7, p5

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object v2, p0

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    :goto_2
    add-int/lit8 p2, p2, -0x1

    move-object p0, v2

    move p4, v6

    move-object p5, v7

    goto :goto_0

    :cond_5
    return-void
.end method

.method public static -$$Nest$mgetPendingJob(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Landroid/app/job/JobInfo;
    .locals 3

    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, p0}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mgetPendingJobReasonsHistory(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p2, p2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p2, p0, p1, p3}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->mPendingJobReasonsHistory:Ljava/util/List;

    add-int/lit8 p3, p2, -0xa

    const/4 v1, 0x0

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p3, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mgetPendingJobs(Lcom/android/server/job/JobSchedulerService;I)Landroid/util/ArrayMap;
    .locals 5

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mgetPendingJobsInNamespace(Lcom/android/server/job/JobSchedulerService;ILjava/lang/String;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    iget-object v3, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object p1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mhasPermission(IILcom/android/server/job/JobSchedulerService;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArrayMap;

    invoke-direct {v1}, Landroid/util/SparseArrayMap;-><init>()V

    iget-object v2, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3, p1, p0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p3, p2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mmaybeQueueReadyJobsForExecutionLocked(Lcom/android/server/job/JobSchedulerService;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string/jumbo v1, "Maybe queuing ready jobs..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;->postProcessLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const-string v0, "JobScheduler"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v0

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;I)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Ljava/time/ZoneId;I)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string v1, ".schedulePersisted out-of-quota logged"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-uij"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-ej"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-reg"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "timeout-total"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "anr"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/server/utils/quota/Category;

    const-string/jumbo v1, "disabled"

    invoke-direct {v0, v1}, Lcom/android/server/utils/quota/Category;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/high16 v4, 0x40a00000    # 5.0f

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v5, "job_scheduler.value_hist_w_uid_enqueued_work_items_high_water_mark"

    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const/16 v5, 0x32

    const/high16 v6, 0x42000000    # 32.0f

    const v7, 0x3fa7ae14    # 1.31f

    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v8, "job_scheduler.value_hist_initial_job_estimated_network_download_kilobytes"

    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v8, "job_scheduler.value_hist_initial_jwi_estimated_network_download_kilobytes"

    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v8, "job_scheduler.value_hist_initial_job_estimated_network_upload_kilobytes"

    invoke-direct {v0, v8, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v5, v3, v6, v7}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v5, "job_scheduler.value_hist_initial_jwi_estimated_network_upload_kilobytes"

    invoke-direct {v0, v5, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    const v5, 0x3fe147ae    # 1.76f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v6, "job_scheduler.value_hist_w_uid_job_minimum_chunk_kilobytes"

    invoke-direct {v0, v6, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;-><init>(IIFF)V

    const-string/jumbo v2, "job_scheduler.value_hist_w_uid_jwi_minimum_chunk_kilobytes"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHeavyJobHistoryList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;

    const/16 v2, 0x96

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/job/JobPackageTracker;

    invoke-direct {v1}, Lcom/android/server/job/JobPackageTracker;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUserVisibleJobObservers:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/job/PendingJobQueue;

    invoke-direct {v1}, Lcom/android/server/job/PendingJobQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    const/16 v2, 0x14

    new-array v3, v2, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    new-array v3, v2, [J

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    iput v1, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    new-array v4, v4, [Lcom/android/server/job/controllers/JobStatus;

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/SparseSetArray;

    invoke-direct {v2}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/SparseArrayMap;

    invoke-direct {v2}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$3;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/job/JobSchedulerService$4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Lcom/android/server/job/JobSchedulerService$4;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mMediaProviderForceReadyOnce:Z

    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    new-instance v3, Lcom/android/server/job/JobSchedulerService$3;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/android/server/job/JobSchedulerService$3;-><init>(ILjava/lang/Object;)V

    iput-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mTimeSetReceiver:Lcom/android/server/job/JobSchedulerService$3;

    new-instance v4, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    new-instance v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-direct {v4, p0}, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    new-instance v4, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    invoke-direct {v4, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mMaybeQueueFunctor:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobQueueFunctor;

    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-class v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    new-instance v4, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    new-instance v5, Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    sget v6, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_CPU_ONLY_JOBS_COUNT:I

    iput v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_CPU_ONLY_JOBS_COUNT:I

    sget v6, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    iput v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_READY_NON_ACTIVE_JOBS_COUNT:I

    const-wide/32 v6, 0x1c61a0

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_CPU_ONLY_JOB_BATCH_DELAY_MS:J

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NON_ACTIVE_JOB_BATCH_DELAY_MS:J

    const v8, 0x3f666666    # 0.9f

    iput v8, v5, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    const-wide/16 v9, 0x2710

    iput-wide v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    iput-wide v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    const/4 v9, 0x3

    iput v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    iput v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    iput v8, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    iput v8, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    iput-boolean v2, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    const-wide/32 v10, 0xea60

    iput-wide v10, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    iput v8, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_LOW_SIGNAL_STRENGTH_RELAX_FRAC:F

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_TRANSPORT_BATCH_THRESHOLD:Landroid/util/SparseIntArray;

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_MAX_CONNECTIVITY_JOB_BATCH_DELAY_MS:J

    const-wide/32 v6, 0x36ee80

    iput-wide v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    iput-boolean v2, v5, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    const/16 v6, 0xfa

    iput v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iput-wide v10, v5, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    iput-boolean v2, v5, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    iput-boolean v1, v5, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    iput-boolean v2, v5, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    const/4 v6, 0x2

    iput v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    const/4 v6, 0x5

    iput v6, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    iput v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    const/16 v7, 0xa

    iput v7, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    const-wide/32 v7, 0x5265c00

    iput-wide v7, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    iput v9, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    const-wide/32 v12, 0x1499700

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    const-wide/32 v12, 0x1b7740

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    const-wide/32 v12, 0x927c0

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    const-wide/32 v12, 0x2bf20

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    sget-wide v12, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_GUARANTEE_MS:J

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    sget-wide v12, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_UI_LIMIT_MS:J

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    const v12, 0x3faccccd    # 1.35f

    iput v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    sget-wide v12, Lcom/android/server/job/JobSchedulerService$Constants;->DEFAULT_RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    iput-wide v12, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    iput-wide v7, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    iput-boolean v1, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    iput-boolean v2, v5, Lcom/android/server/job/JobSchedulerService$Constants;->PERSIST_IN_SPLIT_FILES:Z

    const v7, 0x186a0

    iput v7, v5, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v5}, Lcom/android/server/job/JobSchedulerService$Constants;->copyTransportBatchThresholdDefaults()V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    new-instance v5, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-direct {v5, p0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    new-instance v5, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v5, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    new-instance v5, Lcom/android/server/job/JobConcurrencyManager;

    new-instance v7, Lcom/android/server/job/JobConcurrencyManager$Injector;

    invoke-direct {v7}, Lcom/android/server/job/JobConcurrencyManager$Injector;-><init>()V

    invoke-direct {v5, p0, v7}, Lcom/android/server/job/JobConcurrencyManager;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager$Injector;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    new-instance v5, Lcom/android/server/job/JobSchedulerService$StandbyTracker;

    invoke-direct {v5, p0}, Lcom/android/server/job/JobSchedulerService$StandbyTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    const-class v7, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/usage/UsageStatsManagerInternal;

    sput-object v7, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v7, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;

    invoke-direct {v7, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance v8, Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-direct {v8, p1, v7}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V

    iput-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->updateQuotaTracker()V

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_LOGGED:Lcom/android/server/utils/quota/Category;

    invoke-virtual {v8, v7, v2, v10, v11}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    sget-object v7, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_DISABLED:Lcom/android/server/utils/quota/Category;

    const v12, 0x7fffffff

    invoke-virtual {v8, v7, v12, v10, v11}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    const-class v7, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v7, v5}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    const-class v5, Landroid/os/BatteryStatsInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStatsInternal;

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    const-class v5, Lcom/android/server/job/JobSchedulerInternal;

    new-instance v7, Lcom/android/server/job/JobSchedulerService$LocalService;

    invoke-direct {v7, p0}, Lcom/android/server/job/JobSchedulerService$LocalService;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p0, v5, v7}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v7, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-direct {v8, v0, v10}, Lcom/android/server/job/JobStore;-><init>(Ljava/lang/Object;Ljava/io/File;)V

    sput-object v8, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    :goto_2
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    iget-object v8, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-boolean v10, v0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    invoke-direct {v7, v0, v8, v10, v5}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;ZLjava/util/concurrent/CountDownLatch;)V

    iget-object v5, v0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {v5, p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    const-string/jumbo v7, "android.intent.action.BATTERY_LOW"

    const-string/jumbo v8, "android.intent.action.BATTERY_OKAY"

    const-string/jumbo v10, "android.os.action.CHARGING"

    const-string/jumbo v11, "android.os.action.DISCHARGING"

    const-string/jumbo v12, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-static {v7, v8, v10, v11, v12}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    const-string/jumbo v8, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v7, v5}, Landroid/os/BatteryManagerInternal;->registerChargingPolicyChangeListener(Landroid/os/BatteryManagerInternal$ChargingPolicyChangeListener;)V

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v7}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v7

    iput v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryLevel:I

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v7}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v7

    xor-int/2addr v7, v2

    iput-boolean v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v7

    iput-boolean v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mCharging:Z

    iget-object v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v7}, Landroid/os/BatteryManagerInternal;->getChargingPolicy()I

    move-result v7

    iput v7, v5, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mChargingPolicy:I

    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    new-instance v5, Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/PrefetchController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/FlexibilityController;

    invoke-direct {v7, p0, v5}, Lcom/android/server/job/controllers/FlexibilityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {v5, p0, v7}, Lcom/android/server/job/controllers/ConnectivityController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/job/controllers/TimeController;

    invoke-direct {v8, p0}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/job/controllers/IdleController;

    invoke-direct {v8, p0, v7}, Lcom/android/server/job/controllers/IdleController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {v10, p0, v7}, Lcom/android/server/job/controllers/BatteryController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/StorageController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/StorageController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mStorageController:Lcom/android/server/job/controllers/StorageController;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/BackgroundJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct {v11, p0}, Lcom/android/server/job/controllers/ContentObserverController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-direct {v11, p0}, Lcom/android/server/job/controllers/DeviceIdleJobsController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v11, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleJobsController:Lcom/android/server/job/controllers/DeviceIdleJobsController;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {v11, p0, v7, v5}, Lcom/android/server/job/controllers/QuotaController;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/BackgroundJobsController;Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v11, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/ComponentController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/ComponentController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/job/controllers/UidRestrictController;

    invoke-direct {v7, p0}, Lcom/android/server/job/controllers/UidRestrictController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    const/4 v7, 0x1

    invoke-direct {v2, p0, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    invoke-virtual {v4, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mRestrictiveControllers:Ljava/util/List;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/job/JobSchedulerService$HeavyJobController;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v4, Lcom/android/server/job/JobSchedulerService$HeavyJobController;->sHeavyJobPackages:Ljava/util/List;

    const-string/jumbo v5, "com.samsung.android.smartsuggestions"

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHeavyJobController:Lcom/android/server/job/JobSchedulerService$HeavyJobController;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    new-instance v4, Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    const/4 v5, 0x4

    const/16 v7, 0xc

    invoke-direct {v4, p0, v5, v7, v6}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    iput v1, v4, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mThermalStatus:I

    new-instance v6, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

    invoke-direct {v6, v4}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    iput-object v6, v4, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mSIOPTracker:Lcom/android/server/job/restrictions/ThermalStatusRestriction$2;

    const-string/jumbo v7, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-static {v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/android/server/job/restrictions/OlafRestriction;

    const/16 v6, 0x64

    const/16 v7, 0xb

    invoke-direct {v4, p0, v7, v9, v6}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;III)V

    iput-boolean v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mForceRestricted:Z

    iput-boolean v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    iput v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    iput-boolean v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mForceDisabled:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->isSystemAppCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/job/restrictions/OlafRestriction$1;

    invoke-direct {v1, v4}, Lcom/android/server/job/restrictions/OlafRestriction$1;-><init>(Lcom/android/server/job/restrictions/OlafRestriction;)V

    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafTracker:Lcom/android/server/job/restrictions/OlafRestriction$1;

    const-string/jumbo v6, "com.samsung.intent.action.OLAF_STATE_CHANGED"

    invoke-static {v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v5, Landroid/os/PowerExemptionManager;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerExemptionManager;

    iput-object v1, v4, Lcom/android/server/job/restrictions/OlafRestriction;->mPowerExemptionManager:Landroid/os/PowerExemptionManager;

    new-instance v1, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;

    invoke-direct {v1, v4}, Lcom/android/server/job/restrictions/OlafRestriction$HandleLockThread;-><init>(Lcom/android/server/job/restrictions/OlafRestriction;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/android/server/job/JobStore;->mRtcGood:Z

    if-nez v0, :cond_3

    const-string v0, "JobScheduler"

    const-string v1, "!!! RTC not yet good; tracking time updates for job scheduling"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    new-instance p1, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

    invoke-direct {p1, p0}, Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobCounter:Lcom/android/server/job/JobSchedulerService$MaybeReadyJobCounter;

    new-instance p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOverrideNone:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchExpedited:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchStandbyBucket:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchPrefetch:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchPrefetch:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchAttempts:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchNetwork:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchNetwork:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->unbatchOthers:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->batchOthers:J

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    new-instance p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->batchDealyExpired:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->notEnoughDeadline:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->exemptedStandbyBucket:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->procState:J

    iput-wide v0, p1, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->deferrable:J

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    return-void

    :goto_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static deriveWorkSource(I)Landroid/os/WorkSource;
    .locals 3

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v0}, Landroid/os/WorkSource;->createWorkChain()Landroid/os/WorkSource$WorkChain;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    move-result-object p0

    const/16 v1, 0x3e8

    const-string v2, "JobScheduler"

    invoke-virtual {p0, v1, v2}, Landroid/os/WorkSource$WorkChain;->addNode(ILjava/lang/String;)Landroid/os/WorkSource$WorkChain;

    return-object v0
.end method

.method public static safelyScaleBytesToKBForHistogram(J)I
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method public static standbyBucketForPackage(ILjava/lang/String;J)I
    .locals 1

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->standbyBucketToBucketIndex(I)I

    move-result p2

    sget-boolean p3, Lcom/android/server/job/JobSchedulerService;->DEBUG_STANDBY:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " standby bucket index: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p2
.end method

.method public static standbyBucketToBucketIndex(I)I
    .locals 2

    const/16 v0, 0x32

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/16 v0, 0x28

    const/4 v1, 0x5

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    const/16 v0, 0x1e

    if-le p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 v0, 0x14

    if-le p0, v0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/16 v0, 0xa

    if-le p0, v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-le p0, v1, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public final adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_7

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v5, v3, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v5, v5, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v6, 0x0

    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    :goto_0
    iget-object v7, v3, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v8, 0x0

    aget-object v9, v7, v8

    if-eqz v9, :cond_2

    iget-object v9, v9, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    if-eqz v5, :cond_4

    invoke-virtual {v5, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v11

    invoke-virtual {v5, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v4

    add-long/2addr v4, v11

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    :goto_2
    iget-object v1, v3, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v11

    if-eqz v6, :cond_5

    invoke-virtual {v6, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v13

    invoke-virtual {v6, v9, v10}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v15

    add-long/2addr v15, v13

    add-long/2addr v4, v15

    aget-object v1, v7, v8

    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v6

    add-long/2addr v11, v6

    :cond_5
    long-to-float v1, v4

    long-to-float v3, v11

    div-float/2addr v1, v3

    :goto_3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v0, Lcom/android/server/job/JobSchedulerService$Constants;->HEAVY_USE_FACTOR:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_6

    add-int/lit8 v0, v2, -0x50

    return v0

    :cond_6
    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MODERATE_USE_FACTOR:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_7

    add-int/lit8 v0, v2, -0x28

    return v0

    :cond_7
    return v2
.end method

.method public final areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v0

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final cancelJob(IIIILjava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "cancel() called by app, callingUid="

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2, p1, p2, p5}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p5

    if-eqz p5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p4

    const/4 p4, 0x0

    move-object v3, p5

    move-object p5, p1

    move-object p1, v3

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    move-object p1, p5

    :goto_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    monitor-exit v1

    return p0

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p4

    const-string v3, "JobScheduler"

    sget-boolean v73, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v73, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CANCEL: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->unprepareLocked()V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v5, v1}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v5, v1}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_1
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual {v5, v1, v6, v8, v7}, Lcom/android/server/job/JobConcurrencyManager;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget v7, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-boolean v9, v1, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    if-eqz v9, :cond_2

    filled-new-array {v7, v5}, [I

    move-result-object v10

    goto :goto_0

    :cond_2
    new-array v10, v4, [I

    const/4 v11, 0x0

    aput v7, v10, v11

    :goto_0
    iget-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v9

    :goto_1
    iget v11, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    invoke-virtual {v1, v4}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v1, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v14

    const/16 v15, 0x8

    move/from16 v16, v14

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v14

    const/high16 v15, -0x80000000

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v17

    const/high16 v15, 0x40000000    # 2.0f

    move/from16 v19, v16

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v16

    const/4 v13, 0x4

    move/from16 v21, v17

    invoke-virtual {v1, v13}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v17

    const/high16 v22, -0x80000000

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v18

    move/from16 v23, v19

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v19

    const/16 v24, 0x2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v20

    iget-object v13, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v13

    iget-object v4, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    const/16 v27, 0x4

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v25

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v28

    iget-object v15, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v30

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v29

    move/from16 v32, v28

    const/4 v15, 0x1

    move-wide/from16 v75, v30

    move/from16 v31, v27

    move-wide/from16 v27, v75

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v30

    move/from16 v15, v24

    invoke-virtual {v1, v15}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v15

    move-object/from16 v24, v3

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v3

    move/from16 p5, v3

    move/from16 v3, v22

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v33

    move/from16 v3, v31

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v34

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v35

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v36

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v39

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v41

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v42

    move/from16 v22, v4

    iget-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    move-wide/from16 v44, v3

    iget-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v48

    move-wide/from16 v46, v3

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v49

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v59

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v61

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v63

    const/high16 v3, 0x200000

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v64

    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v68

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v69

    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v5

    const/16 v26, 0x1

    add-int/lit8 v71, v5, 0x1

    iget v5, v1, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    invoke-virtual {v0, v5, v7}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v72

    iget-boolean v5, v1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    iget v7, v1, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    move/from16 v66, v3

    iget-object v6, v1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    move/from16 v70, v7

    const/4 v7, 0x3

    move/from16 v67, v4

    move/from16 v65, v5

    move-object v5, v9

    move-object v4, v10

    move v9, v11

    iget-wide v10, v1, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    move/from16 v31, v15

    move/from16 v15, v21

    const/16 v21, 0x0

    const-wide/16 v37, 0x0

    const/16 v40, 0x0

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    move/from16 v0, v23

    move/from16 v23, v13

    move v13, v0

    move-object/from16 v50, v3

    move-object/from16 v0, v24

    move/from16 v74, v26

    move/from16 v26, v32

    const/16 v3, 0x8

    move/from16 v32, p5

    move/from16 v24, v22

    move/from16 v22, p3

    invoke-static/range {v3 .. v72}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    goto :goto_2

    :cond_4
    move-object v0, v3

    move/from16 v74, v4

    :goto_2
    if-eqz v2, :cond_6

    if-eqz v73, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Tracking replacement job "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v3, v2

    if-lez v3, :cond_7

    if-nez p4, :cond_7

    iget v3, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    aput-object v1, v2, v3

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    aput-wide v4, v1, v3

    iget v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    add-int/lit8 v1, v1, 0x1

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    :cond_7
    return-void
.end method

.method public final cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    move-object/from16 v0, p6

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    if-eqz p5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "JobScheduler"

    const-string p1, "Can\'t cancel all jobs for system uid"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v4, v4, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    iget-object v4, v4, Lcom/android/server/job/JobStore$JobSet;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p4, :cond_3

    iget-object p4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p4, p4, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p4, p1, v3}, Lcom/android/server/job/JobStore$JobSet;->getJobsBySourceUid(ILjava/util/Set;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_3
    :goto_0
    move p1, v2

    :goto_1
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result p4

    if-ge v2, p4, :cond_6

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    if-eqz p5, :cond_4

    iget-object p4, v5, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-static {v0, p4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    :cond_4
    const/4 v6, 0x0

    move-object v4, p0

    move v7, p2

    move v8, p3

    move-object/from16 v9, p7

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    const/4 p1, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    monitor-exit v1

    return p1

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final clearPendingJobQueue()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput p0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    iget-object v2, v0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v1, v0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    iget-object v3, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput p0, v1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v3, v0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    check-cast v3, Landroid/util/Pools$SimplePool;

    invoke-virtual {v3, v1}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object p0, v0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    iget-object p0, v0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public final dumpInternal(Landroid/util/IndentingPrintWriter;I)V
    .locals 23
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v8, p2

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v3}, Lcom/android/server/job/JobSchedulerService$1;->millis()J

    move-result-wide v4

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    const/4 v11, 0x1

    invoke-direct {v3, v1, v11}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v12, v2}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v14, v2}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :cond_0
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  Force execute job: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/server/job/JobSchedulerService;->mMediaProviderForceReadyOnce:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  [BatchNetworkJob] JobCountForMaybeReadyJobs: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v13}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mJobCountBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v12}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;

    const/4 v13, 0x0

    :goto_1
    array-length v14, v12

    if-ge v13, v14, :cond_1

    aget-object v14, v12, v13

    invoke-virtual {v14}, Lcom/android/server/job/JobSchedulerService$JobOperationGroupBlockData;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    const-string v12, "  [BatchNetworkJob] version = 3"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  [BatchNetworkJob] DeferrableNetworkJob = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mDeferrableNetworkJobCounter:Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;

    invoke-virtual {v13}, Lcom/android/server/job/JobSchedulerService$DeferrableNetworkJobCounter;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  [BatchNetworkJob] AcceptCount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mAcceptCounter:Lcom/android/server/job/JobSchedulerService$AcceptCounter;

    invoke-virtual {v13}, Lcom/android/server/job/JobSchedulerService$AcceptCounter;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v12, "Heavy Jobs Timeout History ("

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mHeavyJobHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v12, "):"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mHeavyJobHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;

    invoke-static {v15}, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;->-$$Nest$fgetjob(Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v16

    const-string/jumbo v18, "MM-dd HH:mm:ss.SSS"

    move-wide/from16 v19, v6

    invoke-static/range {v18 .. v18}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v6

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v6

    invoke-static {v15}, Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;->-$$Nest$fgettimestamp(Lcom/android/server/job/JobSchedulerService$HeavyJobHistory;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/job/controllers/JobStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    move-wide/from16 v6, v19

    goto :goto_2

    :cond_2
    move-wide/from16 v19, v6

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Aconfig flags:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v6, "com.android.server.job.batch_active_bucket_jobs"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "com.android.server.job.batch_connectivity_jobs_per_network"

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Force batch connectivity jobs: true"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "com.android.server.job.do_not_force_rush_execution_at_boot"

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "android.app.job.ignore_important_while_foreground"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "android.app.job.get_pending_job_reasons_api"

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "android.app.job.get_pending_job_reasons_history_api"

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "android.app.job.add_type_info_to_wakelock_tag"

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    :goto_3
    if-ltz v6, :cond_3

    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v7, v2}, Lcom/android/server/job/restrictions/JobRestriction;->dumpConstants(Landroid/util/IndentingPrintWriter;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v6, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Power connected: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isPowerConnected()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v6, "Battery charging: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v6, "Considered charging: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$misConsideredCharging(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v6, "Battery level: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$fgetmBatteryLevel(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v6, "Battery not low: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isBatteryNotLow()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Z)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isMonitoring()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "MONITORING: seq="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->getSeq()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_4
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Started users: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Media Cloud Providers: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mCloudMediaProviderPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Registered "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v6, v6, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v6}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, " jobs:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v6, v6, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v6}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v6

    if-lez v6, :cond_c

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v6, v6, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v6}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v6

    new-instance v7, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v7, :cond_b

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, v15}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_4

    :cond_5
    const-string v13, "JOB "

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v13, ": "

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->toShortStringExceptUniqueId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v15, v2, v12, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    const-string/jumbo v13, "Restricted due to:"

    invoke-virtual {v2, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v13

    if-eqz v13, :cond_6

    move v13, v12

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-eqz v13, :cond_9

    move/from16 v16, v12

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_6
    if-ltz v12, :cond_8

    move-object/from16 v18, v6

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/restrictions/JobRestriction;

    move/from16 v21, v7

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v7

    invoke-virtual {v6, v15, v7}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/android/server/job/restrictions/JobRestriction;->getInternalReason()I

    move-result v6

    const-string v7, " "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v6, v18

    move/from16 v7, v21

    goto :goto_6

    :cond_8
    move-object/from16 v18, v6

    move/from16 v21, v7

    goto :goto_7

    :cond_9
    move-object/from16 v18, v6

    move/from16 v21, v7

    move/from16 v16, v12

    const-string v6, " none"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_7
    const-string v6, "."

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v6, "Ready: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " (job="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " user="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " !restricted="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    xor-int/lit8 v6, v13, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " !pending="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v6, v15}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " !active="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v6, v15}, Lcom/android/server/job/JobConcurrencyManager;->isJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " !backingup="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v6, " comp="

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    invoke-virtual {v15}, Lcom/android/server/job/controllers/JobStatus;->isForceExecuteJob()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, " force=true"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    const-string v6, ")"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v12, v16

    move v13, v12

    move-object/from16 v6, v18

    move/from16 v7, v21

    goto/16 :goto_4

    :cond_b
    :goto_8
    move/from16 v16, v12

    goto :goto_9

    :cond_c
    const/4 v13, 0x0

    goto :goto_8

    :goto_9
    if-nez v13, :cond_d

    const-string/jumbo v6, "None."

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x0

    :goto_a
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v7, v2, v3}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_e
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_b
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    const/4 v13, -0x1

    if-ge v7, v12, :cond_12

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_f

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-ne v1, v13, :cond_11

    :cond_f
    if-nez v6, :cond_10

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Uid proc states:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    :cond_10
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_13
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_c
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_17

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_14

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-ne v1, v14, :cond_16

    :cond_14
    if-nez v6, :cond_15

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Uid bias overrides:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    :cond_15
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(I)V

    :cond_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_18
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_1c

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_19

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-ne v1, v14, :cond_1b

    :cond_19
    if-nez v6, :cond_1a

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Uid capabilities:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    :cond_1a
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1c
    if-eqz v6, :cond_1d

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1d
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_e
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v12}, Landroid/util/SparseSetArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_20

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v12

    if-eq v8, v13, :cond_1e

    if-eq v8, v12, :cond_1e

    goto :goto_f

    :cond_1e
    if-nez v6, :cond_1f

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Cached UID->package map:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    :cond_1f
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v14, ": "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :goto_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_20
    if-eqz v6, :cond_21

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_21
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_10
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v12

    if-ge v7, v12, :cond_25

    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    if-eq v1, v13, :cond_22

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v14

    if-ne v1, v14, :cond_24

    :cond_22
    if-nez v6, :cond_23

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Backing up uids:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v6, v16

    goto :goto_11

    :cond_23
    const-string v14, ", "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_11
    invoke-static {v12}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_25
    if-eqz v6, :cond_26

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_26
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dump(Landroid/util/IndentingPrintWriter;I)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(Landroid/util/IndentingPrintWriter;I)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_27
    const-string/jumbo v1, "Pending queue:"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1}, Lcom/android/server/job/PendingJobQueue;->resetIterator()V

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_12
    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v7

    if-eqz v7, :cond_2a

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_28

    goto :goto_12

    :cond_28
    if-nez v1, :cond_29

    move/from16 v1, v16

    :cond_29
    const-string/jumbo v12, "Pending #"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v12, ": "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v12, 0x0

    invoke-virtual {v7, v2, v12, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual {v0, v7}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v14

    const-string v15, "Evaluated bias: "

    invoke-virtual {v2, v15}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v14, "Enq: "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v7, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v14, v14, v19

    invoke-static {v14, v15, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_12

    :cond_2a
    const/4 v12, 0x0

    if-nez v1, :cond_2b

    const-string/jumbo v1, "None"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-wide/from16 v6, v19

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobConcurrencyManager;->dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;JJ)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "Recently completed jobs:"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v6, v12

    move/from16 v1, v16

    :goto_13
    const/16 v7, 0x14

    if-gt v1, v7, :cond_2e

    iget v14, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobIndex:I

    add-int/2addr v14, v7

    sub-int/2addr v14, v1

    rem-int/2addr v14, v7

    iget-object v7, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobs:[Lcom/android/server/job/controllers/JobStatus;

    aget-object v7, v7, v14

    if-eqz v7, :cond_2d

    invoke-virtual {v3, v7}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c

    goto :goto_14

    :cond_2c
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mLastCompletedJobTimeElapsed:[J

    aget-wide v14, v6, v14

    invoke-static {v14, v15, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move/from16 v6, v16

    invoke-virtual {v7, v2, v6, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v6, 0x1

    :cond_2d
    :goto_14
    add-int/lit8 v1, v1, 0x1

    const/16 v16, 0x1

    goto :goto_13

    :cond_2e
    if-nez v6, :cond_2f

    const-string/jumbo v1, "None"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    move v14, v12

    const/4 v6, 0x1

    :goto_15
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobs:[Lcom/android/server/job/controllers/JobStatus;

    array-length v7, v1

    if-gt v6, v7, :cond_33

    iget v7, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobIndex:I

    array-length v12, v1

    add-int/2addr v7, v12

    sub-int/2addr v7, v6

    array-length v12, v1

    rem-int/2addr v7, v12

    aget-object v1, v1, v7

    if-eqz v1, :cond_30

    invoke-virtual {v3, v1}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_31

    :cond_30
    const/4 v7, 0x1

    goto :goto_16

    :cond_31
    if-nez v14, :cond_32

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v12, "Recently cancelled jobs:"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v14, 0x1

    :cond_32
    iget-object v12, v0, Lcom/android/server/job/JobSchedulerService;->mLastCancelledJobTimeElapsed:[J

    move/from16 v17, v14

    aget-wide v13, v12, v7

    invoke-static {v13, v14, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v1, v2, v7, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    move/from16 v14, v17

    :goto_16
    add-int/lit8 v6, v6, 0x1

    const/4 v13, -0x1

    goto :goto_15

    :cond_33
    if-nez v14, :cond_34

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_34
    const/4 v15, -0x1

    if-ne v8, v15, :cond_35

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "mReadyToRock="

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string/jumbo v1, "mReportedActive="

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    :cond_35
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    move-wide v5, v4

    move-wide v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobConcurrencyManager;->dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "PersistStats: "

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->println()V

    return-void

    :goto_17
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final dumpInternalProto(Ljava/io/FileDescriptor;I)V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    new-instance v7, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    const-wide v9, 0x10b00000001L

    :try_start_0
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {v13, v1}, Lcom/android/server/job/JobSchedulerService$Constants;->dump(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v13, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v16

    check-cast v9, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v9, v1}, Lcom/android/server/job/controllers/StateController;->dumpConstants(Landroid/util/proto/ProtoOutputStream;)V

    const-wide v9, 0x10b00000001L

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_1
    if-ltz v9, :cond_1

    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_1
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    array-length v11, v9

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v11, :cond_2

    aget v13, v9, v12

    const-wide v14, 0x20500000002L

    invoke-virtual {v1, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v9, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;)V

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v9, v9, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v9}, Lcom/android/server/job/JobStore$JobSet;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v9, v9, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v9}, Lcom/android/server/job/JobStore$JobSet;->getAllJobs()Ljava/util/List;

    move-result-object v9

    new-instance v13, Lcom/android/server/job/JobSchedulerService$6;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    invoke-static {v9, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_6

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lcom/android/server/job/controllers/JobStatus;

    const-wide v11, 0x20b00000003L

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    move-wide/from16 v17, v11

    const-wide v10, 0x10b00000001L

    invoke-virtual {v15, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v7, v15}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    :goto_4
    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x1

    invoke-virtual {v15, v1, v10, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;ZJ)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    const-wide v11, 0x1080000000aL

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v10, v15, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v15, v10}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v10

    const-wide v11, 0x10800000003L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    const-wide v11, 0x10800000004L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    :goto_5
    const-wide v11, 0x1080000000bL

    goto :goto_6

    :cond_4
    const/4 v10, 0x0

    goto :goto_5

    :goto_6
    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v10, v15}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    const-wide v11, 0x10800000005L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v10, v10, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-wide v11, 0x10800000006L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    iget v11, v15, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v10, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v10

    const-wide v11, 0x10800000007L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v10

    const-wide v11, 0x10800000008L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/job/restrictions/JobRestriction;

    move-wide/from16 v19, v5

    const-wide v5, 0x20b0000000cL

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    iget v12, v11, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    const-wide v9, 0x10e00000001L

    invoke-virtual {v1, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v15}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v9

    invoke-virtual {v11, v15, v9}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v9

    const-wide v10, 0x10800000002L

    invoke-virtual {v1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v5, v19

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto :goto_7

    :cond_5
    move-wide/from16 v19, v5

    move-object/from16 v21, v9

    move-wide/from16 v5, v17

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v5, v19

    move-object/from16 v9, v21

    goto/16 :goto_4

    :cond_6
    move-wide/from16 v19, v5

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v6, :cond_7

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v10, v1, v7}, Lcom/android/server/job/controllers/StateController;->dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V

    goto :goto_8

    :cond_7
    const/4 v5, 0x0

    :goto_9
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/4 v7, -0x1

    if-ge v5, v6, :cond_a

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    if-eq v2, v7, :cond_8

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-ne v2, v7, :cond_9

    :cond_8
    const-wide v9, 0x20b00000005L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v11, 0x10500000001L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const-wide v11, 0x11100000002L

    invoke-virtual {v1, v11, v12, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    :goto_a
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    if-eq v2, v7, :cond_b

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    if-ne v2, v9, :cond_c

    :cond_b
    const-wide v9, 0x20500000006L

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_d
    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dump(ILandroid/util/proto/ProtoOutputStream;)V

    iget-object v5, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v5, v2, v1}, Lcom/android/server/job/JobPackageTracker;->dumpHistory(ILandroid/util/proto/ProtoOutputStream;)V

    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    :goto_b
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_e

    const-wide v5, 0x20b00000009L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v10, 0x10b00000001L

    invoke-virtual {v2, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const/4 v9, 0x0

    invoke-virtual {v2, v1, v9, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/proto/ProtoOutputStream;ZJ)V

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v12

    const-wide v13, 0x11100000003L

    invoke-virtual {v1, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v12, v2, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    sub-long v12, v19, v12

    const-wide v14, 0x10300000004L

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_b

    :cond_e
    move/from16 v2, p2

    if-ne v2, v7, :cond_f

    iget-boolean v2, v0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-wide v11, 0x1080000000bL

    invoke-virtual {v1, v11, v12, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, v0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    const-wide v5, 0x1080000000cL

    invoke-virtual {v1, v5, v6, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_f
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/JobConcurrencyManager;->dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPersistInfo:Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;

    const-wide v2, 0x10b00000015L

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :goto_c
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public final evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 4

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getBias()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->adjustJobBias(Lcom/android/server/job/controllers/JobStatus;I)I

    move-result p0

    return p0
.end method

.method public final executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZI)I
    .locals 9

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "executeCancelCommand(): "

    const-string v1, "/"

    const-string v2, " "

    invoke-static {p3, v0, p2, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v0, p6, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p2, v1, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v2, v0

    goto :goto_1

    :catch_0
    const/4 v0, -0x1

    goto :goto_0

    :goto_1
    if-gez v2, :cond_1

    const-string/jumbo p0, "Package "

    const-string p3, " not found."

    invoke-static {p1, p0, p2, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    :cond_1
    const-string v0, " in user "

    if-nez p5, :cond_2

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Canceling all jobs for "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string/jumbo v8, "cancel shell command for package"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v3, 0xd

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "No matching jobs found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    const-string p0, "Canceling job "

    const-string p5, "/#"

    invoke-static {p6, p0, p2, p5, v0}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    const/16 v4, 0x7d0

    const/16 v5, 0xd

    move-object v6, p4

    move v3, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->cancelJob(IIIILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string/jumbo p0, "No matching job found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final executeRunCommand(IILjava/lang/String;Ljava/lang/String;ZZ)I
    .locals 6

    const-string v0, "JobScheduler"

    const-string/jumbo v1, "executeRunCommand(): "

    const-string v2, "/"

    const-string v3, "/"

    invoke-static {v1, p3, v2, p4, v3}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    const-string v3, " s="

    invoke-static {p1, p2, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const-wide/16 v4, 0x0

    invoke-interface {v3, p3, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    if-gez p1, :cond_1

    const/16 p0, -0x3e8

    return p0

    :cond_1
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v3, p1, p2, p4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p1

    if-nez p1, :cond_2

    const/16 p0, -0x3e9

    monitor-exit p3

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_2
    if-eqz p6, :cond_3

    const/4 p2, 0x3

    goto :goto_1

    :cond_3
    if-eqz p5, :cond_4

    move p2, v1

    goto :goto_1

    :cond_4
    const/4 p2, 0x2

    :goto_1
    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_5

    iget-object p4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p4, p1}, Lcom/android/server/job/controllers/StateController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p2

    const/16 p4, -0x3ea

    if-nez p2, :cond_7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result p2

    if-eqz p2, :cond_6

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result p5

    if-nez p5, :cond_6

    invoke-virtual {p1, p2, v1}, Lcom/android/server/job/controllers/JobStatus;->readinessStatusWithConstraint(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    new-instance p5, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    const/4 p6, 0x5

    invoke-direct {p5, p6, p1, v0, p2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {p2, p5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_6
    iput v2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    monitor-exit p3

    return p4

    :cond_7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_3
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p5, 0x7

    invoke-virtual {v0, p5, p6, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    const-string p3, "JobScheduler"

    const-string p5, "Couldn\'t wait for asynchronous constraint change"

    invoke-static {p3, p5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result p3

    if-nez p3, :cond_8

    iput v2, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    monitor-exit p2

    return p4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->queueReadyJobsForExecutionLocked()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    monitor-exit p2

    goto :goto_7

    :goto_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_6
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :goto_7
    return v2
.end method

.method public final executeStopCommand(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)V
    .locals 4

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler"

    const-string/jumbo v1, "executeStopJobCommand(): "

    const-string v2, "/"

    const-string v3, " "

    invoke-static {p3, v1, p2, v2, v3}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    const-string v3, "("

    invoke-static {p6, p7, v2, v3, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/job/JobConcurrencyManager;->executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "No matching executing jobs found."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

.method public getConnectivityController()Lcom/android/server/job/controllers/ConnectivityController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    return-object p0
.end method

.method public final getEstimatedNetworkBytes(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const-string/jumbo v0, "get-estimated-network-bytes "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-wide/16 v3, 0x0

    invoke-interface {v2, p5, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p1

    if-gez p1, :cond_1

    const-string/jumbo p0, "unknown("

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v3, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v3, p1, p2, p6}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    const-string/jumbo p0, "unknown("

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p4, p1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string p0, "/jid"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ")"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    monitor-exit v2

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/server/job/JobConcurrencyManager;->getEstimatedNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-nez p0, :cond_4

    iget-wide p0, v3, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iget-wide p5, v3, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    goto :goto_2

    :cond_4
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    move-wide p0, p1

    :goto_2
    if-nez p3, :cond_5

    invoke-virtual {p4, p0, p1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_3

    :cond_5
    invoke-virtual {p4, p5, p6}, Ljava/io/PrintWriter;->println(J)V

    :goto_3
    invoke-virtual {p4}, Ljava/io/PrintWriter;->println()V

    monitor-exit v2

    return v1

    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1
.end method

.method public final getJobState(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 5

    const-string/jumbo v0, "get-job-state "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    const-wide/16 v3, 0x0

    invoke-interface {v2, p2, v3, v4, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-gez p3, :cond_1

    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    :cond_1
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v2, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2, p3, p5, p4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string p0, "/jid"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    monitor-exit p2

    return p0

    :cond_3
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p3, v2}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_4

    const-string/jumbo p3, "pending"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move p3, p4

    goto :goto_2

    :cond_4
    move p3, v1

    :goto_2
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object p5, p5, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p5, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    if-eqz p3, :cond_5

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const-string/jumbo p3, "active"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    :cond_6
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p5, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p5

    if-nez p5, :cond_8

    if-eqz p3, :cond_7

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo p3, "user-stopped"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    :cond_8
    iget-object p5, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    invoke-static {p5, v0}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result p5

    if-nez p5, :cond_a

    if-eqz p3, :cond_9

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const-string/jumbo p3, "source-user-stopped"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    :cond_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    iget p5, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, p5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_c

    if-eqz p3, :cond_b

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const-string/jumbo p0, "backing-up"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p3, p4

    :cond_c
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    iget-object p5, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p5}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p5

    iget v0, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide/32 v3, 0x10000000

    invoke-interface {p0, p5, v3, v4, v0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_d

    goto :goto_3

    :catch_0
    :cond_d
    if-eqz p3, :cond_e

    :try_start_3
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo p0, "no-component"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, p4

    :goto_3
    iget p0, v2, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v2, p0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p0

    if-eqz p0, :cond_10

    if-eqz p3, :cond_f

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f
    const-string/jumbo p0, "ready"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    move p4, p3

    :goto_4
    if-nez p4, :cond_11

    const-string/jumbo p0, "waiting"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit p2

    goto :goto_6

    :goto_5
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :goto_6
    return v1
.end method

.method public final getJobWakelockTag(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 5

    const-string/jumbo v0, "get-job-wakelock-tag "

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, -0x1

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    const-wide/16 v3, 0x0

    invoke-interface {v2, p2, v3, v4, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p3

    if-gez p3, :cond_1

    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e8

    return p0

    :cond_1
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object p0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {p0, p3, p5, p4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p0

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "JobScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    const-string/jumbo p0, "unknown("

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p1, p3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string p0, "/jid"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(I)V

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p0, -0x3e9

    monitor-exit p2

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_3
    return v1
.end method

.method public final getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 12

    const-string v0, "HeavyJobController::heavy job upper limit: "

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "android.permission.RUN_USER_INITIATED_JOBS"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v2, v4}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeout-uij"

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    monitor-exit v1

    return-wide p0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    monitor-exit v1

    return-wide p0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "timeout-ej"

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "timeout-reg"

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    :goto_2
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    :goto_3
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHeavyJobController:Lcom/android/server/job/JobSchedulerService$HeavyJobController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService$HeavyJobController;->isHeavyJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v10, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    cmp-long p0, v8, v10

    if-eqz p0, :cond_6

    iput-boolean v3, p1, Lcom/android/server/job/controllers/JobStatus;->mIsHeavyJob:Z

    const-string p0, "JobScheduler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v1

    return-wide v10

    :cond_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/QuotaController;->getMaxJobExecutionTimeMsLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 12

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.RUN_USER_INITIATED_JOBS"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v1, v2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "timeout-uij"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_UI_LIMIT_MS:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_FREE_QUOTA_MAX_LIMIT_MS:J

    :goto_1
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v4, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_USE_DATA_ESTIMATES_FOR_LIMITS:Z

    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mConnectivityController:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, p1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iget-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    const-wide/16 v8, -0x1

    cmp-long v10, v4, v8

    if-nez v10, :cond_2

    cmp-long v10, v6, v8

    if-nez v10, :cond_2

    :goto_2
    move-wide v3, v8

    goto :goto_4

    :cond_2
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_3
    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v3

    int-to-long v10, v3

    invoke-static {v4, v5, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p1

    int-to-long v10, p1

    invoke-static {v6, v7, v10, v11}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v5

    cmp-long p1, v3, v8

    if-nez p1, :cond_6

    move-wide v3, v5

    goto :goto_4

    :cond_6
    cmp-long p1, v5, v8

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    add-long/2addr v3, v5

    :goto_4
    cmp-long p1, v3, v8

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_8
    long-to-float p1, v3

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_BUFFER_FACTOR:F

    mul-float/2addr p1, v3

    float-to-long v3, p1

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_9
    iget-wide p0, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_DATA_TRANSFER_GUARANTEE_MS:J

    invoke-static {p0, p1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_a
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_c

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    goto :goto_5

    :cond_c
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    const-wide/32 v1, 0x493e0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :goto_5
    monitor-exit v0

    return-wide p0

    :cond_d
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    monitor-exit v0

    return-wide p0

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getPackagesForUidLocked(I)Landroid/util/ArraySet;
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public getPendingJobReason(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 2

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(IILjava/lang/String;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public final getPendingJobReasons(IILjava/lang/String;)[I
    .locals 5

    const-string/jumbo v0, "getPendingJobReasons("

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasonsLocked(IILjava/lang/String;)[I

    move-result-object v1

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "JobScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, p1, p3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_2

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p3, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public getPendingJobReasons(Lcom/android/server/job/controllers/JobStatus;)[I
    .locals 2

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/job/JobSchedulerService;->getPendingJobReasons(IILjava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getPendingJobReasonsLocked(IILjava/lang/String;)[I
    .locals 7

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v0, v0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x2

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, -0x1

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "getPendingJobReasonsLocked: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, p3}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result p3

    const-string v0, "JobScheduler"

    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v2

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " restriction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xf

    if-eqz p3, :cond_d

    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userStarted="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez p3, :cond_6

    filled-new-array {v5}, [I

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p3

    if-eqz v1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " backingUp="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p3, :cond_8

    filled-new-array {v3}, [I

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {p3, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p3

    if-eqz v1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " pending="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p3, :cond_a

    const/16 p0, 0xc

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz v1, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " componentUsable="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-nez p0, :cond_c

    filled-new-array {v3}, [I

    move-result-object p0

    return-object p0

    :cond_c
    filled-new-array {v4}, [I

    move-result-object p0

    return-object p0

    :cond_d
    :goto_0
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    not-int p0, p0

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->requiredConstraints:I

    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    or-int/2addr p2, p3

    const/high16 p3, 0x3600000

    or-int/2addr p2, p3

    and-int/2addr p0, p2

    invoke-virtual {p1, p0}, Lcom/android/server/job/controllers/JobStatus;->constraintsToPendingJobReasons(I)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz v2, :cond_e

    iget p2, v2, Lcom/android/server/job/restrictions/JobRestriction;->mPendingReason:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addLast(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_f

    const-string p1, "JobScheduler.JobStatus"

    const-string p2, "App in NEVER bucket querying pending job reason"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    if-eqz p1, :cond_10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p2, p1, [I

    :goto_2
    if-ge v4, p1, :cond_12

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_12
    return-object p2
.end method

.method public getQuotaController()Lcom/android/server/job/controllers/QuotaController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    return-object p0
.end method

.method public getRescheduleJobForFailureLocked(Lcom/android/server/job/controllers/JobStatus;II)Lcom/android/server/job/controllers/JobStatus;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v1, p2

    move/from16 v3, p3

    const/16 v4, 0xb

    const-string v5, "JobScheduler"

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isUserVisibleJob()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dropping "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because of user stop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v8

    const/16 v10, 0xa

    const/16 v11, 0xd

    iget v12, v2, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    iget v13, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    iget v14, v2, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    iget v15, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    if-eq v3, v10, :cond_1

    const/4 v10, 0x3

    if-eq v3, v10, :cond_1

    const/16 v10, 0xc

    if-eq v3, v10, :cond_1

    if-ne v1, v11, :cond_2

    :cond_1
    move v10, v11

    move/from16 v16, v12

    goto :goto_0

    :cond_2
    move/from16 v16, v12

    const-wide/32 v11, 0x163457ac

    invoke-static {v11, v12, v15}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    const/16 v10, 0xd

    if-nez v11, :cond_3

    if-ne v3, v10, :cond_3

    add-int/lit8 v13, v13, 0x1

    :goto_0
    add-int/lit8 v12, v16, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v16

    :goto_1
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v3

    invoke-virtual {v0, v13, v15}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v11

    const/4 v15, 0x1

    if-eqz v11, :cond_4

    move v3, v15

    :cond_4
    iget-object v11, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v10, v11, Lcom/android/server/job/JobSchedulerService$Constants;->SYSTEM_STOP_TO_FAILURE_RATIO:I

    div-int v10, v14, v10

    add-int/2addr v10, v12

    if-nez v10, :cond_5

    const-wide/16 v5, 0x0

    move-wide/from16 v20, v5

    move-object v5, v4

    move-wide/from16 v3, v20

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_8

    if-eq v3, v15, :cond_6

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v5, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v5, v4

    iget-wide v3, v11, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_EXP_BACKOFF_TIME_MS:J

    cmp-long v17, v8, v3

    if-gez v17, :cond_7

    move-wide v8, v3

    :cond_7
    long-to-float v3, v8

    sub-int/2addr v10, v15

    invoke-static {v3, v10}, Ljava/lang/Math;->scalb(FI)F

    move-result v3

    float-to-long v3, v3

    goto :goto_2

    :cond_8
    move-object v5, v4

    iget-wide v3, v11, Lcom/android/server/job/JobSchedulerService$Constants;->MIN_LINEAR_BACKOFF_TIME_MS:J

    cmp-long v15, v8, v3

    if-gez v15, :cond_9

    move-wide v8, v3

    :cond_9
    int-to-long v3, v10

    mul-long/2addr v3, v8

    :goto_2
    const-wide/32 v8, 0x112a880

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v3, v6

    :goto_3
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    move v9, v14

    iget-wide v14, v2, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    move v10, v12

    move v8, v13

    move-wide v12, v6

    move-object v7, v5

    const-wide v5, 0x7fffffffffffffffL

    move-object/from16 v17, v7

    move v7, v10

    move-object/from16 v18, v11

    iget-wide v10, v2, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    move/from16 v0, p2

    move-object/from16 v19, v18

    invoke-direct/range {v1 .. v15}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    const/16 v10, 0xd

    if-ne v0, v10, :cond_a

    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    :cond_a
    iget-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    move-object/from16 v0, v19

    iget-wide v5, v0, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_CUMULATIVE_UI_LIMIT_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_b

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    :cond_b
    invoke-virtual/range {v17 .. v17}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v3, v2, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    iput-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    :cond_c
    const/4 v0, 0x0

    move-object/from16 v3, p0

    :goto_4
    iget-object v4, v3, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_d

    iget-object v4, v3, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/job/controllers/StateController;->rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_d
    return-object v1
.end method

.method public getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 22

    move-object/from16 v1, p1

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v4

    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v6

    const-wide v8, 0x757b12c00L

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v6

    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/job/controllers/JobStatus;->mOriginalLatestRunTimeElapsedMillis:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    const-string v12, "JobScheduler"

    if-ltz v0, :cond_0

    const-wide v13, 0x7fffffffffffffffL

    cmp-long v0, v8, v13

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "Invalid periodic job original latest run time: "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v2

    :cond_1
    sub-long v13, v2, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v0, v2, v8

    const-wide/16 v15, 0x6

    sget-boolean v17, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-lez v0, :cond_6

    if-eqz v17, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Periodic job ran after its intended window by "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    div-long v10, v13, v4

    const-wide/16 v18, 0x1

    add-long v18, v10, v18

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    sub-long v20, v4, v6

    rem-long/2addr v13, v4

    sub-long v20, v20, v13

    div-long v13, v6, v15

    cmp-long v0, v20, v13

    if-gtz v0, :cond_4

    if-eqz v17, :cond_3

    const-string v0, "Custom flex job ran too close to next window."

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide/16 v13, 0x2

    add-long v18, v10, v13

    :cond_4
    mul-long v18, v18, v4

    add-long v18, v18, v8

    :cond_5
    move-wide v8, v4

    move-wide/from16 v4, v18

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_6
    add-long v18, v8, v4

    const-wide/32 v8, 0x1b7740

    cmp-long v0, v13, v8

    if-gez v0, :cond_5

    div-long v10, v4, v15

    cmp-long v0, v13, v10

    if-gez v0, :cond_5

    sub-long/2addr v10, v13

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide v8, v4

    move-wide/from16 v4, v18

    :goto_0
    cmp-long v0, v4, v2

    if-gez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Rescheduling calculated latest runtime in the past: "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    add-long v4, v2, v8

    sub-long v2, v4, v6

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    const/4 v8, 0x0

    iget-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    return-object v0

    :cond_7
    sub-long v2, v8, v10

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long v2, v4, v2

    if-eqz v17, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Rescheduling executed periodic. New execution window ["

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    div-long v8, v2, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v4, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "]s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    const/4 v8, 0x0

    iget-wide v11, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v13, 0x0

    invoke-direct/range {v0 .. v14}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJIIIJJJ)V

    return-object v0
.end method

.method public final getTransferredNetworkBytes(IIILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string/jumbo v5, "get-transferred-network-bytes "

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v8, -0x1

    move/from16 v9, p1

    if-eq v9, v8, :cond_0

    goto :goto_0

    :cond_0
    move v9, v6

    :goto_0
    const-wide/16 v10, 0x0

    invoke-interface {v7, v3, v10, v11, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    if-gez v7, :cond_1

    const-string/jumbo v0, "unknown("

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, -0x3e8

    return v0

    :cond_1
    iget-object v8, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v9, v9, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v9, v7, v1, v4}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v9

    sget-boolean v12, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v12, :cond_2

    const-string v12, "JobScheduler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "//"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    if-nez v9, :cond_3

    const-string/jumbo v0, "unknown("

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, "/jid"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, -0x3e9

    monitor-exit v8

    return v0

    :cond_3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0, v7, v1, v3, v4}, Lcom/android/server/job/JobConcurrencyManager;->getTransferredNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_4

    move-wide v0, v10

    goto :goto_2

    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v14, v10

    move-wide v10, v0

    move-wide v0, v14

    :goto_2
    if-nez p3, :cond_5

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    :goto_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    monitor-exit v8

    return v6

    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v6
.end method

.method public final getUidBias(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

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

.method public final getUidProcState(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

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

.method public final isBatteryCharging()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->isConsideredCharging()Z

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

.method public final isBatteryNotLow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mBatteryNotLow:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->serviceProcessName:Ljava/lang/String;

    const-string v1, "JobScheduler"

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "isComponentUsable: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " component not present"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p0, v0, v3}, Landroid/app/ActivityManagerInternal;->isAppBad(Ljava/lang/String;I)Z

    move-result p0

    if-eqz v2, :cond_2

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "App is bad for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " so not runnable"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isJobInOvertimeLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-ne v3, p1, :cond_1

    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string v0, "JobScheduler.Concurrency"

    const-string v2, "Couldn\'t find long running job on a context"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_3

    sget-object p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->removeRunningJobs(Landroid/app/job/JobInfo;I)V

    :cond_3
    :goto_1
    return v1
.end method

.method public final isPowerConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStateTracker:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    iget-boolean p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->mPowerConnected:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z

    move-result p0

    return p0
.end method

.method public final isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 10

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->evaluateControllerStatesLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const-string/jumbo v3, "isReadyToBeExecutedLocked: "

    const-string v4, "JobScheduler"

    sget-boolean v5, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ready="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v6, p1, Lcom/android/server/job/controllers/JobStatus;->mIsForceExecuteJob:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    const-string/jumbo p2, "This job is forced to execute("

    const-string v0, ") "

    invoke-static {p2, v0, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_3
    if-nez v0, :cond_4

    const-string/jumbo p0, "android.jobscheduler.cts.jobtestapp"

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "    NOT READY: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->containsJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->areUsersStartedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBackingUpUids:Landroid/util/SparseBooleanArray;

    iget v8, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v5, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " userStarted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " backingUp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_b

    if-eqz v6, :cond_b

    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    move v1, v2

    :goto_2
    if-eqz v5, :cond_9

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pending="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " active="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, p2, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isComponentUsable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    return p0

    :cond_b
    :goto_3
    return v2
.end method

.method public maybeProcessBuggyJob(Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const-wide/32 v4, 0x163457ac

    invoke-static {v4, v5, v3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0xd

    if-ne p2, v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    :cond_2
    if-nez v0, :cond_6

    iget-wide v3, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    sub-long/2addr v3, v5

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    if-eqz v0, :cond_4

    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_UI_GUARANTEE_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    :goto_2
    move v1, v2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v0, :cond_5

    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_EJ_GUARANTEE_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_5
    iget-wide v5, v5, Lcom/android/server/job/JobSchedulerService$Constants;->RUNTIME_MIN_GUARANTEE_MS:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_6
    :goto_3
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlameUserId()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getTimeoutBlamePackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsUserInitiatedJob:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "timeout-uij"

    goto :goto_4

    :cond_7
    iget-boolean v4, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "timeout-ej"

    goto :goto_4

    :cond_8
    const-string/jumbo v4, "timeout-reg"

    :goto_4
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v4, "timeout-total"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v4, v3, v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_9
    const/16 v0, 0xc

    if-ne p2, v0, :cond_a

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "anr"

    invoke-virtual {v2, p2, p1, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {p0, p1, p2, v1}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    :cond_a
    return-void
.end method

.method public final maybeRunPendingJobsLocked()V
    .locals 4

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pending queue: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget v1, v1, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const-string v2, " jobs."

    const-string v3, "JobScheduler"

    invoke-static {v1, v2, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->reportActiveLocked()V

    return-void
.end method

.method public notePendingUserRequestedAppStopInternal(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalPM:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-gez v0, :cond_0

    const-string p0, "JobScheduler"

    const-string p1, "Asked to stop jobs of an unknown package"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v2, p2, p1, p3}, Lcom/android/server/job/JobConcurrencyManager;->markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1, v0}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/JobStatus;

    iget v0, p3, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p3, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v0, p3}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    iget v3, p3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v4, p3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    iget v4, p3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v5, p3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object p3, p3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p3}, Landroid/app/job/JobInfo;->getId()I

    move-result p3

    const/16 v3, 0xf

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 12

    const/16 v0, 0x1e0

    if-ne v0, p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "JobScheduler"

    const-string v0, "Couldn\'t wait on controller tracking start latch"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobStoreLoadedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    const-string p0, "JobScheduler"

    const-string p1, "Couldn\'t wait on job store loading latch"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mConstantsObserver:Lcom/android/server/job/JobSchedulerService$ConstantsObserver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string/jumbo v2, "jobscheduler"

    invoke-static {v2, v0, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/JobSchedulerService$ConstantsObserver;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StateController;->onSystemServicesReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    const-class p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/AppStateTrackerImpl;

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const-class p1, Landroid/os/storage/StorageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManagerInternal;

    new-instance v0, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$CloudProviderChangeListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManagerInternal;->registerCloudProviderChangeListener(Landroid/os/storage/StorageManagerInternal$CloudProviderChangeListener;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p1, "package"

    invoke-virtual {v5, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo p1, "android.intent.action.UID_REMOVED"

    invoke-direct {v9, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo p1, "android.intent.action.USER_REMOVED"

    invoke-direct {v9, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "android.intent.action.USER_ADDED"

    invoke-virtual {v9, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Lcom/android/server/job/JobSchedulerService$3;

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mUidObserver:Lcom/android/server/job/JobSchedulerService$4;

    const/16 v2, 0xf

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v0, p1, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p1, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Lcom/android/server/job/JobConcurrencyManager$1;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    const-string v3, "JobScheduler.Concurrency"

    invoke-interface {v0, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iget-object v0, p1, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/job/JobConcurrencyManager;->onInteractiveStateChanged(Z)V

    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore;->removeJobsOfUnlistedUsers([I)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter p1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_2
    if-ltz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobRestrictions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/restrictions/JobRestriction;

    invoke-virtual {v0}, Lcom/android/server/job/restrictions/JobRestriction;->onSystemServicesReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :cond_2
    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {v0}, Lcom/android/server/job/JobConcurrencyManager;->onThirdPartyAppsCanStart()V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    new-instance v2, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public final onControllerStateChanged(Landroid/util/ArraySet;)V
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v2

    :try_start_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_2
    return-void
.end method

.method public final onRestrictionStateChanged(Lcom/android/server/job/restrictions/JobRestriction;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public final onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    if-nez p1, :cond_0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V
    .locals 0

    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->appendInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManagerInternal;->isEarlyPackageKillEnabledForUserSwitch(II)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/util/jobs/ArrayUtils;->removeInt([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:[I

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final queueReadyJobsForExecutionLocked()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mChangedJobList:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const-string v0, "JobScheduler"

    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v3, "queuing all ready jobs for execution:"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->clearPendingJobQueue()V

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->stopNonReadyActiveJobsLocked()V

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mReadyQueueFunctor:Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;

    invoke-virtual {v3, v4}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Consumer;)V

    iget-object v3, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    sub-int/2addr v6, v1

    :goto_0
    if-ltz v6, :cond_1

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v7, v3, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v7, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1, v3}, Lcom/android/server/job/PendingJobQueue;->addAll(Landroid/util/ArraySet;)V

    iget-object v1, v4, Lcom/android/server/job/JobSchedulerService$ReadyJobQueueFunctor;->newReadyJobs:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    if-nez p0, :cond_2

    const-string/jumbo p0, "No jobs pending."

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " jobs queued."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final reportActiveLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget v0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v2, v2, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1
    if-ltz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->canRunInDoze()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eq v0, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_3

    invoke-interface {p0, v1}, Lcom/android/server/DeviceIdleInternal;->setJobsActive(Z)V

    :cond_3
    return-void
.end method

.method public final resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final scheduleAsPackage(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 89

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    const-string v1, "Apps may not persist more than "

    const-string/jumbo v2, "Too many JWIs for uid "

    const-string/jumbo v3, "Too many jobs for uid "

    const-string/jumbo v4, "SCHEDULE: "

    const-string v5, "ForceExecuteJob: "

    const-string v7, "Apps may not persist more than "

    const-string/jumbo v11, "Too many JWIs for uid "

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v12

    const/16 v16, 0x2

    const/16 v17, 0x0

    if-eqz v12, :cond_b

    if-nez v9, :cond_0

    move-object v12, v13

    :goto_0
    const/16 v18, 0x1

    goto :goto_1

    :cond_0
    move-object v12, v9

    goto :goto_0

    :goto_1
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v15, ".schedulePersisted()"

    invoke-virtual {v14, v10, v12, v15}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v15, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v14, v10, v12, v15}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "JobScheduler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v19, v1

    const-string v1, "-"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has called schedule() too many times"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v14, ".schedulePersisted out-of-quota logged"

    invoke-virtual {v1, v10, v12, v14}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_1
    move-object/from16 v19, v1

    :goto_2
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mAppStandbyInternal:Lcom/android/server/usage/AppStandbyInternal;

    const/4 v14, 0x4

    invoke-interface {v1, v12, v10, v14}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_THROW_EXCEPTION:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_4

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v14

    move-object v15, v2

    move-object/from16 v20, v3

    const-wide/16 v2, 0x0

    invoke-interface {v14, v12, v2, v3, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    move/from16 v2, v18

    goto :goto_3

    :cond_2
    move/from16 v2, v17

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_3
    :try_start_2
    monitor-exit v1

    return v17

    :goto_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    move-object v15, v2

    move-object/from16 v20, v3

    :goto_5
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    new-instance v1, Landroid/os/LimitExceededException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "schedule()/enqueue() called more than "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    const-string/jumbo v5, "Limit for "

    iget-object v14, v3, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_3
    iget-object v3, v3, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times in the past "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string/jumbo v3, "Limit for "

    iget-object v5, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v0, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string/jumbo v0, "ms. See the documentation for more information."

    invoke-static {v2, v3, v4, v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_6
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_6
    :try_start_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not defined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_7
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :goto_8
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_7
    move-object v15, v2

    move-object/from16 v20, v3

    :cond_8
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_RETURN_FAILURE_RESULT:Z

    if-eqz v1, :cond_a

    return v17

    :cond_9
    move-object/from16 v19, v1

    move-object v15, v2

    move-object/from16 v20, v3

    :cond_a
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    const-string v2, ".schedulePersisted()"

    invoke-virtual {v1, v10, v12, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->noteEvent(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    :cond_b
    move-object/from16 v19, v1

    move-object v15, v2

    move-object/from16 v20, v3

    const/16 v18, 0x1

    :goto_9
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v8, v13}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v0, "JobScheduler"

    const-string/jumbo v1, "Not scheduling job for "

    const-string v2, ":"

    invoke-static {v8, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- package not allowed to start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_schedule_failure_app_start_mode_disabled"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return v17

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJobEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sJobMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getMinimumNetworkChunkBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    if-eqz v6, :cond_d

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkDownloadBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sInitialJwiEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkUploadBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sJwiMinimumChunkKBLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getMinimumNetworkChunkBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v8, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    :cond_d
    if-eqz v6, :cond_e

    const-string/jumbo v1, "job_scheduler.value_cntr_w_uid_job_work_items_enqueued"

    invoke-static {v1, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_e
    iget-object v14, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_8
    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    move-object/from16 v3, p6

    invoke-virtual {v1, v8, v2, v3}, Lcom/android/server/job/JobStore$JobSet;->get(IILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    if-eqz v6, :cond_13

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    move-object/from16 v12, p1

    invoke-virtual {v2, v12}, Landroid/app/job/JobInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-lt v2, v3, :cond_10

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_a

    :cond_f
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " JobWorkItems per job"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_3
    move-exception v0

    goto/16 :goto_13

    :cond_10
    :goto_a
    invoke-virtual {v1, v6}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    and-int/lit8 v2, v2, -0x7

    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    :cond_11
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;)V

    monitor-exit v14

    return v18

    :cond_12
    move-object v11, v3

    move-object v7, v12

    move-object/from16 v12, p7

    goto :goto_b

    :cond_13
    move-object/from16 v7, p1

    move-object/from16 v12, p7

    move-object v11, v3

    :goto_b
    invoke-static/range {v7 .. v12}, Lcom/android/server/job/controllers/JobStatus;->createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/server/job/JobSchedulerService;->mMediaProviderForceReadyOnce:Z

    if-eqz v3, :cond_14

    if-eqz v6, :cond_14

    const-string/jumbo v3, "com.google.android.providers.media.module"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.google.android.providers.media.module"

    const-string/jumbo v9, "com.android.providers.media.MediaService"

    invoke-direct {v3, v7, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string/jumbo v3, "com.android.providers.media.action.SCAN_VOLUME"

    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move/from16 v3, v17

    iput-boolean v3, v0, Lcom/android/server/job/JobSchedulerService;->mMediaProviderForceReadyOnce:Z

    move/from16 v3, v18

    iput-boolean v3, v2, Lcom/android/server/job/controllers/JobStatus;->mIsForceExecuteJob:Z

    const-string v3, "JobScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mQuotaController:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v3, v2}, Lcom/android/server/job/controllers/QuotaController;->isWithinEJQuotaLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_schedule_failure_ej_out_of_quota"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    monitor-exit v14

    const/16 v17, 0x0

    return v17

    :cond_15
    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mIsUidActivePredicate:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/JobStatus;->maybeAddForegroundExemption(Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda1;)V

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v3, :cond_16

    const-string v3, "JobScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez p4, :cond_18

    iget-object v3, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, v8}, Lcom/android/server/job/JobStore;->countJobsForUid(I)I

    move-result v3

    const/16 v4, 0x96

    if-gt v3, v4, :cond_17

    goto :goto_c

    :cond_17
    const-string v0, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "job_scheduler.value_cntr_w_uid_max_scheduling_limit_hit"

    invoke-static {v0, v8}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Apps may not schedule more than 150 distinct jobs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_c
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->prepareLocked()V

    const/4 v7, 0x0

    if-eqz v1, :cond_1b

    if-eqz v6, :cond_1a

    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v4, v4, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    if-ge v3, v4, :cond_19

    goto :goto_d

    :cond_19
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v0, v0, Lcom/android/server/job/JobSchedulerService$Constants;->MAX_NUM_PERSISTED_JOB_WORK_ITEMS:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " JobWorkItems per job"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    :goto_d
    const-string/jumbo v5, "job rescheduled by app"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobImplLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)V

    goto :goto_e

    :cond_1b
    invoke-virtual {v0, v2, v7}, Lcom/android/server/job/JobSchedulerService;->startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :goto_e
    if-eqz v6, :cond_1c

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->enqueueWorkLocked(Landroid/app/job/JobWorkItem;)V

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sEnqueuedJwiHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v8, v3}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    :cond_1c
    iget v1, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-boolean v3, v2, Lcom/android/server/job/controllers/JobStatus;->mIsProxyJob:Z

    if-eqz v3, :cond_1d

    filled-new-array {v1, v8}, [I

    move-result-object v1

    :goto_f
    move-object/from16 v20, v1

    goto :goto_10

    :cond_1d
    filled-new-array {v1}, [I

    move-result-object v1

    goto :goto_f

    :goto_10
    if-eqz v3, :cond_1e

    iget-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    filled-new-array {v7, v1}, [Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object/from16 v21, v1

    goto :goto_12

    :cond_1e
    iget-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :goto_12
    iget-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    iget-wide v4, v2, Lcom/android/server/job/controllers/JobStatus;->mLoggingJobId:J

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v28

    move/from16 v6, v16

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v29

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v30

    const/high16 v6, -0x80000000

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v31

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v32

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/android/server/job/controllers/JobStatus;->hasConstraint(I)Z

    move-result v33

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v34

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v35

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v36

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v39

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v40

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v41

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v42

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v43

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v55

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v57

    iget-object v6, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v58

    iget-wide v6, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    iget-wide v8, v2, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getWorkCount()I

    move-result v64

    iget-object v10, v0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    iget v11, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-static {v10}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v65

    iget-object v10, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespaceHash:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v75

    iget-object v11, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v77

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v79

    iget-boolean v11, v2, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    iget v12, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    iget v13, v2, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredTraceTag()Ljava/lang/String;

    move-result-object v84

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getFilteredDebugTags()[Ljava/lang/String;

    move-result-object v85

    iget v15, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    move-object/from16 v22, v1

    iget-object v1, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v1

    const/16 v18, 0x1

    add-int/lit8 v87, v1, 0x1

    iget v1, v2, Lcom/android/server/job/controllers/JobStatus;->mNumAbandonedFailures:I

    move/from16 v25, v3

    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/job/JobSchedulerService;->shouldUseAggressiveBackoff(II)Z

    move-result v88

    const-wide/16 v73, 0x0

    const/16 v80, 0x0

    const/16 v19, 0x8

    const/16 v23, 0x2

    const/16 v24, -0x1

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v53, 0x0

    const/16 v56, 0x0

    const-wide/16 v67, 0x0

    const-wide/16 v69, 0x0

    const-wide/16 v71, 0x0

    move-wide/from16 v26, v4

    move-wide/from16 v60, v6

    move-wide/from16 v62, v8

    move-object/from16 v66, v10

    move/from16 v81, v11

    move/from16 v82, v12

    move/from16 v83, v13

    move/from16 v86, v15

    invoke-static/range {v19 .. v88}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[I[Ljava/lang/String;Ljava/lang/String;IIIJZZZZZZZZZZIZIIIJZZZZZZZZJZZZJJJIILjava/lang/String;JJJJJJZZZIILjava/lang/String;[Ljava/lang/String;IIZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService;->isReadyToBeExecutedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    iget-object v1, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    invoke-virtual {v1, v2}, Lcom/android/server/job/PendingJobQueue;->add(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    :cond_1f
    monitor-exit v14

    const/16 v18, 0x1

    return v18

    :goto_13
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public final setFlexPolicy(IZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setFlexPolicy(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController;->setLocalPolicyForTesting(IZ)V

    return-void
.end method

.method public final shouldUseAggressiveBackoff(II)Z
    .locals 2

    const-wide/32 v0, 0x163457ac

    invoke-static {v0, v1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->ABANDONED_JOB_TIMEOUTS_BEFORE_AGGRESSIVE_BACKOFF:I

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final startTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6

    iget-boolean v0, p1, Lcom/android/server/job/controllers/JobStatus;->prepared:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Not yet prepared when started tracking: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v4, v3, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    iget v5, v3, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    if-ge v5, v4, :cond_2

    iput v4, v3, Lcom/android/server/job/JobStore;->mScheduledJob30MinHighWaterMark:I

    :cond_2
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    iget v5, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v3}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_3
    sget-boolean v0, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Added job status to store: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "JobStore"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonsCache(Lcom/android/server/job/controllers/JobStatus;)V

    iget-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz v0, :cond_6

    :goto_1
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final stopNonReadyActiveJobsLocked()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v3, v4}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    iget v1, v3, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    const/16 v4, 0xc

    if-ne v1, v4, :cond_1

    const/4 v3, 0x6

    const-string/jumbo v4, "cancelled due to restricted bucket"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget v1, v3, Lcom/android/server/job/controllers/JobStatus;->mReasonReadyToUnready:I

    const-string/jumbo v3, "cancelled due to unsatisfied constraints"

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1, v3}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "restricted due to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final stopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iput-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p2, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    iput v1, p2, Lcom/android/server/job/controllers/JobStatus;->nextPendingWorkId:I

    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    goto :goto_3

    :cond_3
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v5}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobWorkItem;

    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v5}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobReasonsCache:Landroid/util/SparseArrayMap;

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_8
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    iget-object v2, v1, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    invoke-virtual {v2, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-boolean p3, Lcom/android/server/job/JobStore;->DEBUG:Z

    if-eqz p3, :cond_9

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t remove job: didn\'t exist: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "JobStore"

    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v2, v0

    goto :goto_5

    :cond_a
    iget v3, v1, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/job/JobStore;->mCurrentJobSetSize:I

    if-eqz p3, :cond_b

    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p3}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-object p3, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    invoke-virtual {p3, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v1}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    :cond_b
    :goto_5
    if-nez v2, :cond_c

    const-string p3, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Job didn\'t exist in JobStore: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean p3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-eqz p3, :cond_d

    :goto_6
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_d

    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    return v2

    :goto_7
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateQuotaTracker()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-boolean v2, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_API_QUOTAS:Z

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService$Constants;->ENABLE_EXECUTION_SAFEGUARDS_UDC:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v2, v0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-ne v3, v1, :cond_2

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    iput-boolean v1, v0, Lcom/android/server/utils/quota/QuotaTracker;->mIsEnabled:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_SCHEDULE_PERSISTED:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->API_QUOTA_SCHEDULE_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_UIJ:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_UIJ_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_EJ:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_EJ_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_REG:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_REG_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_TIMEOUT_TOTAL:Lcom/android/server/utils/quota/Category;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v3, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_TOTAL_COUNT:I

    iget-wide v4, v2, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_TIMEOUT_WINDOW_MS:J

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mQuotaTracker:Lcom/android/server/utils/quota/CountQuotaTracker;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->QUOTA_TRACKER_CATEGORY_ANR:Lcom/android/server/utils/quota/Category;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget v2, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_COUNT:I

    iget-wide v3, p0, Lcom/android/server/job/JobSchedulerService$Constants;->EXECUTION_SAFEGUARDS_UDC_ANR_WINDOW_MS:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/utils/quota/CountQuotaTracker;->setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final updateUidState(III)V
    .locals 8

    const-string/jumbo v0, "UID "

    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "JobScheduler"

    const-string/jumbo v3, "UID "

    const-string v4, " proc state changed to "

    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with capabilities="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    const/4 v5, 0x2

    const/16 v6, 0x28

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    const/4 v5, 0x4

    if-gt p2, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v7, 0x23

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x5

    if-gt p2, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    const/16 v7, 0x1e

    invoke-virtual {v5, p1, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_0
    if-eqz p3, :cond_5

    const/16 v5, 0x14

    if-ne p2, v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :goto_2
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq v3, p2, :cond_a

    if-eqz v1, :cond_6

    const-string p3, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bias changed from "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v4, p3, :cond_7

    iget-object p3, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p3, p1, v3, p2}, Lcom/android/server/job/controllers/StateController;->onUidBiasChangedLocked(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v3, v6, :cond_8

    if-eq p2, v6, :cond_8

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    iget p1, p1, Lcom/android/server/job/PendingJobQueue;->mSize:I

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->assignJobsToContextsLocked()V

    :cond_a
    :goto_4
    monitor-exit v2

    return-void

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public waitOnAsyncLoadingForTesting()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mStartControllerTrackingLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    return-void
.end method
