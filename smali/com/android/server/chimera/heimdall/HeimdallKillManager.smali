.class public final Lcom/android/server/chimera/heimdall/HeimdallKillManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public KILL_DISABLED:Z

.field public mAlwaysRunningKillCntAfterBoot:I

.field public mGlobalKillCntAfterBoot:I

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public mSpecKillCntAfterBoot:I


# virtual methods
.method public final kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->KILL_DISABLED:Z

    if-nez v0, :cond_4

    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    new-array v2, v1, [I

    iget v3, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    filled-new-array {v3}, [I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v3, v0, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    const/4 v0, 0x0

    aget v0, v2, v0

    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    const/16 v3, 0x9

    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    const-string v2, "Global Kill is performed to (with oom score="

    const-string v3, ") "

    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    const/16 v2, 0xb

    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "Spec Kill"

    goto :goto_0

    :cond_2
    const-string v2, "AlwaysRunning Kill"

    :goto_0
    const-string v3, " is performed to "

    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    :goto_1
    :try_start_0
    const-string/jumbo p0, "Waiting for core dump during 30000ms"

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    const-wide/16 p0, 0x7530

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to wait for core dump "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    nop

    :cond_4
    return-void
.end method
