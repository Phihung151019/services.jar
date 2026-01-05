.class public final synthetic Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/Watchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/Watchdog;

    iget-object v0, v3, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "persist.vendor.softdog"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0x64

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v0, "Watchdog:WatchdogSoftdog"

    const-string v2, "!@persist.vendor.softdog is off, so do not turn on softdog"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogOpen()I

    move-result v2

    if-ltz v2, :cond_1

    iput-boolean v9, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    invoke-virtual {v0, v8}, Lcom/android/server/WatchdogSoftdog;->native_sdogSetTimeout(I)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "persist.sys.fd_leak_threshold_cnt"

    const-wide/16 v10, 0x1388

    invoke-static {v0, v10, v11}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    const-wide/16 v12, 0x7d0

    cmp-long v0, v4, v12

    if-gez v0, :cond_2

    sput-wide v10, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    :cond_2
    move v2, v9

    :goto_1
    iget-wide v4, v3, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    const-wide/16 v6, 0x2

    div-long v6, v4, v6

    iget-object v14, v3, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v14

    move v0, v9

    :goto_2
    :try_start_0
    iget-object v15, v3, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v0, v15, :cond_3

    iget-object v15, v3, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-wide/from16 v16, v10

    iget-object v10, v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v11, v15, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mCustomTimeoutMillis:Ljava/util/Optional;

    sget v15, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    int-to-long v12, v15

    mul-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked(J)V

    add-int/2addr v0, v1

    move-wide/from16 v10, v16

    const-wide/16 v12, 0x7d0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_3
    move-wide/from16 v16, v10

    iget-object v0, v3, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    invoke-virtual {v0, v8}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    invoke-virtual {v3}, Lcom/android/server/Watchdog;->printLogAndCheckStatus()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v10, v6

    move v0, v9

    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    const/4 v13, 0x2

    if-lez v12, :cond_6

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v12, :cond_4

    move v12, v13

    goto :goto_4

    :cond_4
    move v12, v0

    :goto_4
    :try_start_1
    iget-object v0, v3, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v10, "Watchdog"

    invoke-static {v10, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v13

    goto :goto_6

    :cond_5
    move v0, v12

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sub-long v10, v6, v10

    goto :goto_3

    :cond_6
    move v4, v9

    move v5, v4

    :goto_7
    iget-object v6, v3, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    iget-object v6, v3, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    iget-object v6, v6, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v6}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v1

    goto :goto_7

    :cond_7
    if-nez v5, :cond_8

    monitor-exit v14

    move v2, v9

    move-wide/from16 v10, v16

    :goto_8
    const-wide/16 v12, 0x7d0

    goto/16 :goto_1

    :cond_8
    if-ne v5, v1, :cond_9

    monitor-exit v14

    goto/16 :goto_9

    :cond_9
    const/4 v4, 0x3

    if-ne v5, v13, :cond_c

    if-nez v2, :cond_b

    invoke-static {}, Lcom/android/server/Watchdog;->getPsInfo()V

    const-string/jumbo v2, "Watchdog"

    const-string v5, "!@*** WAITED_UNTIL_PRE_WATCHDOG"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "Watchdog"

    iget-object v5, v3, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {v5}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v3, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    invoke-virtual {v2, v8}, Lcom/android/server/WatchdogSoftdog;->softdogKick(I)V

    invoke-virtual {v3, v13}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v3, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-boolean v7, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v7, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v7, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v7, :cond_a

    const-string/jumbo v7, "Watchdog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!@*** unFreezeAllPackages for watchdog HALF debug! request time : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v12, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    const-string/jumbo v8, "Watchdog_HALF"

    invoke-virtual {v7, v8}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    :cond_a
    move v9, v1

    move v10, v9

    move v11, v10

    move-object v8, v2

    move-object/from16 v18, v6

    goto :goto_a

    :cond_b
    monitor-exit v14

    :goto_9
    move-wide/from16 v10, v16

    const/16 v8, 0x64

    const/4 v9, 0x0

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->getCheckersWithStateLocked(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, v3, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v3, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v9, v2

    move v10, v7

    move-object/from16 v18, v8

    const/4 v11, 0x0

    move-object v8, v5

    move-object v5, v6

    :goto_a
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    const-string v6, "AID_SYSTEM"

    const/16 v7, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "--- CriticalEventLog ---\n"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    iget-object v2, v3, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    iget-object v2, v3, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v3, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    const-string/jumbo v4, "system_server"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6, v7}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    iget-object v2, v3, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v7}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;

    invoke-direct {v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;-><init>()V

    iput-object v5, v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;->subject:Ljava/lang/String;

    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v6, v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setHalfWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$HalfWatchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-virtual {v2, v6}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    const/16 v2, 0x1cc

    invoke-static {v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I)V

    const-string/jumbo v2, "pre_watchdog"

    :goto_b
    move-object v4, v2

    goto :goto_c

    :cond_d
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;

    invoke-direct {v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;-><init>()V

    iput-object v5, v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->subject:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;->uuid:Ljava/lang/String;

    new-instance v6, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v6}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v6, v4}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setWatchdog(Lcom/android/server/criticalevents/nano/CriticalEventProto$Watchdog;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-virtual {v2, v6}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    const/16 v2, 0xaf2

    invoke-static {v2, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const/16 v2, 0xb9

    invoke-static {v2, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    const-string/jumbo v2, "watchdog"

    goto :goto_b

    :goto_c
    new-instance v2, Ljava/util/LinkedHashMap;

    const-string/jumbo v6, "Watchdog-Type"

    invoke-static {v6, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-object/from16 v24, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v22, Ljava/io/StringWriter;

    invoke-direct/range {v22 .. v22}, Ljava/io/StringWriter;-><init>()V

    iget-object v6, v3, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v20, Landroid/util/SparseBooleanArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v14}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v21

    new-instance v27, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct/range {v27 .. v27}, Ljava/lang/Object;-><init>()V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v23, 0x0

    move-object/from16 v26, v2

    move-object/from16 v19, v6

    invoke-static/range {v18 .. v29}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v6

    move-object/from16 v14, v24

    const-string/jumbo v2, "Watchdog"

    move/from16 v18, v12

    const-string v12, "!@*** End dumpStackTraces"

    invoke-static {v2, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, v3, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {v2}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    if-nez v11, :cond_e

    const/16 v2, 0x77

    invoke-static {v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/android/server/Watchdog;->doSysRq(C)V

    :cond_e
    new-instance v2, Lcom/android/server/Watchdog$2;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Ljava/util/UUID;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const-wide/16 v4, 0x7d0

    :try_start_3
    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    if-eqz v11, :cond_f

    move-wide v12, v4

    move v2, v9

    move-wide/from16 v10, v16

    :goto_d
    const/16 v8, 0x64

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_f
    iget-object v2, v3, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v6, v3, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    iget-object v7, v3, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_LOW:Z

    if-eqz v2, :cond_10

    if-eqz v6, :cond_10

    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v9, "Reporting stuck state to activity controller"

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    const-string/jumbo v2, "Service dumps disabled due to hung system process."

    invoke-static {v2}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    invoke-interface {v6, v14}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    const-string/jumbo v2, "Watchdog"

    const-string v6, "!@ Activity controller requested to coninue to wait"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "Watchdog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!@ ActivityController Description:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-wide v12, v4

    move-wide/from16 v10, v16

    const/4 v2, 0x0

    goto :goto_d

    :catch_2
    :cond_10
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v13

    :cond_11
    if-lt v0, v13, :cond_12

    const-string/jumbo v0, "Watchdog"

    const-string v2, "!@ Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    const/4 v15, 0x0

    goto/16 :goto_14

    :cond_12
    if-lez v0, :cond_13

    const-string/jumbo v0, "Watchdog"

    const-string v2, "!@ Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_13
    if-nez v10, :cond_14

    const-string/jumbo v0, "Watchdog"

    const-string v2, "!@ Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_14
    const-string/jumbo v0, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "P|WD"

    invoke-static {v0, v14}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v3, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingCmdBR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    const-string/jumbo v2, "Watchdog"

    const-string/jumbo v6, "pending commanded broadcasts"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_15

    const-string/jumbo v6, "Watchdog"

    const-string v9, "#"

    const-string v10, " "

    invoke-static {v2, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v1

    goto :goto_f

    :cond_15
    const-string/jumbo v0, "Watchdog"

    iget-object v2, v3, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {v2}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Landroid/util/LogWriter;

    const-string/jumbo v6, "Watchdog"

    const/4 v9, 0x5

    const/4 v10, 0x4

    invoke-direct {v2, v9, v6, v10}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    invoke-direct {v0, v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string/jumbo v2, "PLATFORM WATCHDOG RESET"

    const/4 v9, 0x6

    const/4 v11, 0x0

    invoke-static {v10, v9, v6, v2, v11}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_10
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_18

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v12, v12, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-static {v12, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    move-result v14

    if-eqz v14, :cond_17

    :cond_16
    move/from16 v19, v13

    goto :goto_12

    :cond_17
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stack trace:"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v9, v6, v4, v11}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    const/4 v12, 0x0

    :goto_11
    if-ge v12, v5, :cond_16

    aget-object v14, v4, v12

    move/from16 v19, v13

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, " at "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v9, v6, v13, v11}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/2addr v12, v1

    move/from16 v13, v19

    goto :goto_11

    :goto_12
    add-int/2addr v2, v1

    move/from16 v13, v19

    const-wide/16 v4, 0x7d0

    goto :goto_10

    :cond_18
    move/from16 v19, v13

    iget-object v0, v3, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    iget-boolean v2, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    if-eqz v2, :cond_19

    goto :goto_13

    :cond_19
    invoke-virtual {v0}, Lcom/android/server/WatchdogSoftdog;->native_sdogClose()V

    iput-boolean v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    :goto_13
    new-instance v0, Landroid/os/BugreportParams;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Landroid/os/BugreportParams;-><init>(I)V

    const-string/jumbo v2, "system_server"

    invoke-static {v0, v2}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    const-string/jumbo v0, "crashrecovery.rescue_boot_count"

    const-string/jumbo v2, "crashrecovery.rescue_boot_count"

    const/4 v15, 0x0

    invoke-static {v2, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v0, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "!@*** unFreezeAllPackages for watchdog debug! request time : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    const-string/jumbo v2, "Watchdog"

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    :cond_1a
    if-eqz v7, :cond_1b

    const-string/jumbo v0, "Watchdog"

    const-string v2, "!@*** ActivityController is set by "

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-string/jumbo v0, "Watchdog"

    const-string v2, "!@*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    :goto_14
    move v2, v15

    move v9, v2

    move-wide/from16 v10, v16

    const/16 v8, 0x64

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :goto_15
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method
