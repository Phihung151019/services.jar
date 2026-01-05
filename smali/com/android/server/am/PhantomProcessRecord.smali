.class public final Lcom/android/server/am/PhantomProcessRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final LONG_FORMAT:[I

.field public static final LONG_OUT:[J


# instance fields
.field public mAdj:I

.field public mCurrentCputime:J

.field public final mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field public mKilled:Z

.field public final mKnownSince:J

.field public mLastCputime:J

.field public final mLock:Ljava/lang/Object;

.field public final mOnKillListener:Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

.field public final mPid:I

.field public final mPidFd:Ljava/io/FileDescriptor;

.field public final mPpid:I

.field public final mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

.field public final mProcessName:Ljava/lang/String;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mStringName:Ljava/lang/String;

.field public final mUid:I

.field public mUpdateSeq:I

.field public mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [J

    sput-object v0, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    const/16 v0, 0x200a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;)V
    .locals 3

    const-string/jumbo v0, "Unable to open process "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/server/am/PhantomProcessRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/PhantomProcessRecord$1;-><init>(Lcom/android/server/am/PhantomProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iput p3, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    iput p4, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    const/16 p2, -0x3e8

    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iput-object p5, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p5, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object p2, p2, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    sget-object p2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p2

    :try_start_0
    invoke-static {p3, p1}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "ActivityManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", it might be gone"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-static {p2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final killLocked(Ljava/lang/String;Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    if-nez v0, :cond_5

    const-wide/16 v0, 0x40

    const-string/jumbo v2, "kill"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p2, :cond_0

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne p2, v2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Killing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-virtual {p2, v3, v2}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(ILjava/lang/String;)V

    :cond_1
    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    if-lez p2, :cond_4

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {p2}, Landroid/os/Process;->getRss(I)[J

    move-result-object p2

    const/4 v8, 0x0

    if-eqz p2, :cond_2

    array-length v6, p2

    if-lez v6, :cond_2

    aget-wide v6, p2, v8

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v6, p1

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x7547

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iget-object p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {p1, p2, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_1
    iget p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {p1}, Landroid/os/Process;->killProcessQuiet(I)V

    iget p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iget p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_5
    return-void
.end method

.method public final onProcDied(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Process "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " died"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Lcom/android/server/am/PhantomProcessRecord$1;

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;->accept(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x80

    const-string/jumbo v1, "PhantomProcessRecord {"

    invoke-static {v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x2710

    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x75

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-lt v2, v1, :cond_2

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v1, v2, -0x2710

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    const v1, 0x182b8

    if-lt v2, v1, :cond_3

    const v3, 0x1869f

    if-gt v2, v3, :cond_3

    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    return-object v0
.end method
