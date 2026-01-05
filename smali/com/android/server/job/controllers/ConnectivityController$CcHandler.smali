.class public final Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_11

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_10

    const/4 v5, 0x3

    if-eq v1, v5, :cond_d

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v6, v5, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    if-nez v6, :cond_1

    monitor-exit v1

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v5, v6}, Lcom/android/server/job/controllers/ConnectivityController;->isNetworkInStateForJobRunLocked(Landroid/net/Network;)Z

    move-result v5

    if-nez v5, :cond_2

    monitor-exit v1

    goto/16 :goto_9

    :cond_2
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iget-object v6, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v6, v6, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_0
    if-ltz v6, :cond_c

    iget-object v7, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v7, v7, Lcom/android/server/job/controllers/ConnectivityController;->mTrackedJobs:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_1
    if-ltz v8, :cond_b

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v10, v10, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v10, v11}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v10, v11}, Lcom/android/server/job/controllers/ConnectivityController;->getNetworkMetadata(Landroid/net/Network;)Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v4

    goto :goto_2

    :cond_3
    iget-object v10, v10, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    :goto_2
    if-eqz v10, :cond_7

    invoke-virtual {v10, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v10, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_5

    :cond_5
    invoke-virtual {v10}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v11, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v11, v11, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v3

    goto :goto_3

    :cond_6
    move v10, v2

    :goto_3
    iget-object v11, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_8

    goto :goto_5

    :cond_7
    :goto_4
    iget-object v9, v9, Lcom/android/server/job/controllers/JobStatus;->network:Landroid/net/Network;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    iget v10, v9, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v9, v10}, Lcom/android/server/job/controllers/JobStatus;->isReady(I)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-boolean v10, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    if-eqz v10, :cond_9

    const-string v10, "JobScheduler.Connectivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Potentially running "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " due to network activity"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v10, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v10, v10, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v10, v9}, Lcom/android/server/job/JobSchedulerService;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_c
    monitor-exit v1

    goto :goto_9

    :goto_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_a

    :cond_d
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eq p1, v5, :cond_e

    move v2, v3

    :cond_e
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eq v3, v2, :cond_f

    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p0, v4, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_8

    :cond_f
    :goto_7
    monitor-exit p1

    goto :goto_9

    :goto_8
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0

    :cond_10
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mBackgroundMeteredAllowed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v1, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    monitor-exit p1

    goto :goto_9

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw p0

    :cond_11
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_12

    move v2, v3

    :cond_12
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->updateAllTrackedJobsLocked(Z)V

    monitor-exit v1

    goto :goto_9

    :catchall_4
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p0

    :cond_13
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->-$$Nest$mmaybeAdjustRegisteredCallbacksLocked(Lcom/android/server/job/controllers/ConnectivityController;)V

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :goto_9
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    :catchall_5
    move-exception p0

    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw p0

    :goto_a
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw p0
.end method
