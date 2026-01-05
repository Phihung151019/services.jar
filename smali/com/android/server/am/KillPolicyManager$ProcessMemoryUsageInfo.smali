.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mProcDumpMemThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

.field public final mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

.field public procsMemoryPssKbByADJ:Ljava/util/HashMap;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static -$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v5, v5, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v2, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    new-instance v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Landroid/util/SparseArray;)V

    invoke-virtual {v3, v5}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getSetAdjWithServices()I

    move-result v5

    iget-object v7, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v7, v7, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move v9, v6

    :goto_2
    sget-object v10, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_ADJ:[I

    array-length v11, v10

    if-ge v9, v11, :cond_2

    array-length v11, v10

    add-int/lit8 v11, v11, -0x1

    if-eq v9, v11, :cond_3

    aget v11, v10, v9

    if-lt v5, v11, :cond_1

    add-int/lit8 v11, v9, 0x1

    aget v10, v10, v11

    if-ge v5, v10, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, -0x1

    :cond_3
    :goto_3
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p0, v3, v9, v7, v8}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoInternal(IIILjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ActivityManager_kpm"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getProcDumpMemInfo() elapsed time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :goto_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public static -$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "ActivityManager_kpm"

    const-string/jumbo v8, "[ADJ Label] : "

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    aget-wide v9, v6, v3

    const/4 v11, 0x1

    aget-wide v12, v6, v11

    add-long/2addr v9, v12

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-gez v14, :cond_0

    move-wide v9, v12

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x80

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - total: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v8, v9

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    div-double/2addr v8, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v15

    double-to-int v5, v8

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, pss: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v3

    long-to-double v8, v8

    div-double/2addr v8, v13

    add-double/2addr v8, v15

    double-to-int v5, v8

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, swappss: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v6, v11

    long-to-double v8, v8

    div-double/2addr v8, v13

    add-double/2addr v8, v15

    double-to-int v5, v8

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, writeback: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget-wide v8, v6, v5

    long-to-double v8, v8

    div-double/2addr v8, v13

    add-double/2addr v8, v15

    double-to-int v5, v8

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mb, count: "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    aget-wide v5, v6, v5

    invoke-static {v12, v5, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v6, " - this ADJ not found"

    invoke-static {v8, v5, v6, v7}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    invoke-direct {v0, p1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    return-void
.end method


# virtual methods
.method public final getProcDumpMemInfoInternal(IIILjava/lang/String;)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v6, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const-string/jumbo v11, "failed to read "

    const-string v12, "ActivityManager"

    if-gtz v2, :cond_0

    const/4 v0, 0x0

    const-wide/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x2

    goto/16 :goto_c

    :cond_0
    const-string/jumbo v0, "Pss:"

    const-string/jumbo v13, "SwapPss:"

    const-string/jumbo v14, "Writeback:"

    filled-new-array {v0, v13, v14}, [Ljava/lang/String;

    move-result-object v0

    const-string v13, "/proc/"

    const-string v14, "/smaps_rollup"

    invoke-static {v2, v13, v14}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-array v14, v9, [J

    :try_start_0
    new-instance v15, Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v16, 0x1

    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v13}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x0

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_4

    const/16 v18, 0x0

    :try_start_3
    aget-object v8, v0, v4

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "\\s+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    if-ne v8, v9, :cond_3

    aget-object v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v19, 0x2

    int-to-long v7, v5

    :try_start_4
    aput-wide v7, v14, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_1
    move-object v4, v0

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_2
    const/16 v19, 0x2

    goto :goto_1

    :cond_3
    const/16 v19, 0x2

    :goto_3
    add-int/2addr v4, v10

    if-ne v4, v9, :cond_1

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    const/16 v19, 0x2

    :goto_4
    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    move-object v0, v14

    goto :goto_c

    :catchall_2
    move-exception v0

    const/16 v18, 0x0

    goto :goto_2

    :goto_6
    :try_start_6
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_0
    :goto_8
    const/16 v18, 0x0

    const/16 v19, 0x2

    goto :goto_a

    :catch_1
    :goto_9
    const/16 v18, 0x0

    const/16 v19, 0x2

    goto :goto_b

    :catch_2
    const-wide/16 v16, 0x1

    goto :goto_8

    :catch_3
    :goto_a
    invoke-static {v11, v13, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    const-wide/16 v16, 0x1

    goto :goto_9

    :catch_5
    :goto_b
    invoke-static {v11, v13, v12}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :goto_c
    if-nez v0, :cond_5

    goto/16 :goto_11

    :cond_5
    invoke-static {v2}, Lcom/android/server/chimera/heimdall/Heimdall;->readMemtrackMemory(I)[J

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    if-lt v5, v6, :cond_6

    aget-wide v7, v4, v9

    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-nez v5, :cond_6

    aget-wide v7, v0, v18

    aget-wide v11, v4, v18

    aget-wide v13, v4, v10

    add-long/2addr v11, v13

    aget-wide v4, v4, v19

    add-long/2addr v11, v4

    add-long/2addr v11, v7

    aput-wide v11, v0, v18

    :cond_6
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    aget-wide v7, v0, v18

    aget-wide v11, v0, v10

    aget-wide v13, v0, v19

    new-array v6, v6, [J

    aput-wide v7, v6, v18

    aput-wide v11, v6, v10

    aput-wide v13, v6, v19

    aput-wide v16, v6, v9

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_7
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    aget-wide v6, v5, v18

    aget-wide v11, v0, v18

    add-long/2addr v6, v11

    aput-wide v6, v5, v18

    aget-wide v6, v5, v10

    aget-wide v11, v0, v10

    add-long/2addr v6, v11

    aput-wide v6, v5, v10

    aget-wide v6, v5, v19

    aget-wide v11, v0, v19

    add-long/2addr v6, v11

    aput-wide v6, v5, v19

    aget-wide v6, v5, v9

    add-long v6, v6, v16

    aput-wide v6, v5, v9

    :goto_d
    aget-wide v5, v0, v18

    aget-wide v7, v0, v10

    aget-wide v11, v0, v19

    const-string v9, ""

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    iget v13, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mCurrentState:I

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    move/from16 v20, v10

    move/from16 v10, v19

    if-eq v13, v10, :cond_8

    goto :goto_10

    :cond_8
    if-nez p4, :cond_9

    :try_start_8
    invoke-static {v2}, Lcom/android/internal/os/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_e

    :catch_6
    move-object v2, v9

    :goto_e
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v2, "<invalid>"

    goto :goto_f

    :cond_9
    move-object/from16 v2, p4

    :cond_a
    :goto_f
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->mSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

    new-instance v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v2, v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->processName:Ljava/lang/String;

    iput v3, v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->adjLabelIndex:I

    move/from16 v2, p3

    iput v2, v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->procState:I

    add-long/2addr v5, v7

    long-to-double v2, v5

    div-double v2, v2, v16

    add-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->pssInMb:I

    long-to-double v2, v7

    div-double v2, v2, v16

    add-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->swapPssInMb:I

    long-to-double v2, v11

    div-double v2, v2, v16

    add-double/2addr v2, v14

    double-to-int v2, v2

    iput v2, v9, Lcom/android/server/am/KillPolicyManager$SampleProcessInfo;->writebackInMb:I

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessSampler;->mTotalProcessInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "getProcDumpMemInfo() adj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v0, v18

    long-to-double v2, v2

    div-double v2, v2, v16

    add-double/2addr v2, v14

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mb, swappss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v0, v20

    long-to-double v2, v2

    div-double v2, v2, v16

    add-double/2addr v2, v14

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mb, writeback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x2

    aget-wide v2, v0, v19

    long-to-double v2, v2

    div-double v2, v2, v16

    add-double/2addr v2, v14

    double-to-int v0, v2

    const-string v2, " mb"

    const-string v3, "ActivityManager_kpm"

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_b
    :goto_11
    return-void
.end method
