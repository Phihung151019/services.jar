.class public final Lcom/android/server/am/AnrHelper$AnrConsumerThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    const-string p1, "AnrConsumer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    :goto_0
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v1, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v2, v2, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_0
    iget-object v2, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v2, v2, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget-object v4, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget v5, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    iput v5, v4, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    iget-object v5, v2, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v5, v5, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-object v4, v4, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrRecordsQueueSizeWhenPopped(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    :goto_1
    const/4 v2, 0x1

    if-eqz v1, :cond_7

    iget-object v4, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x40

    :try_start_1
    const-string/jumbo v7, "scheduleBinderHeavyHitterAutoSamplerIfNecessary()"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v4, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    sget-wide v11, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    add-long/2addr v9, v11

    cmp-long v9, v9, v7

    if-lez v9, :cond_1

    iget-object v9, v4, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance v11, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;

    const/4 v12, 0x4

    invoke-direct {v11, v9, v12}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_2
    iput-wide v7, v4, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v4, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v5, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-eq v4, v5, :cond_2

    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Skip ANR with mismatched pid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current pid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    sub-long v6, v4, v6

    sget-wide v8, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    sget-wide v8, Lcom/android/server/am/AnrHelper;->SELF_ONLY_AFTER_BOOT_MS:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v17, v3

    goto :goto_4

    :cond_4
    :goto_3
    move/from16 v17, v2

    :goto_4
    :try_start_2
    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v2, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingStarted()V

    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v10, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v14, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    iget-object v15, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v2, v2, Lcom/android/server/am/AnrHelper;->mAuxiliaryTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iget-boolean v3, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mIsContinuousAnr:Z

    iget-object v8, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mFirstPidFilePromise:Ljava/util/concurrent/Future;

    move-object/from16 v16, v2

    move/from16 v18, v3

    move-object/from16 v19, v8

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/am/ProcessErrorStateRecord;->appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v2, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v2, v2, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingEnded()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/internal/os/profiling/Flags;->systemTriggeredProfilingNew()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_5

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-static {}, Landroid/os/ProfilingServiceHelper;->getInstance()Landroid/os/ProfilingServiceHelper;

    move-result-object v8

    iget v9, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mUid:I

    iget-object v10, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/ProfilingServiceHelper;->onProfilingTriggerOccurred(ILjava/lang/String;I)V

    :cond_5
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Completed ANR of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v4

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms, latency "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_6

    const-string/jumbo v1, "ms (expired, only dump ANR app)"

    goto :goto_5

    :cond_6
    const-string/jumbo v1, "ms"

    :goto_5
    invoke-static {v9, v1, v8}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    iget-object v1, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iget-object v1, v1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrProcessingEnded()V

    throw v0

    :goto_6
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :cond_7
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v1, v1, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v4, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    const/4 v5, -0x1

    iput v5, v1, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    iget-object v1, v1, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    iget-object v1, v0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v1, v0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    monitor-exit v4

    return-void

    :goto_8
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :goto_9
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
