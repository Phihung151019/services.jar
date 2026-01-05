.class public final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 56

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "E|Compact d_rss="

    const-string v3, "B|Compact "

    const-string v4, "Compact "

    iget v5, v1, Landroid/os/Message;->what:I

    const/16 v6, 0x756f

    const-wide/16 v7, 0x40

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eq v5, v11, :cond_7

    const/4 v2, 0x5

    if-eq v5, v2, :cond_6

    const/16 v2, 0x6b

    if-eq v5, v2, :cond_0

    goto/16 :goto_14

    :cond_0
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v3, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v3, v3, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->isNowAppLaunching:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2, v1, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, v1}, Lcom/android/server/am/CachedAppOptimizer;->isProcessFrozen(I)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-object v3, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v2, v2, Lcom/android/server/am/FreecessController;->mFrozenPidListSelfLocked:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit v3

    move v2, v12

    :goto_0
    if-eqz v2, :cond_22

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    const-string v2, "ActivityManager"

    const-string v3, "FCA:Reclamation for pid: "

    invoke-static {v1, v3, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v2, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {v1, v11}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smcompactProcess(II)I

    move-result v5

    iget-object v7, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v7, v7, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v7, v1}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v7

    aget-wide v13, v7, v12

    aget-wide v15, v2, v12

    sub-long/2addr v13, v15

    aget-wide v15, v7, v11

    aget-wide v17, v2, v11

    sub-long v15, v15, v17

    aget-wide v17, v7, v10

    aget-wide v19, v2, v10

    sub-long v17, v17, v19

    aget-wide v19, v7, v9

    aget-wide v21, v2, v9

    sub-long v19, v19, v21

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    sub-long v21, v21, v3

    const-string v3, ""

    iget-object v4, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v4, v4, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v4

    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordFromPidLocked(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v5, :cond_4

    aget-wide v7, v7, v11

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :cond_5
    move-object v8, v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v0, v9

    const-string v9, "FCA:"

    aget-wide v3, v2, v12

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aget-wide v3, v2, v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aget-wide v3, v2, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aget-wide v23, v2, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, ""

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object v13, v0

    move-object v10, v1

    move-object v12, v3

    filled-new-array/range {v7 .. v24}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :cond_6
    iget v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->values()[Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-result-object v3

    iget v1, v1, Landroid/os/Message;->arg2:I

    aget-object v1, v3, v1

    const-string v3, "ActivityManager"

    const-string/jumbo v4, "Performing native compaction for pid="

    const-string v5, " type="

    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "compactNative"

    invoke-static {v7, v8, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    const-string v0, "ActivityManager"

    const-string v1, "Failed compacting native pid= "

    invoke-static {v2, v1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_14

    :cond_7
    move v5, v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget v9, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    iget-object v15, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v15, v15, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v15

    :try_start_4
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_2
    move-exception v0

    goto/16 :goto_16

    :cond_8
    :try_start_5
    iget-object v6, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v6, v6, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v8, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    iput-boolean v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mForceCompact:Z

    iget v5, v6, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-boolean v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mPendingCompact:Z

    iget-object v11, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactSource:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    iget-object v12, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move/from16 v29, v1

    iget-object v1, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-nez v1, :cond_9

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    iput-object v1, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    :cond_9
    iget-object v1, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move/from16 v16, v8

    move/from16 v30, v9

    iget-wide v8, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    move-object/from16 p1, v1

    iget v1, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastOomAdjChangeReason:I

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-nez v5, :cond_a

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez v16, :cond_1b

    iget-object v15, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v15, v15, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    move-wide/from16 v41, v8

    const/16 v8, 0xc8

    if-gt v15, v8, :cond_b

    const/4 v8, 0x1

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_c

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v8, v6, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-object v9, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-nez v9, :cond_d

    sget-object v9, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    iput-object v9, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    :cond_d
    iget-object v9, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    move-wide/from16 v17, v13

    iget-wide v13, v8, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    const-wide/16 v19, 0x0

    cmp-long v8, v13, v19

    if-eqz v8, :cond_12

    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactSource;->APP:Lcom/android/server/am/CachedAppOptimizer$CompactSource;

    if-ne v11, v8, :cond_12

    sget-object v8, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v15, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v12, v8, :cond_10

    if-ne v9, v8, :cond_e

    sub-long v21, v17, v13

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v23, v13

    iget-wide v13, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    cmp-long v8, v21, v13

    if-ltz v8, :cond_f

    goto :goto_7

    :cond_e
    move-wide/from16 v23, v13

    :goto_7
    if-ne v9, v15, :cond_12

    sub-long v13, v17, v23

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_12

    :cond_f
    :goto_8
    const/4 v8, 0x1

    goto :goto_9

    :cond_10
    move-wide/from16 v23, v13

    if-ne v12, v15, :cond_12

    if-ne v9, v8, :cond_11

    sub-long v13, v17, v23

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v21, v13

    iget-wide v13, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v8, v21, v13

    if-ltz v8, :cond_f

    :cond_11
    if-ne v9, v15, :cond_12

    sub-long v13, v17, v23

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v8, v13, v8

    if-gez v8, :cond_12

    goto :goto_8

    :cond_12
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_13

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v11, v10}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_14
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v8, v5}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v8

    const/16 v38, 0x2

    aget-wide v13, v8, v38

    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v9, v5}, Lcom/android/server/am/compaction/CompactionStatsManager;->getLastCompactionStats(I)Lcom/android/server/am/compaction/SingleCompactionStats;

    move-result-object v9

    const/16 v40, 0x0

    aget-wide v21, v8, v40

    cmp-long v15, v21, v19

    if-nez v15, :cond_15

    const/16 v39, 0x1

    aget-wide v21, v8, v39

    cmp-long v15, v21, v19

    if-nez v15, :cond_15

    aget-wide v21, v8, v38

    cmp-long v15, v21, v19

    if-nez v15, :cond_15

    const/16 v37, 0x3

    aget-wide v21, v8, v37

    cmp-long v15, v21, v19

    if-nez v15, :cond_15

    :goto_a
    move-object v15, v8

    :goto_b
    const/4 v8, 0x1

    goto :goto_c

    :cond_15
    sget-object v15, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v12, v15, :cond_17

    iget-object v15, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-wide/from16 v21, v13

    iget-wide v13, v15, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v13, v13, v19

    if-lez v13, :cond_16

    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v13, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v13, v21, v13

    if-gez v13, :cond_16

    goto :goto_a

    :cond_16
    if-eqz v9, :cond_17

    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v13, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v13, v13, v19

    if-lez v13, :cond_17

    iget-object v9, v9, Lcom/android/server/am/compaction/SingleCompactionStats;->mRssAfterCompaction:[J

    const/16 v39, 0x1

    aget-wide v13, v8, v39

    aget-wide v19, v9, v39

    sub-long v13, v13, v19

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const/16 v38, 0x2

    aget-wide v19, v8, v38

    aget-wide v21, v9, v38

    sub-long v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    add-long v19, v19, v13

    const/16 v37, 0x3

    aget-wide v13, v8, v37

    aget-wide v21, v9, v37

    sub-long v13, v13, v21

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    add-long v13, v13, v19

    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object v15, v8

    iget-wide v8, v9, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v8, v13, v8

    if-gtz v8, :cond_18

    goto :goto_b

    :cond_17
    move-object v15, v8

    :cond_18
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_19

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/server/am/compaction/CompactionStatsManager;->logCompactionThrottled(ILcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerReclaimer:Lcom/android/server/am/CachedAppOptimizer$CachedAppOptimizerReclaimer;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string/jumbo v0, "skip compaction for "

    const-string v1, "("

    const-string v2, ")"

    invoke-static {v5, v0, v10, v1, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    return-void

    :cond_1a
    move-object v8, v15

    goto :goto_d

    :cond_1b
    move-wide/from16 v41, v8

    move-wide/from16 v17, v13

    iget-object v8, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v8, v8, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v8, v5}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v8

    :goto_d
    iget-object v9, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->FULL:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    sget-object v14, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->SOME:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    const-wide/16 v19, 0x1

    if-ne v12, v13, :cond_1c

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->getFreeSwapPercent()D

    move-result-wide v21

    const-wide v23, 0x3fc999999999999aL    # 0.2

    cmpg-double v15, v21, v23

    if-gez v15, :cond_1c

    iget-object v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    move-object/from16 v21, v11

    move-object/from16 v43, v12

    iget-wide v11, v9, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    add-long v11, v11, v19

    iput-wide v11, v9, Lcom/android/server/am/compaction/CompactionStatsManager;->mTotalCompactionDowngrades:J

    move-object v9, v14

    goto :goto_e

    :cond_1c
    move-object/from16 v21, v11

    move-object/from16 v43, v12

    move-object/from16 v9, v43

    :goto_e
    if-ne v9, v14, :cond_1d

    sget-object v9, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    goto :goto_f

    :cond_1d
    if-ne v9, v13, :cond_1e

    sget-object v9, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->ANON:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    :cond_1e
    :goto_f
    sget-object v11, Lcom/android/server/am/CachedAppOptimizer$CompactProfile;->NONE:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    if-ne v9, v11, :cond_1f

    goto/16 :goto_14

    :cond_1f
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " lastOomAdjReason: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " source: "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v11, 0x40

    invoke-static {v11, v12, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v11

    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v13, v13, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v13, v9, v5}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Lcom/android/server/am/CachedAppOptimizer$CompactProfile;I)V

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smthreadCpuTimeNs()J

    move-result-wide v13

    iget-object v15, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v15, v15, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    invoke-interface {v15, v5}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v28

    move-wide/from16 v44, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v46, v3, v17

    sub-long/2addr v13, v11

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer;->-$$Nest$smgetUsedZramMemory()J

    move-result-wide v11

    const/16 v40, 0x0

    aget-wide v17, v28, v40

    aget-wide v22, v8, v40

    sub-long v48, v17, v22

    const/16 v39, 0x1

    aget-wide v17, v28, v39

    aget-wide v22, v8, v39

    sub-long v50, v17, v22

    const/16 v38, 0x2

    aget-wide v17, v28, v38

    aget-wide v22, v8, v38

    move-object/from16 v52, v8

    move-object/from16 v53, v9

    sub-long v8, v17, v22

    const/16 v37, 0x3

    aget-wide v17, v28, v37

    aget-wide v22, v52, v37

    sub-long v54, v17, v22

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v40, 0x0

    aget-wide v17, v28, v40

    aget-wide v22, v52, v40

    move/from16 v31, v1

    sub-long v1, v17, v22

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "KB"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    iget-object v1, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mReqCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v2, :cond_21

    const/4 v2, 0x3

    if-eq v1, v2, :cond_20

    const-string v0, "ActivityManager"

    const-string v1, "Compaction: Unknown requested action"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-wide/16 v35, 0x40

    invoke-static/range {v35 .. v36}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3
    move-exception v0

    const-wide/16 v35, 0x40

    goto/16 :goto_15

    :catch_1
    move-exception v0

    move-object v2, v10

    goto/16 :goto_13

    :cond_20
    neg-long v1, v8

    move/from16 v15, v16

    move-object/from16 v16, v21

    sub-long v20, v11, v44

    sub-long v22, v1, v20

    const-wide/32 v17, 0xf4240

    :try_start_7
    div-long v26, v13, v17

    const/16 v38, 0x2

    aget-wide v24, v52, v38

    iget-object v13, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v13, v13, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/16 v39, 0x1

    xor-int/lit8 v34, v15, 0x1

    move-wide/from16 v18, v1

    move/from16 v33, v5

    move/from16 v32, v6

    move-object/from16 v17, v10

    move-object v15, v13

    :try_start_8
    invoke-virtual/range {v15 .. v34}, Lcom/android/server/am/compaction/CompactionStatsManager;->logFullCompactionPerformed(Lcom/android/server/am/CachedAppOptimizer$CompactSource;Ljava/lang/String;JJJJJ[JIIIIIZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object/from16 v1, v17

    goto :goto_11

    :catch_2
    move-exception v0

    move-object/from16 v1, v17

    :goto_10
    move-object v2, v1

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v1, v10

    goto :goto_10

    :cond_21
    move/from16 v33, v5

    move-object v1, v10

    move-object/from16 v2, v21

    :try_start_9
    iget-object v5, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v5, v5, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsManager:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-virtual {v5, v2}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerSourceAggregatedCompactStat(Lcom/android/server/am/CachedAppOptimizer$CompactSource;)Lcom/android/server/am/compaction/AggregatedSourceCompactionStats;

    move-result-object v2

    invoke-virtual {v5, v1}, Lcom/android/server/am/compaction/CompactionStatsManager;->getPerProcessAggregatedCompactStat(Ljava/lang/String;)Lcom/android/server/am/compaction/AggregatedProcessCompactionStats;

    move-result-object v5

    iget-wide v13, v2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long v13, v13, v19

    iput-wide v13, v2, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    iget-wide v13, v5, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    add-long v13, v13, v19

    iput-wide v13, v5, Lcom/android/server/am/compaction/AggregatedCompactionStats;->mSomeCompactPerformed:J

    :goto_11
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v18

    const/16 v40, 0x0

    aget-wide v5, v52, v40

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v39, 0x1

    aget-wide v5, v52, v39

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v38, 0x2

    aget-wide v5, v52, v38

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v37, 0x3

    aget-wide v5, v52, v37

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    sub-long v5, v44, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v17, v1

    move-object/from16 v29, v2

    :try_start_a
    filled-new-array/range {v16 .. v33}, [Ljava/lang/Object;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v2, v17

    const/16 v5, 0x756f

    :try_start_b
    invoke-static {v5, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v1, v0, Lcom/android/server/am/CachedAppOptimizer;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iput-wide v3, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactTime:J

    move-object/from16 v0, v43

    iput-object v0, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mLastCompactProfile:Lcom/android/server/am/CachedAppOptimizer$CompactProfile;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-wide/16 v35, 0x40

    :goto_12
    invoke-static/range {v35 .. v36}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_14

    :catch_4
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catch_5
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_13

    :catch_6
    move-exception v0

    goto/16 :goto_10

    :goto_13
    :try_start_10
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while compacting pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Exception:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const-wide/16 v35, 0x40

    goto :goto_12

    :cond_22
    :goto_14
    return-void

    :goto_15
    invoke-static/range {v35 .. v36}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :goto_16
    :try_start_11
    monitor-exit v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method
