.class public final Lcom/android/server/chimera/heimdall/HeimdallProcessData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

.field public static sPoolSize:I

.field public static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public anonAfterGc:I

.field public anonBeforeGc:I

.field public countDownPhaseRetry:I

.field public delayPhase:J

.field public firstAppPackageName:Ljava/lang/String;

.field public firstAppVersionName:Ljava/lang/String;

.field public flags:I

.field public killTime:J

.field public next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public pss:J

.field public rssAnon:I

.field public rssFile:I

.field public scanTimeAfterGc:J

.field public scanTimeBeforeGc:J

.field public uid:I

.field public vmRss:I

.field public vmSwap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSync:Ljava/lang/Object;

    return-void
.end method

.method public static obtainData()Lcom/android/server/chimera/heimdall/HeimdallProcessData;
    .locals 3

    sget-object v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    sput-object v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    sget v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    iget v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final isAlwaysRunningSpecKill()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v0, 0x1000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isGlobalKill()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v0, 0x100

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSpecKill()Z
    .locals 1

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final recycle()V
    .locals 4

    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    iput v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pss:J

    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    iput-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppVersionName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    iput-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->delayPhase:J

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->countDownPhaseRetry:I

    sget-object v0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    iput-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->next:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    sput-object p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPool:Lcom/android/server/chimera/heimdall/HeimdallProcessData;

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->sPoolSize:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final setShouldKill()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "This HPD should not kill."

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    return-void
.end method

.method public final toDumpString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HeimdallData{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " processName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " packageName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " versionName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " anonBeforeGc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonBeforeGc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " graphicsBeforeGc=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " scanTimeBeforeGc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeBeforeGc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " anonAfterGc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->anonAfterGc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " graphicsAfterGc=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " scanTimeAfterGc="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->scanTimeAfterGc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " vmRss="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmRss:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " rssFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssFile:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " rssAnon="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->rssAnon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " vmSwap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->vmSwap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " memTrackGl=0 memTrackEgl=0 memTrackOther=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " killTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    neg-int v2, v1

    and-int/2addr v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "None"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "StartPhase"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "ScanPhase"

    goto :goto_0

    :cond_2
    const-string v1, "GCPhase"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "RescanPhase"

    goto :goto_0

    :cond_4
    const-string v1, "KillAndReportPhase"

    :goto_0
    const-string v2, " currentPhase="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isGlobalKill="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isSpecKill="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " isAlwaysRunningSpecKill="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " shouldKill="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    const/16 v2, 0x400

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_5

    const/4 p0, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
