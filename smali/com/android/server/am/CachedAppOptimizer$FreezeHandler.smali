.class public final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 13

    const-string/jumbo v0, "Unable to freeze "

    const-string/jumbo v1, "Unable to freeze binder for "

    const-string/jumbo v2, "freezing "

    const-string/jumbo v3, "Skipping freeze for process "

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v12, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    :try_start_0
    iget-boolean v5, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez v5, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v8, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean v9, v8, Lcom/android/server/am/CachedAppOptimizer;->mFreezerOverride:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    iput-boolean v10, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    const-string p0, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " curAdj = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p1, p1, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(override)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_1
    :try_start_2
    iget-boolean v3, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v3, :cond_2

    iget-object p0, v8, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl;->mLocalHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_2
    if-eqz v6, :cond_9

    :try_start_3
    iget-boolean v3, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-eqz v3, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5, v10}, Lcom/android/server/am/Freezer;->freezeBinder(IIZ)I

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "outstanding txns"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catch_0
    :try_start_6
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    new-instance v2, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    iget-wide v1, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-static {v6, v8, v3}, Lcom/android/server/am/CachedAppOptimizer;->traceAppFreeze(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v8, v10}, Landroid/os/Process;->setProcessFrozen(IIZ)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    iput-boolean v10, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    iput-boolean v5, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mHasCollectedFrozenPSS:Z

    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v6, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_8
    const-string v3, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-wide v8, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    sub-long/2addr v8, v1

    iget-boolean v0, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/UidRecord;->areAllProcessesFrozen(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput-boolean v10, v1, Lcom/android/server/am/UidRecord;->mUidIsFrozen:Z

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v1, v1, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-virtual {v2, v1, v10}, Lcom/android/server/am/CachedAppOptimizer;->postUidFrozenMessage(IZ)V

    :cond_5
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7574

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    const/16 v4, 0xfe

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;JII)V

    :cond_7
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/android/server/am/Freezer;->getBinderFreezeInfo(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    const-string/jumbo v0, "new pending txns"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to freeze binder for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    iget-object p0, v12, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozenProcessListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v12}, Lcom/android/server/am/ProcessCachedOptimizerRecord$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_1
    return-void

    :cond_9
    :goto_2
    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :goto_3
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final handleBinderFreezerFailure(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderEnabled:Z

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-static {p1, v0, v1}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-wide v3, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v5, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    cmp-long v0, v3, v5

    const-string v3, " "

    const-string v4, "ActivityManager"

    if-gtz v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Kill app due to repeated failure to freeze binder: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2, v0, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p2, p2, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;Lcom/android/server/am/ProcessRecord;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-wide v5, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastUsedTimeout:J

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderDivisor:J

    div-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    iget v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderOffset:I

    sub-int/2addr v0, v7

    int-to-long v7, v0

    add-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v7, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderThreshold:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Reschedule freeze for process "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v7, " ("

    const-string v8, "), timeout="

    invoke-static {v0, v3, v7, p2, v8}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reschedule freeze "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeout="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", reason="

    invoke-static {v0, v3, p2}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v3, 0x40

    const-string v0, "Freezer"

    invoke-static {v3, v4, v0, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p0, v5, v6, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x7

    if-eq v2, v3, :cond_e

    const/4 v3, 0x4

    if-eq v2, v3, :cond_d

    const/4 v3, 0x6

    const/4 v5, 0x0

    if-eq v2, v3, :cond_8

    if-eq v2, v4, :cond_7

    const/16 p1, 0x8

    if-eq v2, p1, :cond_0

    goto/16 :goto_8

    :cond_0
    new-instance p1, Landroid/util/IntArray;

    invoke-direct {p1}, Landroid/util/IntArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v6, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/util/IntArray;->add(I)V

    add-int/2addr v4, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerBinderAsyncThreshold:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    :goto_1
    const-string/jumbo v3, "binderErrorSync"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :goto_2
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_5

    invoke-virtual {p1, v5}, Landroid/util/IntArray;->get(I)I

    move-result v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezer:Lcom/android/server/am/Freezer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/am/Freezer;->getBinderFreezeInfo(I)I

    move-result v4

    and-int/lit8 v8, v4, 0x1

    if-eqz v8, :cond_3

    const-string/jumbo v4, "Sync transaction while frozen"

    iget-object v8, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v9, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;

    const/16 v10, 0x14

    invoke-direct {v9, p0, v3, v4, v10}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/CachedAppOptimizer;ILjava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_3
    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    const-string/jumbo v4, "Unable to query binder frozen stats for pid "

    const-string v8, "ActivityManager"

    invoke-static {v3, v4, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/2addr v5, v1

    goto :goto_2

    :cond_5
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_8

    :cond_6
    const-string/jumbo p1, "binderErrorAsync"

    invoke-static {v6, v7, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p1, Lcom/android/internal/os/BinderfsStatsReader;

    invoke-direct {p1}, Lcom/android/internal/os/BinderfsStatsReader;-><init>()V

    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda2;-><init>(Landroid/util/ArraySet;)V

    new-instance v1, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    new-instance p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/internal/os/BinderfsStatsReader;->handleFreeAsyncSpace(Ljava/util/function/Predicate;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_8

    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_7
    :try_start_3
    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mProcLocksReader:Lcom/android/internal/os/ProcLocksReader;

    invoke-virtual {p1, p0}, Lcom/android/internal/os/ProcLocksReader;->handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    const-string p0, "ActivityManager"

    const-string/jumbo p1, "Unable to check file locks"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_9

    move v2, v1

    goto :goto_5

    :cond_9
    move v2, v5

    :goto_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p1}, [I

    move-result-object p1

    if-eqz v2, :cond_a

    move v0, v1

    :cond_a
    filled-new-array {v0}, [I

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    if-ge v5, v3, :cond_b

    :try_start_5
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IUidFrozenStateChangedCallback;

    invoke-interface {v4, p1, v0}, Landroid/app/IUidFrozenStateChangedCallback;->onUidFrozenStateChanged([I[I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :catch_2
    :goto_7
    add-int/2addr v5, v1

    goto :goto_6

    :cond_b
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidFrozenStateChangedCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v2

    :cond_c
    :goto_8
    return-void

    :goto_9
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :cond_d
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;I)V

    return-void

    :cond_e
    move-object v3, p0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    iget-object p1, v3, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v0, v0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingFreeze:Z

    if-nez v0, :cond_f

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_f
    :try_start_8
    invoke-virtual {v3, p0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean p1, p1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-eqz p1, :cond_10

    iget-object p1, v3, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p1, p0}, Lcom/android/server/am/CachedAppOptimizer;->onProcessFrozen(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v3, v4, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_10
    iget-object p1, v3, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/server/am/CachedAppOptimizer;->onProcessFrozenCancelled(Lcom/android/server/am/ProcessRecord;)V

    return-void

    :goto_a
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onBlockingFileLock(Landroid/util/IntArray;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v1, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mFrozenProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {p1, v5}, Landroid/util/IntArray;->get(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_0

    :try_start_3
    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iget-object v9, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v9, v9, Lcom/android/server/am/ActivityManagerConstants;->FREEZER_CUTOFF_ADJ:I

    if-ge v7, v9, :cond_0

    const-string p1, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") blocks "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    const/16 p1, 0x10

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_3

    :goto_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :goto_3
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final reportUnfreeze(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;I)V
    .locals 8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p4, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x7575

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v2, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4, v5, v0}, Lcom/android/internal/app/procstats/ProcessState;->onProcessUnfrozen(JLandroid/util/ArrayMap;)V

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    iget-object v1, p1, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->scheduleServiceTimeoutIfNeededLocked()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget p0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    int-to-long v4, p3

    const/16 v0, 0xfe

    const/4 v1, 0x2

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;JII)V

    :cond_2
    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :goto_1
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
