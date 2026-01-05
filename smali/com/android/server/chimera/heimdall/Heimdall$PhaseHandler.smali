.class public final Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/16 v2, 0x800

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    if-eq v0, v3, :cond_9

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v6, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    iget-object v8, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v0, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v0, v6, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v3

    :catch_0
    :cond_4
    :goto_0
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_5

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    move-result-object v0

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iget p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/2addr p1, v2

    iput p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide v0, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    move-result-object v0

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    iget v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    iget-object v1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-virtual {p1, v0}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {p1, v0}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {p0, v0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    :cond_7
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->recycle()V

    :cond_8
    :goto_1
    return-void

    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    const/16 v5, 0x20

    if-lez v0, :cond_a

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    goto :goto_3

    :cond_a
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v6, v0

    and-int/2addr v6, v0

    if-ne v6, v1, :cond_b

    goto :goto_2

    :cond_b
    shr-int/lit8 v6, v6, 0x1

    :goto_2
    or-int/2addr v0, v6

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v6, v0

    and-int/2addr v0, v6

    if-ne v0, v5, :cond_c

    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    goto :goto_3

    :cond_c
    iput v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    :goto_3
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    const/16 v6, 0x10

    const-wide/16 v7, 0x0

    if-lez v0, :cond_e

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v9, v0

    and-int/2addr v0, v9

    if-ne v0, v5, :cond_d

    const-wide/16 v7, 0x4e20

    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    goto :goto_4

    :cond_d
    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    goto :goto_4

    :cond_e
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v9, v0

    and-int/2addr v0, v9

    if-ne v0, v6, :cond_f

    const-wide/16 v7, 0x1388

    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    goto :goto_4

    :cond_f
    iput-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    :goto_4
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v7, v0

    and-int/2addr v0, v7

    iget-object v7, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-eq v0, v1, :cond_1a

    const/16 v8, 0x8

    if-eq v0, v8, :cond_19

    if-eq v0, v6, :cond_12

    if-eq v0, v5, :cond_11

    const/16 v2, 0x40

    if-eq v0, v2, :cond_10

    goto/16 :goto_d

    :cond_10
    invoke-virtual {v7, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processStartPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v4

    goto/16 :goto_d

    :cond_11
    invoke-virtual {v7, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v4

    goto/16 :goto_d

    :cond_12
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_13

    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    goto :goto_5

    :cond_13
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    :goto_5
    iget v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    move v4, v2

    :goto_6
    if-ltz v4, :cond_18

    sget-object v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->sBgTrimPackages:[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v5, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    const-string/jumbo v4, "heimdall"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v6, "Schedule BG Trim to "

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v5

    :try_start_1
    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v7}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-lez v8, :cond_14

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_15

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9

    :cond_15
    :try_start_2
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mThread:Lcom/android/server/am/ApplicationThreadDeferred;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_16

    const/16 v7, 0x28

    :try_start_3
    invoke-virtual {v2, v7}, Landroid/app/IApplicationThread$Delegator;->scheduleTrimMemory(I)V

    const-string v2, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_16
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_9

    :goto_8
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_17
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_18
    :goto_9
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Garbage Collection is performed to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    :goto_a
    move v4, v3

    goto/16 :goto_d

    :cond_19
    invoke-virtual {v7, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->processScanPhase(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)Z

    move-result v4

    goto/16 :goto_d

    :cond_1a
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v6, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    if-ne v5, v6, :cond_1b

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1c

    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mAllowedStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    goto :goto_b

    :cond_1c
    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mDefaultStrategy:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;

    :goto_b
    iget v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    packed-switch v2, :pswitch_data_1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    sget v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    int-to-double v6, v2

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v6, v8

    cmpl-double v2, v4, v6

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    if-lez v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Block report by RandomSampleRate: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1d
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->reportDumpFile(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->reportDumpFile(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    invoke-virtual {v2, p1}, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    iget-object v2, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    if-eqz v5, :cond_1e

    :try_start_6
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_c

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    :cond_1e
    const-string/jumbo v4, "unknown"

    :goto_c
    iput-object v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppVersionName:Ljava/lang/String;

    new-instance v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iput-object v7, v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->packageName:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->versionName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    iput v4, v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->memoryUsage:I

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v4

    iput v4, v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->specKillCnt:I

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v4

    iput v4, v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->globalKillCnt:I

    iget-wide v7, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_1f

    const/4 v6, 0x1

    :cond_1f
    iput v6, v5, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;->realKillCnt:I

    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mBigdataManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

    invoke-virtual {v2, v5}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;->addBigdataInfoList(Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataInfo;)V

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    invoke-virtual {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    goto/16 :goto_a

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Pid and Process name doesn\'t match. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mInProgressProcesses:Ljava/util/HashSet;

    iget-object v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_d
    if-eqz v4, :cond_22

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v2, v0

    and-int/2addr v0, v2

    if-ne v0, v1, :cond_21

    goto :goto_e

    :cond_21
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide v1, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_22
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->recycle()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
