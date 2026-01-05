.class Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTransportClientRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/backup/transport/TransportConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    if-nez p1, :cond_0

    const-string/jumbo p1, "TransportConnection.onBindingDied()"

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    const-string v0, "Binding died: client UNUSABLE"

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v0}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p1, v4}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "Unexpected state transition IDLE => UNUSABLE"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    if-nez p1, :cond_0

    const-string/jumbo p1, "TransportConnection.onServiceConnected()"

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/internal/backup/IBackupTransport$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object p0

    new-instance p2, Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-direct {p2, p0}, Lcom/android/server/backup/transport/BackupTransportClient;-><init>(Lcom/android/internal/backup/IBackupTransport;)V

    iget-object p0, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/backup/transport/TransportConnection;->checkStateIntegrityLocked()V

    iget v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mState:I

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Transport connected"

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V

    invoke-virtual {p1, p2}, Lcom/android/server/backup/transport/TransportConnection;->notifyListenersAndClearLocked(Lcom/android/server/backup/transport/BackupTransportClient;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mTransportClientRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/transport/TransportConnection;

    if-nez p1, :cond_0

    const-string/jumbo p1, "TransportConnection.onServiceDisconnected()"

    invoke-virtual {p0, p1}, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->referenceLost(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "Exception trying to unbind onServiceDisconnected(): "

    iget-object v0, p1, Lcom/android/server/backup/transport/TransportConnection;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "Service disconnected: client UNUSABLE"

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mTransport:Lcom/android/server/backup/transport/BackupTransportClient;

    invoke-virtual {v1}, Lcom/android/server/backup/transport/BackupTransportClient;->onBecomingUnusable()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/backup/transport/TransportConnection;->setStateLocked(ILcom/android/server/backup/transport/BackupTransportClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p1, Lcom/android/server/backup/transport/TransportConnection;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/backup/transport/TransportConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, p0}, Lcom/android/server/backup/transport/TransportConnection;->log(ILjava/lang/String;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final referenceLost(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "TransportConnection"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/transport/TransportConnection$TransportConnectionMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, " called but TransportClient reference has been GC\'ed"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-static {p1, v0, p0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    const-string v1, " called but unbindService failed: "

    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, v0, p0}, Lcom/android/server/backup/transport/TransportUtils;->log(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
