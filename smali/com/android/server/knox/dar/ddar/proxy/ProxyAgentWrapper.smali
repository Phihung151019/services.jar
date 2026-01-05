.class public final Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBindPending:Z

.field public final mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

.field public final mContext:Landroid/content/Context;

.field public final mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

.field public mIsNotify:Z

.field public mIsReconnection:Z

.field public mIsStale:Z

.field public mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

.field public final mProxyAgentLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;


# direct methods
.method public static -$$Nest$mtriggerRestart(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    const/4 v1, 0x0

    const-string v2, "KnoxService::ProxyAgentWrapper"

    if-nez v0, :cond_0

    const-string/jumbo v0, "triggerRestart"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iget-object v1, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;->mHandler:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService$3;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string/jumbo p0, "skipping triggerRestart because this is a stale object"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;-><init>(Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v2, "ProxyAgentWrapper()"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/dar/ddar/proxy/DualDARComnService;

    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    return-void
.end method


# virtual methods
.method public final connectAsync()Z
    .locals 11

    const-string v0, "Exception: "

    const-string v1, "Can\'t bind to container service "

    const-string/jumbo v2, "service "

    const-string v3, "KnoxService::ProxyAgentWrapper"

    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v4}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "try connectAsync : "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object v4, v4, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    const-string p0, "KnoxService::ProxyAgentWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already bound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v7

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    new-instance v9, Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget v10, v10, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    const v10, 0x4000001

    invoke-virtual {v6, v2, v8, v10, v9}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v2, :cond_1

    const-string p0, "KnoxService::ProxyAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    return v5

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v3

    return v7

    :goto_0
    const-string v1, "KnoxService::ProxyAgentWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    monitor-exit v3

    return v5

    :goto_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final connectSync()Z
    .locals 5

    const-string v0, "KnoxService::ProxyAgentWrapper"

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "try connectSync : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v3, "connection to Proxy Agent failed"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    iget-boolean p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    if-nez p0, :cond_1

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v1, "thread waken up without notify"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public final disconnect()V
    .locals 4

    const-string v0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v1, "disconnect"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->isServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mConnection:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper$1;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    iput-boolean v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v0, "Unbinding to agent done"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final isServiceConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final markStale()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "markStale: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    return-void
.end method

.method public final relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string/jumbo v0, "relay to Service : "

    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "SECURE_CLIENT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x25e9423d

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    const v5, 0x2897d36c

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string v4, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string/jumbo v5, "dual_dar_response"

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {p4, p1, p2, v0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2

    :cond_4
    iget-object p4, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;

    invoke-interface {p4, p1, p2, v0, v2}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "RemoteException: name:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " command:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
