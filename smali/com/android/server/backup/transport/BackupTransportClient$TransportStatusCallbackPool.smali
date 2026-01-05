.class public final Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActiveCallbacks:Ljava/util/Set;

.field public final mCallbackPool:Ljava/util/Queue;

.field public final mPoolLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final acquire()Lcom/android/server/backup/transport/TransportStatusCallback;
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/transport/TransportStatusCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/backup/transport/TransportStatusCallback;

    invoke-direct {v1}, Lcom/android/server/backup/transport/TransportStatusCallback;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, v1, Lcom/android/server/backup/transport/TransportStatusCallback;->mHasCompletedOperation:Z

    iput v2, v1, Lcom/android/server/backup/transport/TransportStatusCallback;->mOperationStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final recycle(Lcom/android/server/backup/transport/TransportStatusCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mPoolLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mActiveCallbacks:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    const-string p0, "BackupTransportClient"

    const-string/jumbo p1, "TransportStatusCallback pool size exceeded"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/backup/transport/BackupTransportClient$TransportStatusCallbackPool;->mCallbackPool:Ljava/util/Queue;

    check-cast p0, Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
