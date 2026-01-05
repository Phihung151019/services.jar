.class public final Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOomEvent([Landroid/os/OomKillRecord;)V
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Landroid/os/OomKillRecord;->getPid()I

    move-result v5

    invoke-virtual {v2}, Landroid/os/OomKillRecord;->getUid()I

    move-result v6

    const-string/jumbo v9, "oom"

    const/4 v7, 0x3

    const/16 v8, 0x1e

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/OomKillRecord;->logKillOccurred()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_0
    return-void
.end method

.method public handleUnsolicitedMessage(Ljava/io/DataInputStream;I)Z
    .locals 6

    iget-object p0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/16 p0, 0x8

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x54

    if-ge p2, p0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/am/ActiveServices;->sNumForegroundServices:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p2, p0}, Lcom/android/server/am/LmkdStatsReporter;->logKillOccurred(Ljava/io/DataInputStream;II)V

    return v3

    :cond_3
    const/16 v0, 0x10

    if-eq p2, v0, :cond_4

    :goto_0
    return v1

    :cond_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    int-to-long v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 v4, 0x1005

    invoke-virtual {v2, v4, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p1, p2}, Lcom/android/server/am/KillPolicyManager;->calculateLmkdStatus(I)V

    sget-object p1, Lcom/android/server/am/pmm/PersonalizedMemoryManager$LazyHolder;->INSTANCE:Lcom/android/server/am/pmm/PersonalizedMemoryManager;

    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;->LMKD_KILL:Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;

    invoke-virtual {p1, p0}, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->onMemoryEvent(Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const-string p0, "ActivityManager"

    const-string p1, "Invalid buffer data. Failed to log LMK_KILL_OCCURRED"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public onConnect(Ljava/io/OutputStream;)Z
    .locals 7

    const-string v0, "ActivityManager"

    const-string v1, "Connection with lmkd established"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v4, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v3, v2

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v5, v5, v3

    mul-int/lit16 v5, v5, 0x400

    sget v6, Lcom/android/server/am/ProcessList;->PAGE_SIZE:I

    div-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v5, v0, v3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, p0, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    const/16 p0, 0x8

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {p1, v0, v2, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    return v2
.end method
