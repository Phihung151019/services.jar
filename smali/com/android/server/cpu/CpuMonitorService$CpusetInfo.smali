.class public final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final cpuset:I

.field public mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

.field public final mSnapshotsByUptime:Landroid/util/LongSparseArray;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    new-instance p1, Landroid/util/LongSparseArray;

    invoke-direct {p1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public final appendCpuInfo(JLcom/android/server/cpu/CpuInfoReader$CpuInfo;)V
    .locals 6

    iget v0, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "CpuMonitorService"

    const-string/jumbo p2, "Provided invalid expectedCpuset %d"

    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    and-int/2addr v0, v3

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    :goto_0
    iget-object v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    invoke-direct {v0, p1, p2}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;-><init>(J)V

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    iget-wide v4, v2, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    sub-long/2addr p1, v4

    sget-wide v4, Lcom/android/server/cpu/CpuMonitorService;->CACHE_DURATION_MILLISECONDS:J

    cmp-long p1, p1, v4

    if-lez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_2
    iget-boolean p0, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    iget-wide p1, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    if-nez p0, :cond_3

    iget p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    add-int/2addr p0, v1

    iput p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    iget-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    return-void

    :cond_3
    iget p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    add-int/2addr p0, v1

    iput p0, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    iget-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    iget-wide v3, p3, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    iget-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    :cond_4
    return-void
.end method

.method public final populateLatestCpuAvailabilityInfo(JJ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v2, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-void

    :cond_0
    iget-object v3, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v3, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    iget-wide v9, v1, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v3, v9, p1

    const/4 v5, 0x2

    if-eqz v3, :cond_4

    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    const-string v3, "Invalid cpuset: "

    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "CPUSET_BACKGROUND"

    goto :goto_0

    :cond_2
    const-string v1, "CPUSET_ALL"

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "CpuMonitorService"

    const-string/jumbo v4, "Skipping stale CPU availability information for cpuset %s"

    invoke-static {v3, v4, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iput-object v2, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-void

    :cond_4
    iget-object v2, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    if-eqz v2, :cond_5

    iget-wide v2, v2, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_5

    return-void

    :cond_5
    sub-long v2, p1, p3

    new-instance v6, Lcom/android/server/cpu/CpuAvailabilityInfo;

    invoke-virtual {v1}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->getAverageAvailableCpuFreqPercent()I

    move-result v7

    iget-object v1, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v4

    const-wide/16 v11, 0x0

    const/4 v4, 0x0

    const-wide v13, 0x7fffffffffffffffL

    move-wide v15, v13

    move-wide v13, v11

    :goto_1
    if-ltz v1, :cond_7

    iget-object v8, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;

    move-object/from16 p1, v6

    iget-wide v5, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    cmp-long v15, v5, v2

    if-gtz v15, :cond_6

    move-wide v15, v5

    :goto_2
    move-wide/from16 v17, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move/from16 p2, v1

    move-wide/from16 v17, v2

    iget-wide v1, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    add-long/2addr v11, v1

    iget-wide v1, v8, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    add-long/2addr v13, v1

    add-int/lit8 v1, p2, -0x1

    move-wide v15, v5

    move-wide/from16 v2, v17

    const/4 v5, 0x2

    move-object/from16 v6, p1

    goto :goto_1

    :cond_7
    move-object/from16 p1, v6

    goto :goto_2

    :goto_3
    cmp-long v1, v15, v17

    if-gtz v1, :cond_9

    const/4 v1, 0x2

    if-ge v4, v1, :cond_8

    goto :goto_5

    :cond_8
    long-to-double v1, v11

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v1, v3

    long-to-double v3, v13

    div-double/2addr v1, v3

    double-to-int v1, v1

    :goto_4
    move v8, v1

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, -0x1

    goto :goto_4

    :goto_6
    iget v6, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    move-object/from16 v5, p1

    move-wide/from16 v11, p3

    invoke-direct/range {v5 .. v12}, Lcom/android/server/cpu/CpuAvailabilityInfo;-><init>(IIIJJ)V

    iput-object v5, v0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpusetInfo{cpuset = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->cpuset:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    const-string v1, "Invalid cpuset: "

    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "CPUSET_BACKGROUND"

    goto :goto_0

    :cond_1
    const-string v1, "CPUSET_ALL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapshotsByUptime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mSnapshotsByUptime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLatestCpuAvailabilityInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo;->mLatestCpuAvailabilityInfo:Lcom/android/server/cpu/CpuAvailabilityInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
