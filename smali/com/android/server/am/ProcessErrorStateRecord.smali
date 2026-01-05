.class public final Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final DEBUG_ATRACE:Z

.field public mAnrAnnotation:Ljava/lang/String;

.field public mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBad:Z

.field public mCrashHandler:Ljava/lang/Runnable;

.field public mCrashing:Z

.field public mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field public mErrorReportReceiver:Landroid/content/ComponentName;

.field public mForceCrashReport:Z

.field public mNotResponding:Z

.field public mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->DEBUG_ATRACE:Z

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    return-void
.end method


# virtual methods
.method public final appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    .locals 49

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v3, p4

    move-object/from16 v0, p6

    move-object/from16 v4, p7

    const-string v8, "ANR "

    iget-object v13, v0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x5

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Landroid/util/SparseBooleanArray;

    const/16 v12, 0x14

    invoke-direct {v11, v12}, Landroid/util/SparseBooleanArray;-><init>(I)V

    invoke-virtual {v0}, Lcom/android/internal/os/TimeoutRecord;->closeExpiredTimer()V

    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v12, v12, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v12, :cond_0

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Skipping debugged app ANR: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->DEBUG_ATRACE:Z

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_4

    const-string/jumbo v12, "debug.perfmond.atrace"

    invoke-static {v12, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v20, v8

    const-string/jumbo v8, "debug.perfmond.default.perfetto"

    invoke-static {v8, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v12, v14, :cond_2

    const/4 v15, 0x3

    if-eq v12, v15, :cond_2

    const/16 v15, 0x67

    if-eq v12, v15, :cond_2

    if-ne v8, v14, :cond_1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v15, v14

    :goto_1
    const-string v14, "ATrace mode: "

    const-string v5, ", PTreace mode: "

    const-string v2, ", ANR trace enabled : "

    invoke-static {v12, v8, v14, v5, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ActivityManager"

    invoke-static {v5, v2, v15}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-eqz v15, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.intent.action.PERFORMANCE_LOGGING"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "performance_logging_ctrl"

    const/4 v15, 0x3

    invoke-virtual {v2, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v15, 0x3

    goto :goto_3

    :cond_4
    move-object/from16 v20, v8

    goto :goto_2

    :goto_3
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    new-instance v5, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v9, v13}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V

    invoke-virtual {v2, v13, v5}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v2

    const/16 v37, 0x0

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v9}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    invoke-interface {v4, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_4

    :cond_5
    move-object/from16 v2, v37

    :goto_4
    const-string v5, "ANR"

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/samsung/android/core/SystemDumpWriter;->saveDumpsysFiles(Ljava/lang/String;Z)V

    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_0
    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    iget-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v12, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput-object v13, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    const-string/jumbo v14, "stability_anr.value_total_anrs"

    invoke-static {v14}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/android/server/am/ProcessErrorStateRecord;->skipAnrLocked(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedProcessErrorStateRecordAppNotResponding()V

    const-string/jumbo v0, "stability_anr.value_skipped_anrs"

    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_2f

    :cond_6
    :try_start_1
    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockStarted()V

    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockEnded()V

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    move-wide/from16 v21, v7

    iget-wide v7, v0, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    const-wide/16 v23, 0x0

    cmp-long v0, v7, v23

    if-lez v0, :cond_7

    sub-long v7, v21, v7

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_2e

    :cond_7
    move-object/from16 v0, v37

    :goto_5
    iget-object v7, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v7, v7, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    new-instance v8, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v8, v7, v0}, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;-><init>(Ljava/lang/Boolean;Ljava/time/ZonedDateTime;)V

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v0, v7, v15, v14, v13}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v7, 0x7538

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v12, v0}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    iget-object v7, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    move-object v7, v0

    goto :goto_6

    :cond_8
    move-object/from16 v7, v37

    :goto_6
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v14, 0x178

    invoke-static {v14, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p8, :cond_d

    if-eqz v3, :cond_9

    iget v14, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    if-lez v14, :cond_9

    iget v14, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    goto :goto_7

    :cond_9
    move v14, v12

    :goto_7
    if-eq v14, v12, :cond_a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    sget v15, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v15, v12, :cond_b

    if-eq v15, v14, :cond_b

    move-object/from16 v25, v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move-object/from16 v25, v2

    :goto_8
    if-eq v15, v12, :cond_c

    if-eq v15, v14, :cond_c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    invoke-virtual {v11, v15, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_c
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 p6, v7

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v2, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v15, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v16, v14

    const/16 v17, 0x3

    new-instance v14, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object v11, v15

    move/from16 v10, v17

    move-object/from16 v17, v2

    move v15, v12

    const/4 v2, 0x1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(IILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/util/SparseBooleanArray;)V

    move v12, v15

    invoke-virtual {v11, v14, v7}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    goto :goto_9

    :cond_d
    move-object/from16 v25, v2

    move-object/from16 p6, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x3

    :goto_9
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const-string v5, "ActivityManager"

    if-gtz v12, :cond_e

    const-string/jumbo v11, "Memory header requested with invalid pid: "

    invoke-static {v12, v11, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v16, v37

    goto :goto_b

    :cond_e
    invoke-static {v12}, Lcom/android/internal/os/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;

    move-result-object v11

    if-nez v11, :cond_f

    const-string v11, "Failed to get memory snapshot for pid:"

    invoke-static {v12, v11, v5}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    iget v14, v11, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "RssHwmKb"

    invoke-virtual {v5, v15, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v14, v11, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "RssKb"

    invoke-virtual {v5, v15, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v14, v11, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "RssAnonKb"

    invoke-virtual {v5, v15, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v14, v11, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "RssShmemKb"

    invoke-virtual {v5, v15, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, v11, Lcom/android/internal/os/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "VmSwapKb"

    invoke-virtual {v5, v14, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v5

    :goto_b
    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogStarted()V

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v5

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v11

    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v5, v11, v15, v14}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    move-result-object v5

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "--- CriticalEventLog ---\n"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogEnded()V

    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v5

    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v11

    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v14, v14, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    invoke-direct {v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    iput-object v13, v7, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    iput v11, v7, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    iput-object v10, v7, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    iput v2, v7, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    iput v14, v7, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    new-instance v2, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-direct {v2}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    invoke-virtual {v2, v7}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    invoke-virtual {v5, v2}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "ANR in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_10

    const-string v5, " ("

    const-string v10, ")"

    invoke-static {v2, v5, v6, v10}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v5, "\n"

    const-string/jumbo v10, "PID: "

    const-string v11, "\n"

    invoke-static {v12, v5, v10, v11, v2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-eqz v13, :cond_11

    const-string/jumbo v5, "Reason: "

    const-string v10, "\n"

    invoke-static {v2, v5, v13, v10}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    move-object/from16 v5, p3

    if-eqz p3, :cond_12

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string/jumbo v10, "Parent: "

    const-string v11, "\n"

    invoke-static {v2, v10, v5, v11}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz p6, :cond_13

    const-string v10, "ErrorId: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v10, "Frozen: s["

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Process;->isFrozenState(I)Z

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "] g["

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean v10, v10, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "]"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    move-result-object v10

    if-eqz v10, :cond_14

    iget-object v14, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v10, v14, v7}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v5

    invoke-interface {v10, v14, v7}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    const-string v7, "ActivityManager"

    move-object/from16 v27, v8

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v28, v10

    const-string v10, "ANR delay of "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "ms started for "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_14
    move-object/from16 v27, v8

    move-object/from16 v28, v10

    move-wide/from16 v5, v23

    :goto_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateCalled()V

    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateReturned()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    new-instance v14, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    move/from16 v10, p8

    invoke-direct {v14, v1, v9, v0, v10}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V

    invoke-interface {v4, v14}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v10

    move v14, v12

    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    move/from16 v29, v14

    move-object v14, v13

    new-instance v13, Ljava/util/concurrent/atomic/AtomicLong;

    move-wide/from16 v39, v5

    const-wide/16 v4, -0x1

    invoke-direct {v13, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v6, v19

    move-object/from16 v19, v9

    if-eqz v0, :cond_15

    move-object/from16 v9, v37

    goto :goto_d

    :cond_15
    move-object v9, v8

    :goto_d
    move-object v11, v10

    if-eqz v0, :cond_16

    move-object/from16 v10, v37

    move-object/from16 v17, p7

    move-object v3, v8

    move-object/from16 v8, v18

    move-object/from16 p8, v20

    move-wide/from16 v4, v21

    move-object/from16 v41, v27

    move-object/from16 v42, v28

    move/from16 v6, v29

    const/16 v38, 0x1

    move-object/from16 v18, p10

    goto :goto_e

    :cond_16
    move-object v10, v6

    move-object/from16 v17, p7

    move-object v3, v8

    move-object/from16 v8, v18

    move-object/from16 p8, v20

    move-wide/from16 v4, v21

    move-object/from16 v41, v27

    move-object/from16 v42, v28

    const/16 v38, 0x1

    move-object/from16 v18, p10

    move/from16 v6, v29

    :goto_e
    invoke-static/range {v8 .. v19}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_4
    invoke-interface/range {v25 .. v25}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    const-string v8, "ActivityManager"

    const-string v9, "Interrupted while updating the CPU stats"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v8, "ActivityManager"

    const-string v9, "Failed to update the CPU stats"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0, v7, v4, v5}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    monitor-enter v3

    :try_start_5
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_10

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_17
    :goto_10
    invoke-virtual {v12}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    monitor-enter v3

    :try_start_7
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const-string v0, "ActivityManager"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_19

    const/4 v15, 0x3

    invoke-static {v6, v15}, Landroid/os/Process;->sendSignal(II)V

    :cond_18
    move-object v3, v11

    goto :goto_11

    :cond_19
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v23

    if-lez v0, :cond_18

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v5}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object v30

    iget-object v5, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance v9, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;

    invoke-direct {v9, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v27, v9

    move-object/from16 v31, v11

    invoke-static/range {v27 .. v33}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move-object/from16 v3, v31

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_11
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1b

    if-eqz v0, :cond_1b

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    const/16 v9, 0x3e8

    invoke-virtual {v0, v9, v8, v4}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    move-result v6

    :cond_1a
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "App ANR on incremental package "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " which is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v9, v6, v5

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "% loaded."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "incremental"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-instance v8, Landroid/os/incremental/IncrementalManager;

    invoke-static {v4}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    invoke-virtual {v8, v0}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    move-result-object v0

    move/from16 v19, v6

    goto :goto_12

    :cond_1b
    move/from16 v19, v6

    move-object/from16 v0, v37

    :goto_12
    if-eqz v0, :cond_1c

    const-string/jumbo v4, "Package is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v5, v5, v19

    float-to-int v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "% loaded.\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v11, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez p1, :cond_1d

    const-string/jumbo v5, "unknown"

    move-object v12, v5

    goto :goto_13

    :cond_1d
    move-object/from16 v12, p1

    :goto_13
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x2

    if-eqz v4, :cond_1f

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_1e

    move v15, v5

    goto :goto_14

    :cond_1e
    move/from16 v15, v38

    goto :goto_14

    :cond_1f
    const/4 v15, 0x0

    :goto_14
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object v13, v14

    move v14, v15

    move v15, v5

    goto :goto_15

    :cond_20
    move-object v13, v14

    move v14, v15

    move/from16 v15, v38

    :goto_15
    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    move-result v16

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_21

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_16
    move-object/from16 v17, v4

    goto :goto_17

    :cond_21
    const-string v4, ""

    goto :goto_16

    :goto_17
    if-eqz v0, :cond_22

    move/from16 v18, v38

    goto :goto_18

    :cond_22
    const/16 v18, 0x0

    :goto_18
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    move-result-wide v8

    goto :goto_19

    :cond_23
    const-wide/16 v8, -0x1

    :goto_19
    const/4 v4, -0x1

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    move-result v6

    move/from16 v22, v6

    goto :goto_1a

    :cond_24
    move/from16 v22, v4

    :goto_1a
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    move-result v6

    move/from16 v23, v6

    goto :goto_1b

    :cond_25
    move/from16 v23, v4

    :goto_1b
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    move-result v6

    if-eqz v6, :cond_26

    move/from16 v24, v38

    goto :goto_1c

    :cond_26
    const/16 v24, 0x0

    :goto_1c
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    move-result-wide v27

    goto :goto_1d

    :cond_27
    const-wide/16 v27, -0x1

    :goto_1d
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    move-result-wide v29

    goto :goto_1e

    :cond_28
    const-wide/16 v29, -0x1

    :goto_1e
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    move-result v6

    goto :goto_1f

    :cond_29
    move v6, v4

    :goto_1f
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    move-result v25

    goto :goto_20

    :cond_2a
    move/from16 v25, v4

    :goto_20
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    move-result v4

    :cond_2b
    move/from16 v31, v4

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    move-result-wide v32

    goto :goto_21

    :cond_2c
    const-wide/16 v32, -0x1

    :goto_21
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    move-result v4

    move/from16 v34, v4

    goto :goto_22

    :cond_2d
    const/16 v34, 0x0

    :goto_22
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    move-result-wide v20

    move-wide/from16 v35, v20

    :goto_23
    move-wide/from16 v20, v8

    goto :goto_24

    :cond_2e
    const-wide/16 v35, -0x1

    goto :goto_23

    :goto_24
    const/16 v9, 0x4f

    move-wide/from16 v47, v29

    move/from16 v30, v25

    move-wide/from16 v25, v27

    move-wide/from16 v27, v47

    move/from16 v29, v6

    invoke-static/range {v9 .. v36}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    move-object v14, v13

    move/from16 v6, v19

    if-eqz p4, :cond_2f

    move-object/from16 v4, p4

    iget-object v4, v4, Lcom/android/server/wm/WindowProcessController;->mOwner:Lcom/android/server/am/ProcessRecord;

    move-object v8, v4

    :goto_25
    move-object v4, v2

    goto :goto_26

    :cond_2f
    move-object/from16 v8, v37

    goto :goto_25

    :goto_26
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v11, v3

    const-string/jumbo v3, "anr"

    move-object v9, v4

    iget-object v4, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move v10, v5

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v13, Ljava/lang/Float;

    invoke-direct {v13, v6}, Ljava/lang/Float;-><init>(F)V

    move-object v6, v9

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v15, p6

    move-object/from16 v43, p8

    move-object/from16 v17, v6

    move-object/from16 v44, v14

    move-wide/from16 v45, v39

    move-object/from16 v16, v41

    move-object/from16 v6, p1

    move-object v14, v0

    move v0, v10

    move-object v10, v7

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;I)V

    new-instance v5, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;I)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;)Z

    move-result v2

    if-eqz v2, :cond_30

    return-void

    :cond_30
    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v8

    :try_start_8
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v2, :cond_31

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(ILjava/lang/String;)V

    goto :goto_27

    :catchall_3
    move-exception v0

    goto/16 :goto_2d

    :cond_31
    :goto_27
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-nez v3, :cond_32

    const-string/jumbo v0, "bg anr"

    const/4 v1, 0x6

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_32
    :try_start_9
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v14, v44

    if-eqz v14, :cond_33

    move-object/from16 v2, v43

    :try_start_a
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_28
    move-object v5, v2

    goto :goto_29

    :catchall_4
    move-exception v0

    goto/16 :goto_2c

    :cond_33
    const-string v2, "ANR"

    goto :goto_28

    :goto_29
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    if-eqz v2, :cond_34

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x2

    const/4 v7, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    :cond_34
    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    move-object/from16 v3, v42

    iput-object v3, v2, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    if-eqz v2, :cond_35

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->what:I

    new-instance v0, Lcom/android/server/am/AppNotRespondingDialog$Data;

    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v11, p2

    move/from16 v4, p5

    move/from16 v5, p9

    invoke-direct {v0, v3, v11, v4, v5}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    move-wide/from16 v5, v45

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2a

    :cond_35
    move-object/from16 v11, p2

    :goto_2a
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    new-instance v0, Landroid/os/BugreportParams;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/BugreportParams;-><init>(I)V

    if-nez v11, :cond_36

    move-object/from16 v1, v37

    goto :goto_2b

    :cond_36
    iget-object v1, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    return-void

    :goto_2c
    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :goto_2d
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :goto_2e
    :try_start_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :goto_2f
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public isMonitorCpuUsage()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 p0, 0x1

    return p0
.end method

.method public isSilentAnr()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    const-string/jumbo v2, "anr_show_background"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    if-nez v0, :cond_4

    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v3
.end method

.method public final setNotResponding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final skipAnrLocked(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    const/4 v1, 0x1

    const-string v2, " "

    const-string v3, "ActivityManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "During shutdown skipping ANR: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Skipping duplicate ANR: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Crashing app skipping ANR: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "App already killed by AM skipping ANR: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Skipping died app ANR: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final startAppProblemLSP()V
    .locals 6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v4, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueueImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
