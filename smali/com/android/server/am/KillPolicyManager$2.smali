.class public final Lcom/android/server/am/KillPolicyManager$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public final synthetic val$triggerTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    iput-wide p2, p0, Lcom/android/server/am/KillPolicyManager$2;->val$triggerTime:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v2, "ActivityManager_kpm"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "report daily random sample time : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lcom/android/server/am/KillPolicyManager$2;->val$triggerTime:J

    invoke-static {v1, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawBigdata()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    iget-object v6, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-virtual {v6, v5}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateKillInfo()V

    iget-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager;->changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyyMMdd_HHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->uptimeMillis:J

    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iget-object v5, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    array-length v6, v5

    sub-int/2addr v6, v4

    :goto_0
    if-ltz v6, :cond_2

    aget-wide v7, v5, v6

    iget-object v9, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    aget-wide v9, v9, v6

    sub-long/2addr v7, v9

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    iput-boolean v4, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mProcMemDumpBigdata:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    invoke-direct {v6, v5, v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const-string v5, "ChimeraManagerService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraStat()Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, v1, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-static {v5, v6}, Lcom/android/server/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/chimera/ChimeraDataInfo;Lcom/android/server/chimera/ChimeraDataInfo;)Lcom/android/server/chimera/ChimeraDataInfo;

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/chimera/ChimeraDataInfo;

    :cond_3
    iget-object v3, v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget v3, v1, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    rem-int/lit8 v5, v3, 0x1e

    iput v5, v1, Lcom/android/server/am/KillPolicyManager;->mBigdataIndex:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/server/am/KillPolicyManager;->mBigdataMetric:I

    new-instance v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v6, v1, v3}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager;->mKpmRawBigdata:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aput-object v6, v1, v5

    :goto_1
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v34, "RbinAlloced"

    const-string/jumbo v35, "RbinPool"

    const-string/jumbo v5, "MemFree"

    const-string/jumbo v6, "MemAvailable"

    const-string v7, "Cached"

    const-string v8, "Active(file)"

    const-string v9, "Inactive(file)"

    const-string/jumbo v10, "RbinFree"

    const-string/jumbo v11, "RbinCached"

    const-string/jumbo v12, "SwapTotal"

    const-string/jumbo v13, "SwapFree"

    const-string v14, "KReclaimable"

    const-string/jumbo v15, "SReclaimable"

    const-string/jumbo v16, "SUnreclaim"

    const-string v17, "KgslShmemUsage"

    const-string v18, "GpuSwap"

    const-string/jumbo v19, "system"

    const-string/jumbo v20, "zram0"

    const-string v21, "GpuTotal"

    const-string/jumbo v22, "PageTables"

    const-string/jumbo v23, "VmallocUsed"

    const-string v24, "Active(anon)"

    const-string v25, "Inactive(anon)"

    const-string/jumbo v26, "Mapped"

    const-string v27, "AnonPages"

    const-string/jumbo v28, "Shmem"

    const-string/jumbo v29, "MemTotal"

    const-string v30, "HugepagePool"

    const-string v31, "DmaHeapPool"

    const-string/jumbo v32, "Unevictable"

    const-string/jumbo v33, "system-uncached"

    filled-new-array/range {v5 .. v35}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v20, "cma_alloc_fail"

    const-string/jumbo v21, "allocstall_dma32"

    const-string/jumbo v5, "workingset_refault_anon"

    const-string/jumbo v6, "workingset_refault_file"

    const-string/jumbo v7, "pgpgin"

    const-string/jumbo v8, "pgpgout"

    const-string/jumbo v9, "pswpin"

    const-string/jumbo v10, "pswpout"

    const-string/jumbo v11, "allocstall_normal"

    const-string/jumbo v12, "allocstall_movable"

    const-string/jumbo v13, "pgfault"

    const-string/jumbo v14, "pgmajfault"

    const-string/jumbo v15, "pgsteal_kswapd"

    const-string/jumbo v16, "pgsteal_direct"

    const-string/jumbo v17, "pgscan_kswapd"

    const-string/jumbo v18, "pgscan_direct"

    const-string/jumbo v19, "oom_kill"

    filled-new-array/range {v5 .. v21}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "TYPE"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v8, "KVER"

    const-string v9, "4.7"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "DRAM"

    iget v9, v1, Lcom/android/server/am/KillPolicyManager;->mTotalMem:I

    mul-int/lit16 v9, v9, 0x400

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "SWPT"

    iget v9, v1, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-string v9, "/proc/meminfo"

    invoke-static {v9}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    :goto_2
    const/16 v12, 0x1f

    if-ge v11, v12, :cond_5

    aget-object v12, v3, v11

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    goto :goto_3

    :cond_4
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "PMI"

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v8, "/proc/vmstat"

    invoke-static {v8}, Lcom/android/server/am/KillPolicyManager;->getMemInfoFromFile(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v8

    :goto_4
    const/16 v9, 0x11

    if-ge v10, v9, :cond_8

    aget-object v9, v5, v10

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_5

    :cond_6
    move-wide v14, v12

    :goto_5
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sub-long v12, v11, v14

    :cond_7
    invoke-virtual {v3, v12, v13}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    const-string/jumbo v5, "VMSTAT"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object v8, v1, Lcom/android/server/am/KillPolicyManager;->mVmStats:Ljava/util/HashMap;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const-string/jumbo v3, "failed to create the KPUT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    :goto_6
    invoke-virtual {v1, v3}, Lcom/android/server/am/KillPolicyManager;->sendHqmBigData(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$2;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mMemoryStabilityEventManager:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;->report()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_7
    return-void
.end method
