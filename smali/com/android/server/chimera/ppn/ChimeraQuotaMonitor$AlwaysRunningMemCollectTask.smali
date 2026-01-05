.class public final Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;
.super Ljava/util/TimerTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "AlwaysRunningMemCollectTask"

    :try_start_0
    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-wide v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, v2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v2, v2, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/BatteryManager;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryManager;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    const-string/jumbo v2, "Skipped by screen off and not charging"

    invoke-static {v0, v2}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_2
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v2, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda0;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    iget-object v9, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v9, v9, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v9, v8}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v9, v9, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v9, v9, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v9}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v9

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v13, v3

    move-wide v11, v4

    :goto_1
    if-ge v13, v10, :cond_3

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v14, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v14, v4, v5, v9}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJZ)J

    move-result-wide v14

    add-long/2addr v11, v14

    goto :goto_1

    :cond_3
    iget-object v8, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iput-wide v11, v8, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    iget-object v8, v8, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Native task finish and cost "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v6

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms and native quota is "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v6}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v6, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget v7, v6, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mTaskExecuteCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v9, v9, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v9, v8}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_d

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v9, :cond_6

    goto/16 :goto_7

    :cond_6
    check-cast v9, [I

    iget-object v10, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v10, v10, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    iget-object v10, v10, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v10}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result v10

    move-wide v11, v4

    :goto_3
    array-length v13, v8

    if-ge v3, v13, :cond_a

    aget v13, v9, v3

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_9

    const/16 v14, -0x2710

    if-eq v13, v14, :cond_9

    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    iget-wide v14, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    cmp-long v16, v14, v4

    if-gtz v16, :cond_8

    iget-wide v14, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    :cond_8
    iget v13, v13, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v13, v14, v15, v10}, Lcom/android/server/chimera/ChimeraCommonUtil;->getDRAMUsed(IJZ)J

    move-result-wide v13

    add-long/2addr v11, v13

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iget-object v2, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-wide v8, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    add-long/2addr v8, v11

    iget-wide v2, v2, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mQuota:J

    sub-long/2addr v8, v2

    cmp-long v2, v8, v4

    if-lez v2, :cond_c

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getInstance()Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-result-object v2

    const-wide/32 v3, 0x19000

    add-long/2addr v8, v3

    iget-boolean v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    if-nez v3, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_c
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Task finish and cost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms and quota is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-wide v3, v3, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mLastNativeDRAMUsed:J

    add-long/2addr v11, v3

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    invoke-static {v3, v2}, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->-$$Nest$maddTaskHistory(Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor$AlwaysRunningMemCollectTask;->this$0:Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;

    iget-object v0, v0, Lcom/android/server/chimera/ppn/ChimeraQuotaMonitor;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_6
    invoke-static {v1}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Task execute with exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_7
    return-void
.end method
