.class public final Lcom/android/server/backup/transport/TransportConnectionManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntentFunction:Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;

.field public final mTransportClientsCallerMap:Ljava/util/Map;

.field public mTransportClientsCreated:I

.field public final mTransportClientsLock:Ljava/lang/Object;

.field public final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V
    .locals 2

    new-instance v0, Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    iput p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mUserId:I

    iput-object p2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iput-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mIntentFunction:Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final disposeOfTransportClient(Lcom/android/server/backup/transport/TransportConnection;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Disposing of "

    invoke-virtual {p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->unbind(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Can\'t mark as disposed if still bound"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v2, p1, Lcom/android/server/backup/transport/TransportConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    const-string/jumbo v1, "TransportConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3, p2, v0}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0, v1, p2}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    check-cast p0, Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;
    .locals 11

    iget-object v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mIntentFunction:Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportConnectionManager$$ExternalSyntheticLambda0;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v5, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo p2, "Retrieving "

    iget-object v10, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    new-instance v1, Lcom/android/server/backup/transport/TransportConnection;

    iget v2, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mUserId:I

    iget-object v3, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    iget v0, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backup/transport/TransportConnection;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCallerMap:Ljava/util/Map;

    check-cast p1, Ljava/util/WeakHashMap;

    invoke-virtual {p1, v1, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/backup/transport/TransportConnectionManager;->mTransportClientsCreated:I

    const-string/jumbo p0, "TransportConnectionManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2, v8, p1}, Lcom/android/server/backup/transport/TransportUtils;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2, p0, p1}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v10

    return-object v1

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
