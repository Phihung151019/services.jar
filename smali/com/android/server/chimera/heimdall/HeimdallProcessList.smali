.class public final Lcom/android/server/chimera/heimdall/HeimdallProcessList;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mInProgressProcesses:Ljava/util/HashSet;

.field public mProtectedProcesses:Ljava/util/HashSet;

.field public mReportedProcesses:Ljava/util/Queue;

.field public mTimeoutReportProtectedHour:I


# virtual methods
.method public final pushProcessToReported(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 3

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    invoke-direct {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->reportTime:J

    iget-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mReportedProcesses:Ljava/util/Queue;

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Report-protecting (%dh) starts. "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    return-void
.end method
