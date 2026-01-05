.class public final Lcom/android/server/cpu/CpuInfoReader$CpuInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final avgTimeInStateCpuFreqKHz:J

.field public final cpuCore:I

.field public final cpusetCategories:I

.field public final curCpuFreqKHz:J

.field public final isOnline:Z

.field public final latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

.field public final mNormalizedAvailableCpuFreqKHz:J

.field public final maxCpuFreqKHz:J


# direct methods
.method public constructor <init>(IIZJJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    iput p2, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    iput-boolean p3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    iput-wide p6, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    iput-wide p8, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    iput-object p12, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iput-wide p10, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-void
.end method

.method public constructor <init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V
    .locals 13

    const-wide/16 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    iget-boolean p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-wide v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    add-long/2addr v3, v5

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    add-long/2addr v3, v5

    iget-wide v7, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    add-long/2addr v3, v7

    iget-wide v7, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    add-long/2addr v3, v7

    iget-wide p1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    add-long/2addr v3, p1

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    const-string p1, "CpuMonitorService"

    const-string/jumbo p2, "Total CPU time millis is 0. This shouldn\'t happen unless stats are polled too frequently"

    invoke-static {p1, p2}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    long-to-double p1, v3

    long-to-double v3, v5

    sub-double v3, p1, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    div-double/2addr v3, p1

    iget-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    iget-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    :cond_2
    long-to-double p1, p1

    mul-double/2addr v3, p1

    iget-wide p1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    long-to-double p1, p1

    div-double/2addr v3, p1

    sub-double v1, v5, v3

    mul-double/2addr v1, p1

    div-double/2addr v1, v5

    double-to-long v1, v1

    :goto_0
    iput-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    iget v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    iget v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    iget v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    iget-boolean v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    iget-object v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    invoke-virtual {v1, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    iget-wide p0, p1, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 9

    iget v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CpuInfo{ cpuCore = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpuCore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cpusetCategories = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->cpusetCategories:I

    invoke-static {v1}, Lcom/android/server/cpu/CpuInfoReader;->toCpusetCategoriesStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "], isOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Yes"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "No"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", curCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->curCpuFreqKHz:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const-string/jumbo v6, "missing"

    if-nez v5, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->maxCpuFreqKHz:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    move-object v1, v6

    goto :goto_2

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avgTimeInStateCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->avgTimeInStateCpuFreqKHz:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latestCpuUsageStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->latestCpuUsageStats:Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNormalizedAvailableCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->mNormalizedAvailableCpuFreqKHz:J

    const-string p0, " }"

    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
