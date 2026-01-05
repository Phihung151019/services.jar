.class public final Lcom/android/server/am/PhantomProcessList;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppPhantomProcessMap:Landroid/util/SparseArray;

.field public final mCgroupProcsFds:Landroid/util/SparseArray;

.field public final mDataBuffer:[B

.field mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

.field public final mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public final mLock:Ljava/lang/Object;

.field public final mPhantomProcesses:Landroid/util/SparseArray;

.field public final mPhantomProcessesPidFds:Landroid/util/SparseArray;

.field public final mPhantomToAppProcessMap:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTempPhantomProcesses:Ljava/util/ArrayList;

.field public mTrimPhantomProcessScheduled:Z

.field public mUpdateSeq:I

.field public final mZombiePhantomProcesses:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object p1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    new-instance p1, Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-direct {p1}, Lcom/android/server/am/PhantomProcessList$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    return-void
.end method

.method public static dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 8

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  proc #"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v5, "      "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "user #"

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " uid="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " pid="

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " ppid="

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " knownSince="

    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    invoke-static {v6, v7, v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v3, " killed="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    const-string/jumbo v4, "lastCpuTime="

    invoke-static {p0, v5, v4, v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-wide v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    iget-wide v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const-string v3, " timeUsed="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget-wide v5, v2, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :cond_1
    const-string v3, " oom adj="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " seq="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static native nativeGetCgroupProcsPath(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method


# virtual methods
.method public final addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V
    .locals 3

    if-eq p3, p2, :cond_7

    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p3, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p3

    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p3

    if-ltz p3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-ne p1, v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result p1

    iget-object p3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "/proc/"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    const/16 v1, 0x2f

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_4
    :goto_1
    if-eqz p3, :cond_6

    if-gez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(IILjava/lang/String;Z)Lcom/android/server/am/PhantomProcessRecord;

    return-void

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "All Active App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-static {p1, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v1, "All Zombie App Child Processes:"

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-static {p1, v1, p0}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCgroupFilePath(II)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/PhantomProcessList;->nativeGetCgroupProcsPath(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreatePhantomProcessIfNeededLocked(IILjava/lang/String;Z)Lcom/android/server/am/PhantomProcessRecord;
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    iget v1, v0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    if-ne v1, p1, :cond_2

    iget v1, v0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    if-ne v1, p2, :cond_2

    iget-object v1, v0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Stale "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    iget v3, v1, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    if-ne v3, p1, :cond_4

    iget v3, v1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    if-ne v3, p2, :cond_4

    iget-object v3, v1, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_5
    :goto_1
    if-nez p4, :cond_6

    goto :goto_2

    :cond_6
    iget-object p4, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/ProcessRecord;

    if-eqz p4, :cond_a

    :try_start_1
    iget v7, p4, Lcom/android/server/am/ProcessRecord;->mPid:I

    new-instance v3, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v8, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v9, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    move v5, p1

    move v6, p2

    move-object v4, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/PhantomProcessRecord;-><init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;)V

    iget p1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput p1, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p1, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseArray;

    if-nez p1, :cond_7

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iget-object p2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p2, v7, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {p1, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, v3, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iget-object p2, v3, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    new-instance p3, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    const/4 p4, 0x5

    invoke-virtual {p1, p2, p4, p3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object p2, v3, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {p2}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p2

    invoke-virtual {p1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_8
    iget-boolean p1, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    if-nez p1, :cond_9

    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    iget-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    new-instance p2, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    return-object v3

    :catch_0
    :cond_a
    :goto_2
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;Ljava/lang/String;)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PhantomProcessRecord;

    if-ne v3, p2, :cond_0

    invoke-virtual {v3, p3, v2}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caused by siling process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Caused by child process: "

    invoke-static {p0, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v5, 0x1

    const/16 v1, 0x9

    const/4 v2, 0x7

    move-object v4, v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessRecord;->killLocked(IILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public lookForPhantomProcessesLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public final lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 11

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/PhantomProcessList;->getCgroupFilePath(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v2

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v6, v3

    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    array-length v8, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v3, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    goto :goto_2

    :cond_3
    int-to-long v8, v7

    add-long/2addr v4, v8

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_5

    aget-byte v9, v2, v8

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    move v6, v3

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_4
    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v9, v6

    move v6, v9

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    array-length v8, v2

    if-ge v7, v8, :cond_2

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    :cond_6
    neg-long v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in reading cgroup procs from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "ActivityManager"

    invoke-static {v3, p1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->delete(I)V

    :catch_1
    :cond_7
    :goto_4
    return-void
.end method

.method public final onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final pruneStaleProcessesLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    iget v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v3, v4, :cond_0

    const-string/jumbo v3, "Stale process"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    iget v1, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final removePhantomProcessesWithNoParentLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v4, v1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    monitor-exit v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked()V

    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v3, v6}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(IILjava/lang/String;Z)Lcom/android/server/am/PhantomProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v2, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v2

    int-to-long v7, v7

    add-long/2addr v4, v7

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget-wide v7, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_0

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "/proc/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/oom_score_adj"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    sget-object v5, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v5, v7}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-wide v4, v5, v6

    long-to-int v2, v4

    iput v2, v3, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->pruneStaleProcessesLocked()V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
