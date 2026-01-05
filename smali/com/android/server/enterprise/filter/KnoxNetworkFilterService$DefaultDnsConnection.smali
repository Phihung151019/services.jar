.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

.field public final userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized onServiceConnected$com$android$server$enterprise$filter$KnoxNetworkFilterService$DefaultTcpConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    const-string p1, "DefaultTcpConnection:onServiceConnected  for user "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultTcpConnection:onServiceConnected is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xa

    invoke-static {v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    invoke-static {v5, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v7, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    const-string/jumbo v8, "tcp"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v5

    iget v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_6

    iget-boolean v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z

    const/4 v6, 0x1

    const/4 v7, 0x6

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result v5

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v8, v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v5, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedTcpConn(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-interface {v2, v5, v1, v7, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    :cond_3
    iget-boolean v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6TcpConn(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-interface {v0, v1, v3, v7, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startHttpProxyServer()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-interface {v1, v2, v0}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p2, p1, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    array-length p2, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_6

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_6
    monitor-exit p0

    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "DefaultUdpConnection:onBindingDied  for user "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultUdpConnection:onBindingDied is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.udp.DefaultUdpProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "failed to bind udp process after onBinding died event"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    const-string p1, "DefaultTcpConnection:onBindingDied  for user "

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultTcpConnection:onBindingDied is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.tcp.DefaultTcpProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "failed to bind tcp process after onBinding died event"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    monitor-exit p0

    return-void

    :goto_5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_1
    const-string p1, "DefaultDnsConnection:onBindingDied  for user "

    monitor-enter p0

    :try_start_4
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultDnsConnection:onBindingDied is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catchall_2
    move-exception p1

    goto/16 :goto_8

    :cond_6
    :goto_6
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter.dns.DefaultDnsProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_8
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "failed to bind dns process after onBinding died event, clearing up the rules applied"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleBindingDiedEvent(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_7
    monitor-exit p0

    return-void

    :goto_8
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "DefaultUdpConnection:onServiceConnected  for user "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultUdpConnection:onServiceConnected is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    monitor-exit p0

    goto/16 :goto_1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    goto/16 :goto_1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xa

    invoke-static {v2, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v5, v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, p2, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    const-string/jumbo v7, "udp"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object p2

    iget p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    const/4 v4, 0x3

    if-ne p2, v4, :cond_4

    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result p2

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, p2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedUdpConn(IILjava/lang/String;)V

    :cond_3
    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6UdpConn(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    iget p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    const/16 v0, 0x11

    const/4 v1, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :cond_4
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->onServiceConnected$com$android$server$enterprise$filter$KnoxNetworkFilterService$DefaultTcpConnection(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void

    :pswitch_1
    const-string p1, "DefaultDnsConnection:onServiceConnected  for user "

    monitor-enter p0

    :try_start_5
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultDnsConnection:onServiceConnected is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez p2, :cond_6

    monitor-exit p0

    goto :goto_4

    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v0, :cond_7

    monitor-exit p0

    goto :goto_4

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    const-string/jumbo v4, "dns"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object p2

    iget p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_8

    iget-boolean p2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p2, p2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectDnsQuery(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    :cond_8
    monitor-exit p0

    :goto_4
    return-void

    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    const-string p1, "DefaultUdpConnection:onServiceDisconnected  for user "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultUdpConnection:onServicedisconnected is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_0
    const-string p1, "DefaultTcpConnection:onServiceDisconnected  for user "

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultTcpConnection:onServicedisconnected is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_1
    const-string p1, "DefaultDnsConnection:onServiceDisconnected  for user "

    monitor-enter p0

    :try_start_4
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "DefaultDnsConnection:onServicedisconnected is reached "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_2
    move-exception p1

    goto :goto_5

    :cond_2
    :goto_4
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    iget v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
