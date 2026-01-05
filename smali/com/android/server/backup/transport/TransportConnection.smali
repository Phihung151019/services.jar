.class public Lcom/android/server/backup/transport/TransportConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final TAG:Ljava/lang/String; = "TransportConnection"


# instance fields
.field public final mBindIntent:Landroid/content/Intent;

.field public final mCloseGuard:Ldalvik/system/CloseGuard;

.field public final mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public final mCreatorLogString:Ljava/lang/String;

.field public final mIdentifier:Ljava/lang/String;

.field public final mListenerHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/Map;

.field public final mLogBuffer:Ljava/util/List;

.field public final mLogBufferLock:Ljava/lang/Object;

.field public final mPrefixForLog:Ljava/lang/String;

.field public mState:I

.field public final mStateLock:Ljava/lang/Object;

.field public volatile mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

.field public final mTransportComponent:Landroid/content/ComponentName;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iput-object p5, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    iput-object p6, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;

    invoke-direct {p1, p2, p0}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;-><init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".*\\."

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    const-string/jumbo p0, "markAsDisposed"

    invoke-virtual {v0, p0}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string v0, "<UNKNOWN = "

    const-string v1, ">"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CONNECTED"

    return-object p0

    :cond_1
    const-string p0, "BOUND_AND_CONNECTING"

    return-object p0

    :cond_2
    const-string p0, "IDLE"

    return-object p0

    :cond_3
    const-string/jumbo p0, "UNUSABLE"

    return-object p0
.end method


# virtual methods
.method public final checkState(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final checkStateIntegrityLocked()V
    .locals 4

    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-static {v1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const-string/jumbo v3, "Unexpected listeners when state = CONNECTED"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    const-string/jumbo v0, "Transport expected to be non-null when state = CONNECTED"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_3

    move v1, v2

    :cond_3
    const-string/jumbo v0, "Transport expected to be null when state = BOUND_AND_CONNECTING"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const-string/jumbo v3, "Unexpected listeners when state = UNUSABLE"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    const-string/jumbo v3, "Transport expected to be null when state = UNUSABLE"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const-string/jumbo v3, "Unexpected listeners when state = IDLE"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-nez v0, :cond_7

    move v1, v2

    :cond_7
    const-string/jumbo v0, "Transport expected to be null when state = IDLE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public final connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "Connect took "

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "Can\'t call connect() on main thread"

    invoke-static {v3, v5}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    const/4 v5, 0x3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "Sync connect: reusing transport"

    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    iget-object v3, v1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v6, v1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v7, 0x5

    const/4 v8, 0x0

    if-nez v6, :cond_1

    const-string/jumbo v0, "Sync connect: UNUSABLE client"

    invoke-virtual {v1, v7, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v3

    return-object v8

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    new-instance v6, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    invoke-direct {v6, v3}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-string/jumbo v11, "Sync connect: calling async"

    invoke-virtual {v1, v5, v2, v11}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    iget v12, v1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    if-eqz v12, :cond_6

    const/4 v7, 0x2

    if-eq v12, v4, :cond_4

    if-eq v12, v7, :cond_3

    if-eq v12, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "Async connect: reusing transport"

    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v1, v6, v4, v2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    :cond_3
    const-string v4, "Async connect: already connecting, adding listener"

    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v12, v1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/backup/transport/TransportConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v15, v1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    iget v13, v1, Lcom/android/server/backup/transport/TransportConnection;->mUserId:I

    invoke-static {v13}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v12, v14, v15, v4, v13}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Async connect: service bound, connecting"

    invoke-virtual {v1, v5, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string v4, "Async connect: bindService returned false"

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v7}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {v1, v6, v8, v2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v4, "Async connect: UNUSABLE client"

    invoke-virtual {v1, v7, v2, v4}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v8, v2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    :goto_0
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v9

    iget-object v4, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget-object v9, v1, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v9, v6, v7}, Lcom/android/server/backup/transport/TransportStats;->registerConnectionTime(Landroid/content/ComponentName;J)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, " while waiting for transport: "

    invoke-static {v3, v4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x6

    invoke-virtual {v1, v7, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-object v8

    :goto_1
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :goto_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public final connectOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->connect(Ljava/lang/String;)Lcom/android/server/backup/transport/BackupTransportClient;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    const-string/jumbo v1, "Transport connection failed"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw p0
.end method

.method public final finalize()V
    .locals 4

    const-string v0, "Dangling TransportClient created in ["

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    iget v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "TransportClient.finalize()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mCreatorLogString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] being GC\'ed. Left bound, unbinding..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getConnectedTransport()Lcom/android/server/backup/transport/BackupTransportClient;
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    const-string/jumbo v1, "Transport not connected"

    const-string/jumbo v2, "PFTBT.handleCancel()"

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/server/backup/transport/TransportNotAvailableException;

    invoke-direct {p0}, Lcom/android/server/backup/transport/TransportNotAvailableException;-><init>()V

    throw p0
.end method

.method public final log(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "TransportConnection"

    invoke-static {p1, v2, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mPrefixForLog:Ljava/lang/String;

    invoke-static {v0, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TransportConnection"

    invoke-static {p1, v1, v0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection;->saveLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "BackupTransportClient"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "null"

    :goto_0
    const-string/jumbo v1, "Notifying ["

    const-string/jumbo v2, "] transport = "

    invoke-static {v1, p3, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    new-instance p3, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/transport/TransportConnection;Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;)V

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/backup/transport/TransportConnection;->notifyListener(Lcom/android/server/backup/transport/TransportConnection$$ExternalSyntheticLambda1;Lcom/android/server/backup/transport/BackupTransportClient;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mListeners:Ljava/util/Map;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final saveLogEntry(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBufferLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mLogBuffer:Ljava/util/List;

    check-cast p0, Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "State: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-static {v1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v1, :cond_0

    if-gt v1, p1, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    if-lt v0, v1, :cond_1

    if-le v1, p1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v0, v6, :cond_2

    if-gt v6, p1, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-le v6, p1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v1, :cond_5

    if-ne v1, v5, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    move v0, v4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb22

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_5
    if-eqz v3, :cond_7

    if-ne v3, v5, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xb23

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_7
    iput p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TransportClient{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mTransportComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mIdentifier:Ljava/lang/String;

    const-string/jumbo v1, "}"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unbind(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "Unbind requested (was "

    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    invoke-static {v0}, Lcom/android/server/backup/transport/TransportConnection;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0, v4}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
