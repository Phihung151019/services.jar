.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;JJZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$2:J

    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$3:Z

    iput-boolean p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$1:J

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$2:J

    move-wide v7, v2

    iget-boolean v3, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$3:Z

    iget-boolean v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda24;->f$4:Z

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    sget v0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;

    if-nez v0, :cond_0

    goto/16 :goto_b

    :cond_0
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v4, v0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v9, 0xe

    if-lt v4, v9, :cond_c

    iget-wide v11, v0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long v11, v7, v11

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    cmp-long v13, v11, v7

    if-gtz v13, :cond_1

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    :goto_0
    move v7, v0

    goto :goto_2

    :cond_1
    const-wide/16 v13, 0x2

    mul-long/2addr v13, v7

    cmp-long v13, v11, v13

    if-lez v13, :cond_4

    if-gt v4, v9, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v13, 0x3

    mul-long/2addr v7, v13

    cmp-long v4, v11, v7

    if-gtz v4, :cond_3

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    goto :goto_0

    :cond_3
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    goto :goto_0

    :goto_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v13, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v14, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    iget-object v0, v14, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v0, v15, v17

    if-lez v0, :cond_5

    sub-long v15, v8, v15

    move-wide v4, v5

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-object v0, v1

    move/from16 p0, v10

    move-wide/from16 v19, v11

    move-wide v10, v8

    move-object v8, v2

    move-wide v1, v4

    move-wide v4, v15

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLPr(JZJLjava/lang/String;ILcom/android/server/am/ProcessRecord;)Z

    move-result v6

    move v12, v3

    move-wide v3, v4

    if-eqz v6, :cond_6

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    move-wide v5, v1

    move-object v1, v0

    new-instance v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;

    move v9, v7

    move-object v2, v8

    move-wide/from16 v7, v19

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JJJI)V

    move-object v3, v0

    move-object v0, v1

    move-wide/from16 v19, v7

    move v7, v9

    move-object v8, v2

    move-wide v1, v5

    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v14}, Lcom/android/server/am/ProcessProfileRecord;->reportExcessiveCpu()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_5
    move-object v0, v1

    move/from16 p0, v10

    move-wide/from16 v19, v11

    move v12, v3

    move-wide v10, v8

    move-object v8, v2

    move-wide v1, v5

    :cond_6
    :goto_3
    iget-object v3, v14, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_c

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v11, v3, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget-object v4, v3, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_7

    iget-object v3, v3, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    :goto_4
    move-object v13, v3

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    goto :goto_4

    :goto_5
    if-nez v13, :cond_8

    monitor-exit v11

    return-void

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_8
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v14, v3

    :goto_6
    if-ltz v14, :cond_b

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/am/PhantomProcessRecord;

    sget v3, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget-wide v3, v9, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    cmp-long v5, v3, v17

    if-lez v5, :cond_9

    iget-wide v5, v9, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    sub-long v4, v5, v3

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move v3, v12

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLPr(JZJLjava/lang/String;ILcom/android/server/am/ProcessRecord;)Z

    move-result v6

    move v12, v3

    if-eqz v6, :cond_9

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    move v10, v7

    move-wide v6, v1

    move-object v1, v0

    new-instance v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;

    move-object v2, v8

    move-object v3, v9

    move-wide/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;JJJI)V

    move-object v3, v0

    move-object v0, v1

    move-wide/from16 v19, v8

    move-object v8, v2

    move-wide v1, v6

    move v7, v10

    invoke-virtual {v15, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_9
    move-object v3, v9

    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    :cond_b
    :goto_8
    monitor-exit v11

    return-void

    :goto_9
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :goto_a
    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_c
    :goto_b
    return-void
.end method
