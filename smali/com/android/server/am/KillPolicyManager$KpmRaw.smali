.class public final Lcom/android/server/am/KillPolicyManager$KpmRaw;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public accMem:I

.field public accSwap:I

.field public appCnt:I

.field public avlMem:I

.field public cachedActTotalCnt:I

.field public cachedClientKillCount:I

.field public cachedEmptyKillCount:I

.field public cachedNormalKillCount:I

.field public cachedTotalCnt:I

.field public chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

.field public coldCount:I

.field public final createTime:J

.field public final curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public currentCachedActCnt:I

.field public final cycleNum:I

.field public dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

.field public dumpHeavyProcessList:Ljava/util/ArrayList;

.field public hotCount:I

.field public hotRatio:I

.field public isDailyBigdata:Z

.field public isGetPssDump:Z

.field public isStateChanged:Z

.field public isWarmUpCycle:Z

.field public killedPackageCount:I

.field public killedPackageRatio:I

.field public lastUpdateTime:J

.field public final launchedAndKilledPackageMap:Ljava/util/Map;

.field public launchedPackageCount:I

.field public lmkCnt:J

.field public final lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

.field public lmkdCric:J

.field public final lmkdCurrentCount:[J

.field public final lmkdKilledProcessInfo:Ljava/util/ArrayList;

.field public lmkdMed:J

.field public final lmkdPrevCount:[J

.field public lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

.field public final lmkdStateCount:[J

.field public mProcessSampler:Lcom/android/server/am/KillPolicyManager$ProcessSampler;

.field public maxMem:I

.field public maxSwap:I

.field public minMem:I

.field public minSwap:I

.field public nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public peakLmkdKillAdj:I

.field public pickedActTotalCnt:I

.field public pickedTotalCnt:I

.field public final policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public prKilledRatio:I

.field public final prevLmkCnt:J

.field public final prevLmkdCric:J

.field public final prevLmkdMed:J

.field public prevTinyCachedNormalKillCount:I

.field public procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

.field public procsAdjPss:Ljava/util/HashMap;

.field public psiCpuMax:D

.field public psiCpuSum:D

.field public psiIoMax:D

.field public psiIoSum:D

.field public psiMemoryMax:D

.field public psiMemorySum:D

.field public resetStatus:I

.field public svKilledRatio:I

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public timeStamp:Ljava/lang/String;

.field public final tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public uptimeMillis:J

.field public warmCount:I


# direct methods
.method public static -$$Nest$mcheckMemCriticalLowTH(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const-string v3, "ActivityManager_kpm"

    if-eqz v2, :cond_0

    const-string/jumbo v2, "checkMemCriticalLowTH() killRatio = "

    const-string v4, "%, killedPackageRatio = "

    invoke-static {v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    const-string v5, "%"

    invoke-static {v4, v5, v3, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    sget v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    const/4 v6, 0x0

    if-lt v1, v2, :cond_3

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "checkMemCriticalLowTH() killRatio is over thrshold but not occurred many apps, so result not accepted"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :cond_3
    :goto_1
    iput v6, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkMemCriticalLowTH() memory critical status is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v7, 0x1

    invoke-static {v7, v8}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-lez v1, :cond_5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.sys.kpm_cri_mem_detect"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v1, :cond_5

    const-string/jumbo v1, "prev-adj kill"

    invoke-virtual {v5, v1}, Lcom/android/server/am/KillPolicyManager;->dumpKpmStatsToFile(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "res"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v8, "com.samsung.android.lool"

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v5, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "memory Critical Low intent RESULT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->mIsChimeraPmmKillTriggered:Z

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v0, v1, :cond_6

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v0, v1, :cond_c

    :cond_6
    iget-object v0, v5, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    const-string v6, " => "

    const-string v7, ", "

    if-lt v1, v2, :cond_7

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    int-to-double v12, v2

    mul-double/2addr v10, v12

    add-double/2addr v10, v8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "nativeFactor : "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/Pair;

    double-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    double-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v1, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    :cond_7
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    if-lt v1, v2, :cond_8

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mPersistentMemDumpList:Ljava/util/List;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->getLinearRegressionFactor(Ljava/util/List;)Landroid/util/Pair;

    move-result-object v2

    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v4

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    add-double/2addr v11, v9

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    int-to-double v13, v8

    mul-double/2addr v9, v13

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v15, v9

    add-double v8, v15, v11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sysFactor : "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " persFactor : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/Pair;

    double-to-int v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    double-to-int v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    :cond_8
    iget-object v0, v5, Lcom/android/server/am/KillPolicyManager;->mMemoryFloodDetector:Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mNativeMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    if-ge v1, v2, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedNative:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    sget v8, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    add-int/lit8 v8, v8, 0x64

    int-to-double v8, v8

    mul-double/2addr v1, v8

    mul-double/2addr v6, v3

    cmpg-double v1, v1, v6

    if-gez v1, :cond_a

    const-string/jumbo v0, "persistent size overflow"

    invoke-virtual {v5, v0}, Lcom/android/server/am/KillPolicyManager;->dumpKpmStatsToFile(Ljava/lang/String;)V

    const-string v0, "KERNEL"

    invoke-static {v5, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_2
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mSystemMemDumpList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    if-ge v1, v2, :cond_b

    goto :goto_3

    :cond_b
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v1, v1

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$MemoryFloodDetector;->mLastCalculatedSysPers:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    sget v0, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    add-int/lit8 v0, v0, 0x64

    int-to-double v8, v0

    mul-double/2addr v1, v8

    mul-double/2addr v6, v3

    cmpg-double v0, v1, v6

    if-gez v0, :cond_c

    const-string/jumbo v0, "native size overflow"

    invoke-virtual {v5, v0}, Lcom/android/server/am/KillPolicyManager;->dumpKpmStatsToFile(Ljava/lang/String;)V

    const-string/jumbo v0, "PLATFORM"

    invoke-static {v5, v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mreportResetState(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public static -$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "markKilledPackage : "

    const-string v1, ", adj "

    const-string v2, ", killed adj : "

    invoke-static {p2, v0, p1, v1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static -$$Nest$mupdateLmkdStateAndCount(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result v1

    if-ge v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    aget-wide v0, p0, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p0, p1

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;I)V
    .locals 8

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdState;->values()[Lcom/android/server/am/KillPolicyManager$LmkdState;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$LmkdCount;->values()[Lcom/android/server/am/KillPolicyManager$LmkdCount;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    const p2, 0x7fffffff

    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    move-result p2

    int-to-long v4, p2

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    const/16 p2, 0xf

    invoke-static {v1, p2, v1, v1}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    move-result p2

    int-to-long v4, p2

    iget-wide v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    const/16 p2, 0x2020

    filled-new-array {p2}, [I

    move-result-object p2

    new-array v4, v0, [J

    aput-wide v2, v4, v1

    const-string v5, "/sys/module/lowmemorykiller/parameters/lmkcount"

    const/4 v6, 0x0

    invoke-static {v5, p2, v6, v4, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v4, v4, v1

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    iget-object p2, p1, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iget-object p2, p1, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->createTime:J

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    iput-boolean v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    const/16 p2, 0x3e9

    iput p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedClientKillCount:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevTinyCachedNormalKillCount:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    new-instance p2, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {p2}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->chimeraDataInfo:Lcom/android/server/chimera/ChimeraDataInfo;

    sget-object p2, Lcom/android/server/am/KillPolicyManager$LmkdState;->LEVEL_0:Lcom/android/server/am/KillPolicyManager$LmkdState;

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    move p2, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    array-length v5, v4

    if-ge p2, v5, :cond_0

    aput-wide v2, v4, p2

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    array-length v5, v4

    if-ge p2, v5, :cond_1

    aput-wide v2, v4, p2

    add-int/2addr p2, v0

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdPrevCount:[J

    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->fillLmkdCounts([J)V

    new-instance p2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v2, p1, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-direct {p2, p1, p0, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V

    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdKilledProcessInfo:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iput-object v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    :goto_2
    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    array-length p2, p1

    if-ge v1, p2, :cond_2

    sget-object p2, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object p2, p1, v1

    add-int/2addr v1, v0

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final getKpmData(I)Ljava/lang/StringBuilder;
    .locals 8

    const/16 v0, 0x80

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-nez p1, :cond_1

    const-string/jumbo p0, "appCnt is 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    int-to-double v2, v2

    iget v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    int-to-double v2, v2

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    int-to-double v2, v2

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedNormalKillCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedEmptyKillCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->policyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget v6, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v2, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdState:Lcom/android/server/am/KillPolicyManager$LmkdState;

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$LmkdState;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdStateCount:[J

    const/4 v2, 0x0

    aget-wide v3, p1, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p1, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "],["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCurrentCount:[J

    aget-wide v5, v4, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v5, v3

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, v4, v5

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->tinyKpmState:[Lcom/android/server/am/KillPolicyManager$KpmState;

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    array-length v2, p1

    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo p1, "],"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->timeStamp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final getKpmHeavyPssData()Ljava/lang/StringBuilder;
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0x80

    const-string v2, " "

    invoke-static {v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const-string v0, ",didn\'t happen Previous App Kill by LMKD"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v1

    :cond_0
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    const-string v4, ", [null]"

    const-string/jumbo v5, "]"

    const-string v6, ",["

    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memTotal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->activeFile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->inactiveFile:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->rbinCached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->kReclaimable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sReclaimable:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->sUnreclaim:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 0 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuSwap:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemCached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->zram:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->gpuTotal:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->vmallocUsed:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    iget v3, v3, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->systemUncached:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    if-eqz v3, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v4, v3

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v4, :cond_3

    aget-object v13, v3, v12

    iget-object v14, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [J

    const-string/jumbo v14, "{"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    aget-wide v8, v13, v14

    long-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v8, v15

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    aget-wide v8, v13, v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v8, v15

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    aget-wide v8, v13, v8

    long-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v8, v15

    double-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "}"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const-string/jumbo v8, "{-1 -1 -1}"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v8, v14

    :goto_4
    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_7

    iget-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ver: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->processVersion:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    const-string v3, ", PackageName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const-string v3, ", PackageName: null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    if-eqz v3, :cond_6

    const-string v3, ", PackageVer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->packageVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    const-string v3, ", PackageVer: null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const-string v3, ", adj: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pss: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->pss:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v15

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, swap: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->swap_out:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v15

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, rss: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->memoryInfo:Lcom/android/server/am/ActivityManagerService$MemDumpInfo;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerService$MemDumpInfo;->rss:J

    long-to-double v3, v3

    div-double/2addr v3, v10

    add-double/2addr v3, v15

    double-to-int v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mb, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/KillPolicyManager;->mProcessHeavyMemory:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$DumpHeavyProcessInfo;->pssUssRssInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpPssUssRssToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    :cond_7
    return-object v1
.end method

.method public final updateKillInfo()V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/am/SecLmkdStats;->getTotalCriticalKillCount()I

    move-result v1

    int-to-long v1, v1

    const/16 v3, 0xf

    invoke-static {v0, v3, v0, v0}, Lcom/android/server/am/SecLmkdStats;->getKillCountFromSlotRange(IIZZ)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v1

    iget-wide v5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdCric:J

    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkdMed:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    const/16 v1, 0x2020

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    const-string v3, "/sys/module/lowmemorykiller/parameters/lmkcount"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v2, v0

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prevLmkCnt:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    return-void
.end method

.method public final updateMemInfo(Lcom/android/server/am/KillPolicyManager$ProcMemInfo;)V
    .locals 3

    iget v0, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memFree:I

    iget v1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->cached:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget v1, v1, Lcom/android/server/am/KillPolicyManager;->mTotalSwap:I

    iget v2, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->swapFree:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    iget p1, p1, Lcom/android/server/am/KillPolicyManager$ProcMemInfo;->memAvailable:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minMem:I

    :cond_0
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    if-ge p1, v0, :cond_1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxMem:I

    :cond_1
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    if-le p1, v1, :cond_2

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->minSwap:I

    :cond_2
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    if-ge p1, v1, :cond_3

    iput v1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->maxSwap:I

    :cond_3
    return-void
.end method

.method public final updateProcessStateInfo(ILjava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    const-string v3, "ActivityManager_kpm"

    if-eqz v2, :cond_0

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v4}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v4

    if-ne v1, v4, :cond_0

    const-string/jumbo v4, "add addLaunchedPackage : "

    const-string v5, ", cur count : "

    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v4, v4, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    sub-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    iget-object v6, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v9, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    const/16 v10, 0x2bc

    if-lez v5, :cond_1

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    if-eqz v9, :cond_1

    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    invoke-static {v9, v5, v10}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    :cond_1
    iget-wide v11, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    cmp-long v5, v11, v7

    if-lez v5, :cond_2

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    if-eqz v9, :cond_2

    iget-object v5, v6, Lcom/android/server/am/KillPolicyManager;->mPrevPackage:Ljava/lang/String;

    const/16 v7, 0x320

    invoke-static {v9, v5, v7}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    :cond_2
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/4 v7, 0x0

    const/16 v8, 0x80

    const-string v11, ")"

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v5

    if-ne v9, v5, :cond_3

    const-string/jumbo v5, "prevKillCount : (pE : "

    invoke-static {v8, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", pPr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", pSv : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", pPi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", pCm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v6, "currentKillCount : (cE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cPr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cSv : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cPi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", cCm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    iget-wide v5, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    iget-wide v4, v4, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v4, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "HOT("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "WARM("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_6

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "COLD("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string v0, ""

    :goto_0
    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    iget v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/2addr v4, v2

    add-int/2addr v4, v5

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    if-lez v4, :cond_7

    int-to-double v14, v2

    mul-double/2addr v14, v12

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    int-to-double v5, v4

    div-double/2addr v14, v5

    add-double v14, v14, v16

    double-to-int v2, v14

    goto :goto_1

    :cond_7
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    move v2, v7

    :goto_1
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v2

    if-ne v1, v2, :cond_8

    const-string/jumbo v2, "updateLaunchState() pkg "

    const-string v4, " type "

    move-object/from16 v5, p2

    invoke-static {v2, v5, v4, v0, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v2, v7

    move v4, v2

    move v5, v4

    move v6, v5

    move v9, v6

    :goto_2
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge v2, v0, :cond_f

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_d

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v14, v14, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v15, 0x384

    if-lt v14, v15, :cond_9

    const/16 v15, 0x3e7

    if-gt v14, v15, :cond_9

    add-int/lit8 v4, v4, 0x1

    :cond_9
    const/16 v15, 0x352

    if-ne v14, v15, :cond_a

    add-int/lit8 v5, v5, 0x1

    :cond_a
    move-wide/from16 v18, v12

    :try_start_2
    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    iget-boolean v12, v12, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v12, :cond_b

    goto :goto_4

    :cond_b
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, v0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v12, 0x10

    if-ne v0, v12, :cond_e

    if-ne v14, v15, :cond_c

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide/from16 v18, v12

    goto :goto_5

    :catch_3
    move-exception v0

    move-wide/from16 v18, v12

    goto :goto_3

    :cond_d
    move-wide/from16 v18, v12

    goto :goto_4

    :goto_3
    :try_start_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v12, v18

    goto :goto_2

    :cond_f
    move-wide/from16 v18, v12

    goto :goto_6

    :goto_5
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    iput v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->currentCachedActCnt:I

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCounter:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget v4, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    if-lez v0, :cond_10

    int-to-double v4, v4

    mul-double v4, v4, v18

    int-to-double v12, v0

    div-double/2addr v4, v12

    add-double v4, v4, v16

    double-to-int v4, v4

    goto :goto_7

    :cond_10
    move v4, v7

    :goto_7
    iput v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    iget v2, v2, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    if-lez v0, :cond_11

    int-to-double v4, v2

    mul-double v4, v4, v18

    int-to-double v12, v0

    div-double/2addr v4, v12

    add-double v4, v4, v16

    double-to-int v0, v4

    goto :goto_8

    :cond_11
    move v0, v7

    :goto_8
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v7

    :cond_12
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedAndKilledPackageMap:Ljava/util/Map;

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v10, :cond_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    iput v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    iget v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    sget-object v4, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v0, :cond_14

    int-to-double v4, v2

    mul-double v4, v4, v18

    int-to-double v9, v0

    div-double/2addr v4, v9

    add-double v4, v4, v16

    double-to-int v0, v4

    goto :goto_a

    :cond_14
    move v0, v7

    :goto_a
    iput v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_15

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-ne v1, v0, :cond_15

    const-string/jumbo v0, "updateProcessStateInfo() appCnt - "

    invoke-static {v8, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " launch total - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    add-int/2addr v2, v4

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hot launch("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%) hot - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " warm - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cold - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v2, "cur previousKillRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, serviceKillRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%, killedPackageRatio = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageRatio:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string/jumbo v2, "updateRawProcessCount() Average Cached (T:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    int-to-double v4, v2

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v2

    div-double/2addr v4, v6

    add-double v4, v4, v16

    double-to-int v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/A:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActTotalCnt:I

    int-to-double v4, v4

    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    add-double v4, v4, v16

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), Picked (T:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    int-to-double v4, v4

    iget v6, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    add-double v4, v4, v16

    double-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActTotalCnt:I

    int-to-double v4, v2

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v1, v1

    div-double/2addr v4, v1

    add-double v4, v4, v16

    double-to-int v1, v4

    invoke-static {v1, v11, v3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_15
    return-void
.end method

.method public final updatePsiInfo(DDD)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuSum:D

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemorySum:D

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    add-double/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoSum:D

    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    cmpg-double v0, v0, p1

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiCpuMax:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    cmpg-double v0, v0, p3

    if-gez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiMemoryMax:D

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    cmpg-double v0, v0, p5

    if-gez v0, :cond_2

    iput-wide p5, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->psiIoMax:D

    :cond_2
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager;->getCurrentKpmRawPolicy()Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    if-ne p0, v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Psi info cpu : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", memory : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", io : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_kpm"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
