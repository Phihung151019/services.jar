.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public dumpHeavyProcessByAdj:Ljava/util/HashMap;

.field public dumpHeavyProcessList:Ljava/util/ArrayList;

.field public fgsMemDumpList:Ljava/util/ArrayList;

.field public isThreadRunning:Z

.field public mProcessMemoryDumpThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;

.field public memoryUsageByAdj:Ljava/util/HashMap;

.field public peakLmkdKillAdj:I

.field public procMemDumpInfoList:Ljava/util/List;

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public static -$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 36

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget-object v7, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const-wide v8, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    mul-int/lit16 v0, v0, 0x400

    :goto_0
    int-to-double v12, v0

    mul-double/2addr v12, v8

    add-double/2addr v12, v10

    double-to-long v8, v12

    goto :goto_1

    :cond_0
    iget v0, v7, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    const/high16 v12, 0x100000

    mul-int/2addr v0, v12

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo$1()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    const-string v12, " mb"

    const-string v13, " mb, rss: "

    const-string v14, " mb, swap: "

    const-string v15, ", pss: "

    const/16 v16, 0x2

    const-string v2, ", adj: "

    const/16 v17, 0x0

    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    const/16 v20, 0x1

    const-string v4, "ActivityManager_kpm"

    const-wide/16 v21, 0x0

    if-eqz v0, :cond_f

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_f

    move-wide/from16 v23, v10

    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, v7, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$PssComparator;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    move-object v7, v0

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move/from16 v0, v17

    :goto_2
    if-ge v0, v11, :cond_e

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    add-int/lit8 v26, v0, 0x1

    move-object/from16 v3, v25

    check-cast v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    if-nez v0, :cond_1

    move/from16 v0, v26

    goto :goto_2

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move-wide/from16 v27, v5

    const/4 v5, 0x5

    if-ge v0, v5, :cond_2

    new-instance v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v3, v0, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    move-object v5, v0

    move/from16 v25, v20

    goto :goto_3

    :cond_2
    move/from16 v25, v17

    const/4 v5, 0x0

    :goto_3
    if-nez v25, :cond_4

    if-eqz p1, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v31, v7

    goto/16 :goto_b

    :cond_4
    :goto_4
    move/from16 v6, v17

    :goto_5
    :try_start_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v6, v0, :cond_7

    :try_start_1
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_5

    move/from16 v30, v6

    :try_start_2
    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v31, v7

    :try_start_3
    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v6, v0, Lcom/android/server/am/ProcessProfileRecord;->mBaseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v31, v7

    goto :goto_a

    :catch_3
    move-exception v0

    :goto_6
    move-object/from16 v31, v7

    goto :goto_7

    :cond_5
    move/from16 v30, v6

    move-object/from16 v31, v7

    goto :goto_8

    :catch_4
    move-exception v0

    move/from16 v30, v6

    goto :goto_6

    :goto_7
    :try_start_4
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_8
    add-int/lit8 v6, v30, 0x1

    move-object/from16 v7, v31

    goto :goto_5

    :cond_7
    move-object/from16 v31, v7

    const/4 v6, 0x0

    :goto_9
    if-eqz v25, :cond_8

    invoke-virtual {v1, v6, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {v1, v3, v6}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    :goto_a
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_b
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    move-wide/from16 v29, v6

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    move-wide/from16 v32, v6

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    move-wide/from16 v34, v6

    const/4 v6, 0x3

    new-array v6, v6, [J

    aput-wide v29, v6, v17

    aput-wide v32, v6, v20

    aput-wide v34, v6, v16

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_a
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v5, v0, v17

    move-wide/from16 v29, v5

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    add-long v5, v29, v5

    aput-wide v5, v0, v17

    aget-wide v5, v0, v20

    move-wide/from16 v29, v5

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long v5, v29, v5

    aput-wide v5, v0, v20

    aget-wide v5, v0, v16

    move-wide/from16 v29, v5

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    add-long v5, v29, v5

    aput-wide v5, v0, v16

    :goto_c
    const-string/jumbo v0, "vis"

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "percept"

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "perceptl"

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "perceptm"

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    move-wide/from16 v29, v5

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    add-long v5, v29, v5

    add-long v5, v5, v21

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v21, v5

    :cond_c
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "getProcessMemoryDumpInformation() process : "

    const/16 v5, 0x80

    invoke-static {v5, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v5, v5

    div-double v5, v5, v18

    add-double v5, v5, v23

    double-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v5, v5

    div-double v5, v5, v18

    add-double v5, v5, v23

    double-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v5, v5

    div-double v5, v5, v18

    add-double v5, v5, v23

    double-to-int v3, v5

    invoke-static {v3, v12, v4, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_d
    move/from16 v0, v26

    move-wide/from16 v5, v27

    move-object/from16 v7, v31

    goto/16 :goto_2

    :cond_e
    move-wide/from16 v27, v5

    :goto_d
    move-wide/from16 v5, v21

    goto :goto_e

    :cond_f
    move-wide/from16 v27, v5

    move-wide/from16 v23, v10

    goto :goto_d

    :goto_e
    const-string/jumbo v0, "fgsMemDumpList total size "

    const-string v3, " kb, Threshold(30%) "

    invoke-static {v0, v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " kb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v27

    cmp-long v0, v5, v8

    if-ltz v0, :cond_10

    move/from16 v0, v17

    :goto_f
    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_10

    iget-object v3, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    const-string/jumbo v5, "fgsMemDumpList process : "

    const/16 v6, 0x80

    invoke-static {v6, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v7, v7

    div-double v7, v7, v18

    add-double v7, v7, v23

    double-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v7, v7

    div-double v7, v7, v18

    add-double v7, v7, v23

    double-to-int v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v7, v7

    div-double v7, v7, v18

    add-double v7, v7, v23

    double-to-int v3, v7

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_10
    if-eqz p1, :cond_12

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v0

    move/from16 v3, v17

    :goto_10
    if-ge v3, v2, :cond_12

    aget-object v5, v0, v3

    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string/jumbo v7, "[ADJ Label] : "

    if-eqz v6, :cond_11

    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const-string v8, " - Top "

    invoke-static {v7, v5, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    goto :goto_11

    :cond_11
    const-string v6, " - this ADJ not found"

    invoke-static {v7, v5, v6, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getProcessMemoryDumpInformation() elapsed time "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method

.method public static -$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, " "

    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    const-string v3, "ActivityManager_kpm"

    if-nez v2, :cond_0

    const-string/jumbo v0, "dumpHeavyProcessByAdj is null"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v0, "dumpHeavyProcessByAdj is 0 size"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    :try_start_0
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_8

    aget-object v10, v6, v9

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "TF"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v12}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v7

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v18, v9

    iget-object v9, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v19, v10

    goto :goto_2

    :cond_2
    move-object/from16 v19, v10

    iget-wide v9, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    :goto_2
    add-int v10, v15, v8

    add-int/2addr v10, v6

    add-int/2addr v10, v7

    add-int/2addr v10, v9

    move-object/from16 v20, v11

    const/16 v11, 0x7e4

    if-le v10, v11, :cond_4

    sget-boolean v10, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v11, "reportHeavyProcessTop5ByAdj "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v6

    :cond_4
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_5
    iget-wide v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    iget-object v6, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v6, v6

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v10

    double-to-int v6, v6

    invoke-virtual {v12, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    move-wide/from16 v21, v8

    iget-wide v8, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v7, v8

    div-double v7, v7, v21

    add-double/2addr v7, v10

    double-to-int v7, v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, v14, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v7, v7

    div-double v7, v7, v21

    add-double/2addr v7, v10

    double-to-int v7, v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v17

    move/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    goto/16 :goto_1

    :cond_6
    move-object/from16 v17, v6

    move/from16 v16, v7

    move/from16 v18, v9

    move-object v6, v10

    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_7
    move-object/from16 v17, v6

    move/from16 v16, v7

    move/from16 v18, v9

    :goto_4
    add-int/lit8 v9, v18, 0x1

    move/from16 v7, v16

    move-object/from16 v6, v17

    goto/16 :goto_0

    :catch_0
    const-string/jumbo v1, "failed to create the KPUT"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V

    return-void
.end method

.method public static -$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ActivityManager_kpm"

    const-string/jumbo v7, "[ADJ Label] : "

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - Pss: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v5, v2

    long-to-double v9, v9

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    div-double/2addr v9, v11

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v13

    double-to-int v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, swapPss: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-wide v9, v5, v4

    long-to-double v9, v9

    div-double/2addr v9, v11

    add-double/2addr v9, v13

    double-to-int v4, v9

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, Rss: "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    aget-wide v4, v5, v4

    long-to-double v4, v4

    div-double/2addr v4, v11

    add-double/2addr v4, v13

    double-to-int v4, v4

    const-string v5, " mb"

    invoke-static {v4, v5, v6, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    const-string v5, " - this ADJ not found"

    invoke-static {v7, v4, v5, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    const/16 p1, 0x3e9

    iput p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemDumpInfoList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fgsMemDumpList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    return-void
.end method

.method public static dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    iget v6, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    const-string/jumbo p0, "empty"

    return-object p0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    iget v9, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    aget-object v8, v8, v9

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    iget v8, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    div-double/2addr v7, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    add-double/2addr v7, v11

    double-to-int v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    int-to-double v5, v5

    div-double/2addr v5, v9

    add-double/2addr v5, v11

    double-to-int v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_1
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    array-length v4, v4

    if-ge v3, v4, :cond_3

    move v4, v1

    :goto_2
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    array-length v6, v5

    if-ge v4, v6, :cond_2

    sget-object v6, Lcom/android/internal/app/procstats/ProcessStats;->ALL_SCREEN_ADJ:[I

    aget v6, v6, v2

    sget-object v7, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    aget v7, v7, v3

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x10

    aget v5, v5, v4

    add-int/2addr v6, v5

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1

    new-instance v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput v2, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->screenIndex:I

    iput v3, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->memoryFactorIndex:I

    iput v4, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->stateIndex:I

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minPss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgPss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxPss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minUss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgUss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxUss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMinimum(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->minRss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssAverage(I)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->avgRss:I

    invoke-virtual {p0, v6}, Lcom/android/internal/app/procstats/ProcessState;->getPssRssMaximum(I)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->maxRss:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_5

    new-instance p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$DumpPssUssRssInfo;->sampleCount:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public static showDebugHeavyProcess(Ljava/util/ArrayList;)V
    .locals 10

    const-string v0, "ActivityManager_kpm"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    const/16 v3, 0x80

    const-string/jumbo v4, "showDebugHeavyProcess() process : "

    invoke-static {v3, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ", PackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ", PackageVer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, ", adj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, swap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, rss: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mb, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    const-string/jumbo p0, "ProcessMemoryHeavy not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final fillDumpHeavyProcessTop5ByAdj(Lcom/android/server/am/ActivityManagerService$MemDumpInfo;Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessByAdj:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    new-instance v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->getPssUssRssInfo(Lcom/android/internal/app/procstats/ProcessState;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v1, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public final fillProcessPackageNameAndVersion(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getVersion()J

    move-result-wide p0

    iput-wide p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    const/4 p0, 0x0

    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    iput-object p0, p2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final sendHqmHeavyProcessTop5ByAdj(Lorg/json/JSONObject;J)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "TYPE"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "UPTM"

    invoke-virtual {p1, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ActivityManager_kpm"

    const-string/jumbo p2, "failed to create the KPUT"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    return-void
.end method
