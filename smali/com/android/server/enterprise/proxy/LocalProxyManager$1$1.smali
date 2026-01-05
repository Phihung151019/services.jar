.class public final Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;
.super Lcom/android/net/IProxyPortListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    invoke-direct {p0}, Lcom/android/net/IProxyPortListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final setProxyPort(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    iget-object v0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sInstance:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "LocalProxyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Proxy bound at port "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1$1;->this$1:Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;->this$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    const-string/jumbo v1, "Set local proxy port "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "LocalProxyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object p1

    sput-object p1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateGlobalProxyValues()V

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->isDirectProxy(Lcom/samsung/android/knox/net/ProxyProperties;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "LocalProxyManager"

    const-string/jumbo v1, "Updating enterprise wifi proxy values"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectedWifiSsid:Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateProxyInWifiConfig(Ljava/lang/String;ZLandroid/net/ProxyInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :goto_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_1
    const-string/jumbo p0, "LocalProxyManager"

    const-string/jumbo p1, "Received invalid port from Local Proxy, proxy will not be operational"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
