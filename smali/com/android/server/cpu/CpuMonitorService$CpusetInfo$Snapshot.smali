.class public final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public totalNormalizedAvailableCpuFreqKHz:J

.field public totalOfflineCpus:I

.field public totalOfflineMaxCpuFreqKHz:J

.field public totalOnlineCpus:I

.field public totalOnlineMaxCpuFreqKHz:J

.field public final uptimeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    return-void
.end method


# virtual methods
.method public final getAverageAvailableCpuFreqPercent()I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-gez v0, :cond_0

    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "CpuMonitorService"

    const-string v1, "Computed negative CPU availability percent(%d) for %s "

    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Snapshot{uptimeMillis = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOnlineCpus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalOfflineCpus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalNormalizedAvailableCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOnlineMaxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", totalOfflineMaxCpuFreqKHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
