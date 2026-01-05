.class public final Lcom/android/server/job/controllers/ConnectivityController;
.super Lcom/android/server/job/controllers/RestrictingController;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# static fields
.field public static final DEBUG:Z

.field static final TRANSPORT_AFFINITY_AVOID:I = 0x2

.field static final TRANSPORT_AFFINITY_PREFER:I = 0x1

.field static final TRANSPORT_AFFINITY_UNDEFINED:I

.field static final sNetworkTransportAffinities:Landroid/util/SparseIntArray;


# instance fields
.field public final mAvailableNetworks:Landroid/util/ArrayMap;

.field public final mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

.field public final mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

.field public final mConnManager:Landroid/net/ConnectivityManager;

.field public final mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

.field public final mDefaultNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

.field public final mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

.field public final mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

.field public final mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

.field public mLastAllJobUpdateTimeElapsed:J

.field public mLastCallbackAdjustmentTimeElapsed:J

.field public final mNetPolicyListener:Lcom/android/server/job/controllers/ConnectivityController$4;

.field public final mNetPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

.field public final mNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

.field public final mRequestedWhitelistJobs:Landroid/util/SparseArray;

.field public final mSignalStrengths:Landroid/util/SparseArray;

.field public final mSortedStats:Ljava/util/List;

.field public mSystemDefaultNetwork:Landroid/net/Network;

.field public final mTrackedJobs:Landroid/util/SparseArray;

.field public final mUidStats:Landroid/util/SparseArray;

.field public final mUidStatsComparator:Lcom/android/server/job/controllers/ConnectivityController$1;


