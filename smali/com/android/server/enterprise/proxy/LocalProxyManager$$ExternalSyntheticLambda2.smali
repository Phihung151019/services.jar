.class public final synthetic Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final runOrThrow$com$android$server$enterprise$proxy$LocalProxyManager$$ExternalSyntheticLambda6()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LocalProxyManager"

    const-string/jumbo v1, "Stopping enterprise proxy server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->clearProxyServerCache()V

    const-string/jumbo v0, "LocalProxyManager"

    const-string v1, "Clear notification dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "NotificationManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    sget-object v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsLocalProxyServerRunning:Z

    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v1, "LocalProxyManager"

    const/16 v2, 0x3e1

    invoke-virtual {p0, v1, v2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->runOrThrow$com$android$server$enterprise$proxy$LocalProxyManager$$ExternalSyntheticLambda6()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.PROXY_REFRESH_CREDENTIALS_DIALOG_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.mdm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    invoke-virtual {v2, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sLocalProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    monitor-enter v0

    :try_start_1
    const-string/jumbo p0, "LocalProxyManager"

    const-string/jumbo v1, "Starting enterprise proxy server"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string/jumbo p0, "LocalProxyManager"

    const-string/jumbo v1, "No context for binding"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.proxyhandler"

    const-string/jumbo v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$1;-><init>(Lcom/android/server/enterprise/proxy/LocalProxyManager;I)V

    iput-object v1, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyConnection:Landroid/content/ServiceConnection;

    iget-object v2, v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v2, p0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    :goto_0
    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sPendinOperationsList:Ljava/util/List;

    const-string/jumbo v1, "clearCache"

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->bindProxyService()V

    goto :goto_4

    :cond_1
    :try_start_4
    invoke-interface {v0}, Lcom/android/net/IProxyCallback;->clearProxyServerCache()V

    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mCallbackService:Lcom/android/net/IProxyCallback;

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getGlobalProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getDefaultProxy()Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-interface {p0, v0}, Lcom/android/net/IProxyCallback;->setEnterpriseProxy(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    const-string/jumbo v0, "LocalProxyManager"

    const-string v1, "Failed to clear proxy server cache"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_4
    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getConnectivityManagerService()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallback:Lcom/android/server/enterprise/proxy/LocalProxyManager$4;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mNetworkCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_5
    sput-boolean v1, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sIsNetworkCallbackRunning:Z

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->handleLocalProxyServer()V

    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
