.class public Lcom/android/server/ExtendedEthernetService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 6

    const/16 v0, 0x226

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "eth_disabled"

    const-string v0, "ExtendedEthernetServiceImpl"

    const-string/jumbo v1, "handleSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "tethering"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/TetheringManager;

    iput-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheringManager:Landroid/net/TetheringManager;

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ethernet"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/EthernetManager;

    iput-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateListener:Lcom/android/server/ExtendedEthernetServiceImpl$2;

    invoke-virtual {v1, v2, v3}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ETHERNET_TETHERING_MODE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ETHERNET_TETHERING_MODE is on"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    new-instance v3, Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetCallback:Lcom/android/server/ExtendedEthernetServiceImpl$1;

    invoke-virtual {v2, v3, v4}, Landroid/net/EthernetManager;->requestTetheredInterface(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$TetheredInterfaceCallback;)Landroid/net/EthernetManager$TetheredInterfaceRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mTetheredRequest:Landroid/net/EthernetManager$TetheredInterfaceRequest;

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mEthernetManager:Landroid/net/EthernetManager;

    invoke-virtual {v3, v2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    const-string/jumbo v3, "call setLinkDown"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ExtendedEthernetServiceImpl;->setLinkDown()V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v3, "Not found ETH_DISABLED"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/ExtendedEthernetConfigStore;

    invoke-direct {v0}, Lcom/android/server/ExtendedEthernetConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    invoke-virtual {v0}, Lcom/android/server/ExtendedEthernetConfigStore;->read()V

    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mConfigStore:Lcom/android/server/ExtendedEthernetConfigStore;

    iget-object v1, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    new-instance v3, Landroid/util/ArrayMap;

    iget-object v0, v0, Lcom/android/server/ExtendedEthernetConfigStore;->mIpConfigurations:Landroid/util/ArrayMap;

    invoke-direct {v3, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mIpConfigurations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpConfiguration;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl;->mStateObserver:Lcom/android/server/ExtendedEthernetServiceImpl$3;

    invoke-virtual {v0, p1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-string v0, "ExtendedEthernetService"

    const-string/jumbo v1, "Registering extendedethernetservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "extendedethernetservice"

    iget-object v1, p0, Lcom/android/server/ExtendedEthernetService;->mImpl:Lcom/android/server/ExtendedEthernetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
