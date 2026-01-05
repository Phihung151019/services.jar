.class public final synthetic Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/cpu/CpuMonitorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/cpu/CpuMonitorService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/cpu/CpuMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/cpu/CpuMonitorService;

    packed-switch v2, :pswitch_data_0

    sget-boolean v2, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    invoke-virtual {v4}, Lcom/android/server/cpu/CpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v0, "CpuMonitorService"

    const-string v1, "Failed to read CPU info from device"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->stopMonitoringCpuStatsLocked()V

    monitor-exit v5

    goto/16 :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    iget-object v5, p0, Lcom/android/server/cpu/CpuMonitorService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    move v6, v0

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    move v8, v0

    :goto_1
    iget-object v9, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    iget-object v9, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    invoke-virtual {v9, v2, v3, v7}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V

    add-int/2addr v8, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_1
    add-int/2addr v6, v1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_2
    iget-object v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpusetInfosByCpuset:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;

    iget-wide v7, p0, Lcom/android/server/cpu/CpuMonitorService;->mLatestAvailabilityDurationMillis:J

    invoke-virtual {v6, v2, v3, v7, v8}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->populateLatestCpuAvailabilityInfo(JJ)V

    invoke-virtual {p0, v6}, Lcom/android/server/cpu/CpuMonitorService;->checkClientThresholdsAndNotifyLocked(Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;)V

    add-int/2addr v4, v1

    goto :goto_2

    :cond_3
    iget-wide v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_7

    move v4, v0

    :goto_3
    iget-object v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v6}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mAvailabilityCallbackInfosByCallbacksByCpuset:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v6

    if-lez v6, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    add-int/2addr v4, v1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mShouldDebugMonitor:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService;->mMonitorCpuStats:Lcom/android/server/cpu/CpuMonitorService$$ExternalSyntheticLambda0;

    iget-wide v6, p0, Lcom/android/server/cpu/CpuMonitorService;->mCurrentMonitoringIntervalMillis:J

    add-long/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService;->stopMonitoringCpuStatsLocked()V

    :goto_5
    monitor-exit v5

    :goto_6
    return-void

    :goto_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService;->mCpuInfoReader:Lcom/android/server/cpu/CpuInfoReader;

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mShouldReadCpusetCategories:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/android/server/cpu/CpuInfoReader;->readCpusetCategories()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CpuMonitorService"

    const-string v3, "Failed to read cpuset information from %s"

    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