# direct methods
.method public static -$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-virtual {p0, v1, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    iput-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastCallbackAdjustmentTimeElapsed:J

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_d

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    cmp-long v6, v6, v2

    if-gez v6, :cond_b

    const-wide v6, 0x7fffffffffffffffL

    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iput-wide v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iput v1, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    move v6, v1

    :goto_1
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    const/high16 v8, 0x10000000

    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    :cond_3
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    if-nez v8, :cond_5

    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    goto :goto_3

    :cond_5
    :goto_2
    iget-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    :cond_6
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v8

    if-nez v8, :cond_9

    iget-boolean v8, v7, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    goto :goto_5

    :cond_8
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    goto :goto_5

    :cond_9
    :goto_4
    iget v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    iput-wide v2, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    :cond_b
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    :goto_6
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Lcom/android/server/job/controllers/ConnectivityController$1;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_11

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    const/16 v5, 0x7d

    if-lt v1, v5, :cond_e

    iget v5, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_9

    :cond_e
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    check-cast v5, Landroid/util/Pools$SimplePool;

    invoke-virtual {v5}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v5, :cond_f

    new-instance v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    invoke-direct {v5, p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    :cond_f
    iget v4, v4, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iput v4, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-virtual {v6, v4, v5, v7}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    :cond_10
    :goto_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_11
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_12

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, v0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_12
    :goto_a
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Connectivity"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStatsComparator:Lcom/android/server/job/controllers/ConnectivityController$1;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/Pools$SimplePool;

    const/16 v0, 0x7d

    invoke-direct {p1, v0}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    new-instance p1, Lcom/android/server/job/controllers/ConnectivityController$2;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;I)V

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;-><init>(Lcom/android/server/job/controllers/ConnectivityController;I)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

    new-instance v0, Lcom/android/server/job/controllers/ConnectivityController$4;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/ConnectivityController$4;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyListener:Lcom/android/server/job/controllers/ConnectivityController$4;

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;-><init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    iput-boolean v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    const-wide/16 v2, 0x2710

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    const-wide/32 v2, 0x1c61a0

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicyManager;

    iput-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    const-class v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    iput-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    iput-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo p1, "android.hardware.type.watch"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    return-void
.end method

.method public static calculateTransferTimeMs(JJ)J
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    mul-long/2addr p2, v0

    const-wide/16 v0, 0x8

    div-long/2addr p2, v0

    div-long/2addr p0, p2

    return-wide p0

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;
    .locals 6

    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object p0

    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_1

    aget v2, p0, v3

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-class v0, Lcom/android/server/job/controllers/ConnectivityController;

    const-string v0, "ConnectivityController"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-boolean v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "conn_avoid_undefined_transport_affinity"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    const-string/jumbo v2, "conn_network_activation_expiration_ms"

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$Constants$$ExternalSyntheticOutline0;->m(JLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo v0, "conn_network_activation_max_wait_time_ms"

    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 8

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "Aconfig flags:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v3, "com.android.server.job.relax_prefetch_connectivity_constraint_only_on_charger"

    invoke-virtual {p1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const-string/jumbo v2, "Requested standby exceptions:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    const-string v4, " "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " ("

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " jobs)"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const-string v4, ": "

    if-lez v2, :cond_3

    const-string v2, "Available networks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "No available networks"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_5

    const-string/jumbo v2, "Subscription ID signal strengths:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    :goto_3
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    iget v5, v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    :cond_5
    const-string/jumbo v2, "No cached signal strengths"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "Background metered allowed: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_6
    const-string v2, "Current default network callbacks:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    :goto_5
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    sget v6, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->$r8$clinit:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "UID: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v6, "; "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    if-nez v6, :cond_7

    const-string/jumbo v5, "No network"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    const-string/jumbo v6, "Network: "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    const-string v6, " (blocked="

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v5, v5, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ")"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "UID Pecking Order:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v2, v3

    :goto_7
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "UidStats{"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "uid"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string/jumbo v7, "pri"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#run"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#readyWithConn"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#netAvail"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#EJs"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRegular:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "#reg"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget-wide v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "earliestEnqueue"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget-wide v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "earliestEJEnqueue"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    iget-wide v6, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "earliestUIJEnqueue"

    invoke-virtual {p1, v7, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const-string/jumbo v6, "updated="

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v5, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->lastUpdatedElapsed:J

    sub-long/2addr v5, v0

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string/jumbo v5, "}"

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_9
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    move v0, v3

    :goto_8
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    move v2, v3

    :goto_9
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p2, v5}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_a

    :cond_a
    const-string v6, "#"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    const-string v6, " from "

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    return-void
.end method

.method public final dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;)V
    .locals 13

    const-wide v0, 0x20b00000004L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const-wide v7, 0x20500000003L

    invoke-virtual {p1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    move v7, v4

    :goto_2
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p2, v8}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    const-wide v9, 0x20b00000002L

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    const-wide v11, 0x10b00000001L

    invoke-virtual {v8, p1, v11, v12}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v11, 0x10500000002L

    iget v8, v8, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p1, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    const/high16 v3, 0x10000000

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    const-string/jumbo v3, "evaluateStateLocked finds job "

    const-string v4, "JobScheduler.Connectivity"

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " would be ready."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void

    :cond_7
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " would not be ready."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method

.method public getCcConfig()Lcom/android/server/job/controllers/ConnectivityController$CcConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    return-object p0
.end method

.method public final getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    iget p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v3, 0x1e

    const v4, -0x30048

    const-string v5, "JobScheduler.Connectivity"

    if-ge p0, v3, :cond_7

    iget-object p0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "Using UI bypass for "

    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    move-result p0

    if-nez p0, :cond_5

    iget-boolean p0, p1, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string/jumbo p0, "Using BG bypass for "

    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v4, -0x41

    goto :goto_2

    :cond_5
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string/jumbo p0, "Using EJ bypass for "

    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/16 v4, -0x48

    goto :goto_2

    :cond_7
    :goto_1
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_8

    const-string/jumbo p0, "Using FG bypass for "

    invoke-static {v2, p0, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget p0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mBlockedReasons:I

    and-int/2addr p0, v4

    if-nez p0, :cond_9

    iget-object p0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    return-object p0

    :cond_9
    return-object v1
.end method

.method public final getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "UidStats was null after job for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " was registered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "JobScheduler.Connectivity"

    invoke-static {p3, p2}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    invoke-direct {p2, p1}, Lcom/android/server/job/controllers/ConnectivityController$UidStats;-><init>(I)V

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public final isNetworkAvailable(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Network;

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v5

    sget-boolean v6, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "JobScheduler.Connectivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNetworkAvailable("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") with network "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and capabilities "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Satisfied="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-wide v7, v6, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    add-long/2addr v7, v4

    cmp-long v7, v7, v2

    const/4 v8, 0x1

    if-lez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-wide v9, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->capabilitiesFirstAcquiredTimeElapsed:J

    iget-wide v6, v6, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    sub-long v6, v2, v6

    cmp-long v9, v9, v6

    if-gez v9, :cond_2

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    move v4, v8

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    if-nez v5, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v5, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_a

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Substituting system default network "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for VPN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.Connectivity"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z

    move-result p0

    return p0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v8

    :goto_1
    if-ltz p1, :cond_a

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    return v8

    :cond_7
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_8
    iget-wide v5, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-wide v9, p1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    add-long/2addr v9, v5

    cmp-long p1, v9, v2

    if-gez p1, :cond_b

    iget-wide v9, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    cmp-long p1, v5, v9

    if-lez p1, :cond_9

    goto :goto_3

    :cond_9
    iput-wide v2, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isDefaultNetworkActive()Z

    move-result p0

    if-eqz p0, :cond_a

    iput-wide v2, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    return v8

    :cond_a
    :goto_3
    return v4

    :cond_b
    :goto_4
    return v1
.end method

.method public isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz p2, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    const/16 v20, 0x0

    goto/16 :goto_10

    :cond_1
    const/16 v6, 0x15

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v6, v0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v1}, Lcom/android/server/job/JobSchedulerService;->getMaxJobExecutionTimeMs(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v7

    iget-wide v9, v1, Lcom/android/server/job/controllers/JobStatus;->mMinimumNetworkChunkBytes:J

    const-wide/16 v11, -0x1

    cmp-long v13, v9, v11

    const-string/jumbo v14, "ms to run; that\'s insane!"

    const-string/jumbo v15, "ms and job has "

    move-wide/from16 v16, v11

    const-string v11, " kbps network would take "

    const-string v12, "JobScheduler.Connectivity"

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    if-eqz v13, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    int-to-long v5, v6

    cmp-long v21, v5, v18

    const-string v13, " bytes over "

    const-string/jumbo v2, "Minimum chunk "

    if-lez v21, :cond_2

    invoke-static {v9, v10, v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v0

    cmp-long v21, v0, v7

    if-lez v21, :cond_2

    invoke-static {v2, v9, v10, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v0, v1, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v20

    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    int-to-long v0, v0

    cmp-long v5, v0, v18

    if-lez v5, :cond_3

    invoke-static {v9, v10, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v5

    cmp-long v21, v5, v7

    if-lez v21, :cond_3

    invoke-static {v2, v9, v10, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v2, v11, v5, v6, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v20

    :cond_3
    :goto_1
    move-object/from16 v1, p1

    :cond_4
    const/16 v13, 0xb

    goto/16 :goto_2

    :cond_5
    const/16 v13, 0xb

    invoke-virtual {v3, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move-object/from16 v1, p1

    iget-wide v5, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    cmp-long v0, v5, v16

    const-string v2, "Estimated "

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    int-to-long v9, v0

    cmp-long v0, v9, v18

    if-lez v0, :cond_7

    move-object v0, v14

    invoke-static {v5, v6, v9, v10}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v13

    cmp-long v21, v13, v7

    if-lez v21, :cond_8

    const-string v1, " download bytes over "

    invoke-static {v2, v5, v6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1, v11, v13, v14, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v20

    :cond_7
    move-object v0, v14

    :cond_8
    iget-wide v5, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v9, v5, v16

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v9

    int-to-long v9, v9

    cmp-long v13, v9, v18

    if-lez v13, :cond_4

    invoke-static {v5, v6, v9, v10}, Lcom/android/server/job/controllers/ConnectivityController;->calculateTransferTimeMs(JJ)J

    move-result-wide v13

    cmp-long v21, v13, v7

    if-lez v21, :cond_4

    const-string v1, " upload bytes over "

    invoke-static {v2, v5, v6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v1, v11, v13, v14, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v20

    :goto_2
    invoke-virtual {v3, v13}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_9

    const/16 v0, 0x19

    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move-object/from16 v6, p0

    goto :goto_4

    :cond_a
    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v7, v0}, Lcom/android/server/job/JobSchedulerService;->getUidProcState(I)I

    move-result v7

    iget-object v8, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    iget-object v9, v8, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, v8, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    move/from16 v10, v20

    invoke-virtual {v8, v0, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, -0x1

    const/4 v10, 0x6

    if-eq v7, v9, :cond_b

    if-ge v7, v10, :cond_b

    invoke-static {v7, v8}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v9

    if-eqz v9, :cond_b

    move v9, v5

    goto :goto_3

    :cond_b
    const/4 v9, 0x0

    :goto_3
    sget-boolean v11, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v11, :cond_c

    const-string v12, "JobScheduler.Connectivity"

    const-string/jumbo v14, "UID "

    const-string v15, " current state allows metered network="

    const-string v13, " procState="

    invoke-static {v0, v14, v15, v13, v9}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " capabilities="

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v9, :cond_d

    :goto_4
    move v0, v5

    goto/16 :goto_6

    :cond_d
    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v7

    and-int/2addr v7, v5

    if-eqz v7, :cond_f

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result v7

    or-int/2addr v7, v8

    invoke-static {v2, v7}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v9

    if-eqz v11, :cond_e

    const-string v12, "JobScheduler.Connectivity"

    const-string/jumbo v13, "UID "

    const-string v14, " willBeForeground flag allows metered network="

    const-string v15, " capabilities="

    invoke-static {v0, v13, v14, v15, v9}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v9, :cond_f

    goto :goto_4

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    move-result v7

    if-eqz v7, :cond_11

    or-int/lit8 v7, v8, 0x20

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->getDefaultProcessNetworkCapabilities(I)I

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v10, v7}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(II)Z

    move-result v8

    if-eqz v11, :cond_10

    const-string v9, "JobScheduler.Connectivity"

    const-string/jumbo v10, "UID "

    const-string v12, " UI job state allows metered network="

    const-string v13, " capabilities="

    invoke-static {v0, v10, v12, v13, v8}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, v7, v9}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_10
    if-eqz v8, :cond_11

    goto :goto_4

    :cond_11
    iget-object v7, v6, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_12

    iget-object v7, v6, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    goto :goto_6

    :cond_12
    iget-object v7, v6, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v7, v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackgroundStatus(I)I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_13

    move v7, v5

    goto :goto_5

    :cond_13
    const/4 v7, 0x0

    :goto_5
    if-eqz v11, :cond_14

    const-string v8, "JobScheduler.Connectivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "UID "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " allowed in data saver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v8, v6, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v0, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v0, v7

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_6
    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v0

    iget v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_CONGESTION_DELAY_FRAC:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_16

    move v0, v5

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_17

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    const/16 v7, 0x190

    if-lt v0, v7, :cond_19

    :cond_18
    :goto_8
    move v10, v5

    goto/16 :goto_a

    :cond_19
    iget-boolean v7, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_USE_CELL_SIGNAL_STRENGTH:Z

    if-nez v7, :cond_1a

    goto :goto_8

    :cond_1a
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v7

    if-nez v7, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v10, 0x0

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "JobScheduler.Connectivity"

    if-eqz v7, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, v6, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    if-eqz v9, :cond_1d

    iget v7, v9, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v10, v7

    goto :goto_9

    :cond_1d
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Subscription ID "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " doesn\'t have a registered callback"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_1e
    sget-boolean v2, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v2, :cond_1f

    const-string v2, "Cell signal strength for job="

    invoke-static {v10, v2, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1f
    iget-object v2, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    if-gt v10, v5, :cond_24

    const/16 v7, 0x12c

    if-le v0, v7, :cond_20

    goto :goto_8

    :cond_20
    if-ge v0, v7, :cond_22

    :cond_21
    const/4 v10, 0x0

    goto :goto_a

    :cond_22
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_23
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v0

    iget v2, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_21

    goto/16 :goto_8

    :cond_24
    const/4 v7, 0x2

    if-gt v10, v7, :cond_18

    const/16 v7, 0xc8

    if-lt v0, v7, :cond_25

    goto/16 :goto_8

    :cond_25
    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v2}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_8

    :cond_26
    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2, v5}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    :goto_a
    if-nez v10, :cond_27

    goto/16 :goto_0

    :cond_27
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEffectiveStandbyBucket()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_28

    const/high16 v0, 0x1000000

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    goto :goto_b

    :cond_28
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    :goto_b
    if-eqz v0, :cond_29

    goto :goto_f

    :cond_29
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    if-ne v0, v2, :cond_2a

    goto :goto_c

    :cond_2a
    iget-wide v7, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkDownloadBytes:J

    cmp-long v0, v7, v18

    if-gtz v0, :cond_2c

    :cond_2b
    :goto_c
    const/4 v10, 0x0

    goto :goto_e

    :cond_2c
    iget-object v0, v6, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryCharging()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->isBatteryNotLow()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_c

    :cond_2d
    iget-object v0, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/ConnectivityController;->copyCapabilities(Landroid/net/NetworkRequest;)Landroid/net/NetworkCapabilities$Builder;

    move-result-object v0

    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities$Builder;->removeCapability(I)Landroid/net/NetworkCapabilities$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getFractionRunTime()F

    move-result v0

    iget v2, v4, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_PREFETCH_RELAX_FRAC:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2b

    iget-object v0, v6, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J

    move-result-wide v2

    iget-wide v0, v1, Lcom/android/server/job/controllers/JobStatus;->mTotalNetworkUploadBytes:J

    cmp-long v4, v0, v16

    if-nez v4, :cond_2e

    goto :goto_d

    :cond_2e
    move-wide/from16 v18, v0

    :goto_d
    add-long v7, v7, v18

    cmp-long v0, v2, v7

    if-ltz v0, :cond_2b

    move v10, v5

    :goto_e
    if-eqz v10, :cond_0

    :goto_f
    return v5

    :cond_2f
    const/16 v20, 0x0

    :goto_10
    return v20
.end method

.method public isStandbyExceptionRequestedLocked(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    const-string v2, "JobScheduler.Connectivity"

    if-nez v1, :cond_1

    const-string/jumbo p0, "maybeRevokeStandbyExceptionLocked found null jobs array even though a standby exception has been requested."

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string/jumbo p1, "Revoking standby exception for UID: "

    invoke-static {v0, p1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void

    :cond_4
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "maybeRevokeStandbyExceptionLocked not revoking because there are still "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobs left."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public final maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p2

    const/high16 v1, 0x10000000

    invoke-virtual {p0, p1, v1}, Lcom/android/server/job/controllers/StateController;->wouldBeReadyWithConstraintLocked(Lcom/android/server/job/controllers/JobStatus;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_1

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_2
    return-void
.end method

.method public final maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p2

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    sub-int/2addr v0, v1

    iput v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget-object p2, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->maybeRevokeStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_1
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    :cond_0
    return-void
.end method

.method public final onBatteryStateChangedLocked()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onConstantsUpdatedLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean v1, v1, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/ConnectivityController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onNetworkActive()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    if-nez v1, :cond_0

    const-string p0, "JobScheduler.Connectivity"

    const-string/jumbo v1, "System default network is unknown but active"

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    if-nez v1, :cond_1

    const-string p0, "JobScheduler.Connectivity"

    const-string/jumbo v1, "System default network capabilities are unknown but active"

    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidBiasChangedLocked(III)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    if-eqz p1, :cond_0

    iget p2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p2, p3, :cond_0

    iput p3, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_0
    return-void
.end method

.method public final onUserRemovedLocked(I)V
    .locals 5

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_0

    iget v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->unregisterDefaultNetworkCallbackLocked(IJ)Z

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    return-void
.end method

.method public final postAdjustCallbacks()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final prepareForUpdatedConstantsLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p0, v0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mFlexIsEnabled:Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "conn_avoid_undefined_transport_affinity"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "conn_network_activation_max_wait_time_ms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "conn_network_activation_expiration_ms"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, p2, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    if-eq p2, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    iput-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return-void

    :pswitch_1
    const-wide/32 v2, 0x1c61a0

    invoke-virtual {p1, p2, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iget-wide v2, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_3

    iput-wide p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_MAX_WAIT_TIME_MS:J

    iput-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->mShouldReprocessNetworkCapabilities:Z

    return-void

    :pswitch_2
    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    iput-wide p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->NETWORK_ACTIVATION_EXPIRATION_MS:J

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48c9c28f -> :sswitch_2
        0x1f3fb46e -> :sswitch_1
        0x3c4b114a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final reevaluateStateLocked(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController;->evaluateStateLocked(Lcom/android/server/job/controllers/JobStatus;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final registerPendingUidCallbacksLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "There are more registered callbacks than sorted UIDs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.Connectivity"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_2

    const/16 v2, 0x7d

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    check-cast v3, Landroid/util/Pools$SimplePool;

    invoke-virtual {v3}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    invoke-direct {v3, p0}, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    :cond_1
    iget v4, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    iput v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    iget v2, v2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->uid:I

    invoke-virtual {v4, v2, v3, v5}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallbackForUid(ILandroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestStandbyExceptionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/ConnectivityController;->isStandbyExceptionRequestedLocked(I)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-nez v2, :cond_0

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController;->mRequestedWhitelistJobs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, "JobScheduler.Connectivity"

    if-eqz p1, :cond_3

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string/jumbo p1, "Requesting standby exception for UID: "

    invoke-static {v0, p1, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mNetPolicyManagerInternal:Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    return-void

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string/jumbo p0, "requestStandbyExceptionLocked found exception already requested."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final startTrackingLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallback:Lcom/android/server/job/controllers/ConnectivityController$2;

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    return-void
.end method

.method public final startTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    return-void
.end method

.method public final stopTrackingRestrictedJobLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_0
    return-void
.end method

.method public final unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    :cond_0
    return-void
.end method

.method public final unregisterDefaultNetworkCallbackLocked(IJ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController;->mDefaultNetworkCallbackPool:Landroid/util/Pools$Pool;

    check-cast v2, Landroid/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    const/16 v2, -0x2710

    iput v2, v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mUid:I

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    or-int/2addr v1, p0

    add-int/lit8 v0, v0, -0x1

    move-object p0, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final updateAllTrackedJobsLocked(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, p1, Lcom/android/server/job/JobSchedulerService$Constants;->CONN_UPDATE_ALL_JOBS_MIN_INTERVAL_MS:J

    add-long/2addr v1, v3

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mHandler:Lcom/android/server/job/controllers/ConnectivityController$CcHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mLastAllJobUpdateTimeElapsed:J

    return-void
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 7

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/job/controllers/ConnectivityController;->getUidStats(ILjava/lang/String;Z)Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSortedStats:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0x7d

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->registerPendingUidCallbacksLocked()V

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    return-void

    :cond_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    return-void
.end method

.method public final updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_0
    iget-object v2, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p0, v4}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_1
    iget-object v5, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    invoke-virtual {p0, p1, v4, v0, v5}, Lcom/android/server/job/controllers/ConnectivityController;->isSatisfied(Lcom/android/server/job/controllers/JobStatus;Landroid/net/Network;Landroid/net/NetworkCapabilities;Lcom/android/server/job/JobSchedulerService$Constants;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "JobScheduler.Connectivity"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "Not reassigning network from "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " for running job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eqz p5, :cond_4

    iget-boolean p5, p5, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eqz p5, :cond_4

    move p5, v4

    goto :goto_2

    :cond_4
    move p5, v3

    :goto_2
    iput-boolean p5, p1, Lcom/android/server/job/controllers/JobStatus;->mTransportAffinitiesSatisfied:Z

    iget-boolean p5, p1, Lcom/android/server/job/controllers/JobStatus;->mCanApplyTransportAffinities:Z

    if-eqz p5, :cond_5

    iget-object p5, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {p5, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p5

    const/high16 v5, 0x200000

    invoke-virtual {p1, v5, p2, p3, p5}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    :cond_5
    if-nez v0, :cond_7

    if-eqz v2, :cond_7

    iget-object p2, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, p4}, Lcom/android/server/job/JobServiceContext;->informOfNetworkChangeLocked(Landroid/net/Network;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_3
    monitor-exit p2

    goto :goto_5

    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_5
    iput-object p4, p1, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz p0, :cond_a

    const-string p0, "JobScheduler.Connectivity"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Connectivity "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_8

    const-string p3, "CHANGED"

    goto :goto_6

    :cond_8
    const-string/jumbo p3, "unchanged"

    :goto_6
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": usable="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const/16 p1, 0x15

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_9

    move v3, v4

    :cond_9
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " satisfied="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0
.end method

.method public final updateTrackedJobsLocked(Landroid/net/Network;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/util/ArraySet;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_4
    return-void
.end method

.method public final updateTrackedJobsLocked(Landroid/util/ArraySet;Landroid/net/Network;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    iget v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkLocked(Lcom/android/server/job/controllers/JobStatus;)Landroid/net/Network;

    move-result-object v6

    if-eqz p2, :cond_4

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v3, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/job/controllers/ConnectivityController;->updateConstraintsSatisfied(Lcom/android/server/job/controllers/JobStatus;JLandroid/net/Network;Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    move-result p0

    or-int/2addr p0, v0

    move v0, p0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    move-object p0, v2

    goto :goto_0

    :cond_5
    :goto_3
    return v0
.end method

.method public final updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z
    .locals 10

    iget-object v0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object v2, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    :cond_0
    move p0, v2

    goto :goto_4

    :cond_1
    const-string v1, "JobScheduler.Connectivity"

    if-nez v0, :cond_2

    const-string/jumbo v0, "Network constraint satisfied with null capabilities"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    :goto_0
    xor-int/2addr p0, v2

    goto :goto_4

    :cond_2
    sget-object v4, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    array-length v4, v0

    if-nez v4, :cond_4

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    goto :goto_0

    :cond_4
    array-length v4, v0

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, v0, v5

    sget-object v7, Lcom/android/server/job/controllers/ConnectivityController;->sNetworkTransportAffinities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    sget-boolean v8, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "satisfiesTransportAffinities transport="

    const-string v9, " aff="

    invoke-static {v6, v7, v8, v9, v1}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v7, :cond_7

    const/4 v6, 0x2

    if-eq v7, v6, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move p0, v3

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController;->mCcConfig:Lcom/android/server/job/controllers/ConnectivityController$CcConfig;

    iget-boolean v6, v6, Lcom/android/server/job/controllers/ConnectivityController$CcConfig;->AVOID_UNDEFINED_TRANSPORT_AFFINITY:Z

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :goto_4
    iget-boolean v0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    if-eq v0, p0, :cond_9

    iput-boolean p0, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    return v2

    :cond_9
    return v3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
