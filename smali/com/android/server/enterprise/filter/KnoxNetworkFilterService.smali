.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;
.super Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultDnsConnectionList:Ljava/util/HashMap;

.field public final mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

.field public final mDefaultTcpConnectionList:Ljava/util/HashMap;

.field public final mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

.field public final mDefaultUdpConnectionList:Ljava/util/HashMap;

.field public final mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

.field public mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public final mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mIsProcessObserverRegistered:Z

.field public final mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

.field public final mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

.field public final mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

.field public final mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

.field public final mLocalProxyStatus:Ljava/util/List;

.field public final mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

.field public mNetdService:Landroid/net/INetd;

.field public final mNetworkCallbackList:Ljava/util/HashMap;

.field public mNwFilterProxyAppId:I

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;


# direct methods
.method public static -$$Nest$mhandleActionBootComplete(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 12

    const-string/jumbo v0, "sending broadcast to authorized package "

    const-string/jumbo v1, "sending broadcast to authorized package "

    const-string/jumbo v2, "boot complete event is triggered for authorized user "

    const-string/jumbo v3, "sending register broadcast to registered package "

    const-string/jumbo v4, "sending register broadcast to registered package "

    const-string/jumbo v5, "boot complete event is triggered for registered user "

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v6, "com.samsung.android.knox.app.networkfilter"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object v11

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->addUidToVendorList(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    move-object v6, p0

    move v7, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v6, p0

    goto/16 :goto_6

    :catch_0
    if-eqz v11, :cond_0

    :try_start_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " failed after boot complete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v8, 0x0

    const/4 v9, -0x8

    const/4 v10, 0x2

    move-object v6, p0

    move v7, p1

    :try_start_7
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit v6

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v6, p0

    goto :goto_0

    :goto_1
    if-eqz v11, :cond_2

    :try_start_8
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " success after boot complete"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v6, p0

    :goto_2
    move-object p0, v0

    move-object p1, p0

    goto/16 :goto_6

    :cond_1
    move-object v6, p0

    move v7, p1

    :cond_2
    :goto_3
    iget-object p0, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo p1, "com.samsung.android.knox.app.networkfilter"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    iput p0, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    iget-object p0, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    iget-object v2, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->addUidToVendorList(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz p0, :cond_3

    :try_start_e
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " success after boot complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, v6

    move v2, v7

    move-object v6, p0

    :try_start_f
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    move-object v6, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v6, v1

    goto/16 :goto_0

    :catch_1
    move-object v1, v6

    move-object v6, p0

    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " userId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed after boot complete"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    const/4 v4, -0x8

    const/4 v5, 0x2

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object v6, v1

    monitor-exit v6

    goto :goto_5

    :catchall_5
    move-exception v0

    goto/16 :goto_2

    :cond_3
    :goto_4
    monitor-exit v6

    :goto_5
    return-void

    :goto_6
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw p1
.end method

.method public static -$$Nest$mhandleActionClearData(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged due to clear-data for caller "

    const-string/jumbo v1, "clear data action is triggered for authorized package "

    const-string/jumbo v2, "sending register broadcast to registered package "

    const-string/jumbo v3, "clear data action is triggered for registered package "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "android.intent.extra.UID"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with uid "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v5, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " userId "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " success after clear data event"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v3, v3, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with uid "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ZT"

    const-string/jumbo v6, "ZTNA_USAGE"

    const/4 v7, 0x1

    invoke-direct {v1, v5, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v5, "apiN"

    const-string/jumbo v6, "unregisterNetworkFilter"

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "pkgN"

    invoke-virtual {v1, v5, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "eInfo"

    const-string v6, "202"

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    invoke-virtual {p0, p1, v2, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static -$$Nest$mhandleActionLockBootCompleted(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 11

    const-string/jumbo v0, "sending broadcast to authorized package "

    const-string/jumbo v7, "sending broadcast to authorized package "

    const-string/jumbo v8, "lock boot complete event is triggered for authorized user "

    const-string/jumbo v3, "sending register broadcast to registered package "

    const-string/jumbo v4, "sending register broadcast to registered package "

    const-string/jumbo v5, "lock boot complete event is triggered for registered user "

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v6, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v6, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v5

    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->addUidToVendorList(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    if-eqz v6, :cond_0

    :try_start_2
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed after lock boot complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, -0x8

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_3
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " success after lock boot complete"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->addUidToVendorList(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    if-eqz v6, :cond_2

    :try_start_5
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed after lock boot complete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    const/4 v4, -0x8

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    :try_start_6
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " userId "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " success after lock boot complete"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendBootStatusIntent(IIIILjava/lang/String;)V

    :cond_3
    if-nez v9, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createIpTableChains(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    monitor-exit p0

    :goto_2
    return-void

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleActionPackageAdded(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 14

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string/jumbo v1, "new_install_or_update"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result v1

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-nez v4, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVersionName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVersionCode(ILjava/lang/String;)I

    move-result v6

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_9

    :catch_0
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    move-object v1, v7

    :try_start_3
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-object v7, v1

    :catch_2
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    move-object v1, v9

    :try_start_5
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    :cond_3
    :try_start_6
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x1

    const/4 v6, 0x0

    :try_start_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    const-wide/16 v10, 0x4

    invoke-interface {v9, v2, v10, v11, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v9, :cond_5

    array-length v10, v9

    move v11, v6

    :goto_2
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v12, :cond_4

    const-string/jumbo v13, "android.permission.BIND_VPN_SERVICE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v12, :cond_4

    move v9, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    move v9, v6

    :goto_3
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :catch_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v6

    :goto_5
    if-eqz v9, :cond_7

    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vpn client with package name "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and uid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " is installed"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eqz v8, :cond_7

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    goto :goto_6

    :cond_6
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ignore adding the browser package "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to vpn list"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    if-nez p1, :cond_8

    if-eqz v8, :cond_8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_8

    :try_start_9
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_5
    const/4 p1, -0x1

    :goto_7
    :try_start_a
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-nez p1, :cond_9

    monitor-exit p0

    goto :goto_8

    :cond_9
    :try_start_b
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v0, v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending register broadcast to package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " success after install"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v6, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    :cond_a
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-nez p1, :cond_b

    monitor-exit p0

    goto :goto_8

    :cond_b
    :try_start_c
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_c
    monitor-exit p0

    :goto_8
    return-void

    :goto_9
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p1
.end method

.method public static -$$Nest$mhandleActionPackageRemoved(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged due to uninstall for caller "

    const-string v3, "Authorized package getting uninstalled is "

    const-string/jumbo v4, "Registered package getting uninstalled is "

    const-string/jumbo v5, "vpn client with package name "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "package"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v6, "uid"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    const-string/jumbo v7, "new_install_or_update"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v7, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result v7

    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v9, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    if-nez v9, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v14, 0x0

    invoke-virtual {v7, v9, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v14}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    :try_start_2
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    :cond_1
    :goto_0
    if-eqz v15, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object v7, v15

    :try_start_3
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-object v15, v7

    :cond_2
    :goto_1
    if-eqz v16, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v7, v16

    :try_start_4
    invoke-interface/range {v7 .. v12}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :cond_3
    :try_start_5
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_5

    invoke-static {v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v11, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v7, v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v7, v10

    goto :goto_2

    :cond_4
    move v7, v9

    :goto_2
    if-eqz v7, :cond_5

    const-string/jumbo v7, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and uid "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is uninstalled"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    if-nez v0, :cond_6

    :try_start_6
    invoke-interface {v15}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v14
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_3
    if-eqz v14, :cond_6

    :try_start_7
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_6

    :try_start_8
    invoke-interface {v15}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    move-result v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catch_4
    const/4 v5, -0x1

    :goto_3
    :try_start_9
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeTcpRedirectRulesForCaptivePortal(II)V

    :cond_6
    iget-object v5, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v10

    goto :goto_4

    :cond_7
    move v5, v9

    :goto_4
    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v7, v6, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    if-eqz v5, :cond_a

    :cond_8
    if-nez v0, :cond_a

    if-eqz v5, :cond_9

    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6, v8, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ZT"

    const-string/jumbo v4, "ZTNA_USAGE"

    invoke-direct {v0, v3, v10, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v3, "apiN"

    const-string/jumbo v4, "unregisterNetworkFilter"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pkgN"

    invoke-virtual {v0, v3, v8}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "eInfo"

    const-string v4, "201"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    invoke-virtual {v1, v6, v8, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_a
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleBindingDiedEvent(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V
    .locals 13

    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    invoke-static {p1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v8, 0x0

    const/16 v9, 0xa

    const/4 v10, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    const/4 v12, 0x6

    invoke-interface {v11, p1, v10, v12, v8}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    invoke-interface {v11, p1, v9, v12, v8}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    const/16 v12, 0x11

    invoke-interface {v11, p1, v9, v12, v8}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    invoke-interface {v11, p1}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    const/4 v6, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    invoke-interface {v7, p1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    invoke-interface {v7, p1, v6}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string/jumbo v7, "handleBindingDiedEvent:error occured while communicating to remote oemnetd service"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    sget-object v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    aget-object v7, v7, v8

    iget-object v11, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v7

    if-eq v7, v6, :cond_0

    invoke-virtual {p0, v7, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    if-nez p1, :cond_1

    const/4 v2, 0x1

    const/16 v7, 0x270f

    invoke-virtual {p0, v2, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_1
    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v7, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectV6DnsQueryRules(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    :try_start_2
    iget-object v9, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v7, v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, v6}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    const-string/jumbo v2, "handleBindingDiedEvent:tcp:http:error occured remote service null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    const-string/jumbo v2, "handleBindingDiedEvent:tcp:http:error occured while communicating to remote service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, v1, v7, v8, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, v5, v4, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    :cond_4
    const/16 v0, -0xa

    invoke-virtual {p0, p1, v10, v0, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAdminIdForUser(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v10, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendEMMStatusIntent(IILjava/lang/String;)V

    return-void
.end method

.method public static -$$Nest$mhandleRegisterOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 6

    const-string/jumbo v0, "sending register broadcast to package "

    const-string/jumbo v1, "sending register broadcast to package "

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "userId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "package"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->initializeModules()V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createIpTableChains(I)V

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, p1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " success during register process"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v4, v4, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    :try_start_3
    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " userId "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " failed during register process"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x8

    invoke-virtual {p0, v2, v4, v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public static -$$Nest$mhandleStartFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "handleStartFilteringOperation:tcp:http:error occured while communicating to remote service "

    const-string/jumbo v3, "handleStartFilteringOperation:tcp:http:error occured remote service null"

    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "uid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-string/jumbo v6, "profileName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v8, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x2

    invoke-static {v8, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v10, 0xa

    invoke-static {v10, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredDestIpRange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getConfiguredProtocols(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->setupNetworkDns(I)I

    move-result v13

    const/4 v14, 0x1

    const/4 v15, -0x1

    const/4 v10, -0x8

    if-ne v13, v15, :cond_1

    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:dns:invalid netId returned"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v14, v10, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    invoke-interface {v8, v5, v13}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/android/internal/net/IOemNetd;->addUserToNwFilterRange(I)V

    if-eq v7, v15, :cond_2

    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v13, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/android/internal/net/IOemNetd;->setKnoxNwFilterProxyApp(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v8

    if-eq v8, v15, :cond_3

    invoke-virtual {v1, v8, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    :cond_3
    invoke-virtual {v1, v4, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    if-nez v5, :cond_4

    const/16 v8, 0x270f

    invoke-virtual {v1, v14, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    :cond_4
    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v8, v13, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-boolean v14, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4DnsConfigured:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_5

    :try_start_4
    invoke-interface {v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result v8
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectDnsQuery(II)V

    goto :goto_0

    :catch_0
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:dns:error occured remote service null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_1
    :try_start_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:dns:error occured while communicating to remote service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :cond_5
    :goto_0
    :try_start_7
    iget-boolean v8, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4TcpConfigured:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v14, 0x6

    if-eqz v8, :cond_6

    :try_start_8
    invoke-interface {v10}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result v8
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    iget-object v15, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedTcpConn(IILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object/from16 v16, v10

    const/4 v10, 0x1

    const/4 v15, 0x2

    :try_start_b
    invoke-interface {v8, v5, v15, v14, v10}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :catch_2
    :try_start_c
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:tcp:error occured remote service null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_3
    :try_start_d
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:tcp:error occured while communicating to remote service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_4
    :cond_6
    move-object/from16 v16, v10

    :catch_5
    :goto_1
    :try_start_e
    iget-boolean v8, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV4UdpConfigured:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v8, :cond_7

    :try_start_f
    invoke-interface {v13}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startProxyServer()I

    move-result v8
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x2

    invoke-static {v5, v15}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->exemptUdpPacketFromNwFilterRange(II)V

    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedUdpConn(IILjava/lang/String;)V

    goto :goto_2

    :catch_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:udp:error occured remote service null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_7
    :try_start_11
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:udp:error occured while communicating to remote service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :cond_7
    :goto_2
    :try_start_12
    iget-boolean v8, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6TcpConfigured:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v8, :cond_8

    :try_start_13
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    move-result v8
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :try_start_14
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6TcpConn(IILjava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-interface {v8, v5, v9, v14, v10}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_3

    :catch_8
    :try_start_16
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:tcp:v6:error occured remote service null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_9
    :try_start_17
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:tcp:V6:error occured while communicating to remote service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_a
    :cond_8
    :goto_3
    :try_start_18
    iget-boolean v8, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mV6UdpConfigured:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-eqz v8, :cond_9

    :try_start_19
    invoke-interface {v13}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startV6ProxyServer()I

    move-result v8
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v9, 0xa

    invoke-static {v5, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->exemptUdpPacketFromNwFilterRange(II)V

    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->redirectAppGeneratedV6UdpConn(IILjava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :try_start_1b
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    const/16 v10, 0x11

    const/4 v11, 0x1

    invoke-interface {v8, v5, v9, v10, v11}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_4

    :catch_b
    :try_start_1c
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:udp:V6:error occured remote service null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_c
    :try_start_1d
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:udp:V6:error occured while communicating to remote service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    monitor-exit p0

    goto/16 :goto_a

    :catch_d
    :cond_9
    :goto_4
    :try_start_1e
    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->startHttpProxyServer()I

    move-result v8

    invoke-interface/range {v16 .. v16}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v10

    invoke-interface {v10, v5, v8}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const/4 v10, 0x1

    invoke-virtual {v2, v0, v9, v10, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getInstalledVpnClientList(I)Ljava/util/Set;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v13, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->exemptUidFromNwFilterRange(II)V

    goto :goto_5

    :cond_a
    array-length v3, v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v3, :cond_d

    aget-object v11, v9, v10

    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v13

    if-lez v13, :cond_c

    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->applyTcpRedirectRulesForCaptivePortal(II)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string/jumbo v14, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p1, v0

    const-string/jumbo v0, "ignore adding the browser package "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to vpn list"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_b
    invoke-virtual {v1, v13, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_7

    :cond_c
    move-object/from16 p1, v0

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p1

    goto :goto_6

    :cond_d
    move-object/from16 p1, v0

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v6, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v3, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v0, v7, v3, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v2, 0x3

    iput v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2, v0, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAdminIdForUser(I)I

    move-result v0

    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendEMMStatusIntent(IILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, v4, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_f
    monitor-exit p0

    goto :goto_a

    :catch_e
    move-exception v0

    goto :goto_8

    :catch_f
    move-exception v0

    goto :goto_9

    :goto_8
    :try_start_20
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    monitor-exit p0

    goto :goto_a

    :goto_9
    :try_start_21
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    monitor-exit p0

    goto :goto_a

    :catch_10
    :try_start_22
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "handleStartFilteringOperation:dns:error occured while communicating to remote oemnetd service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    const/4 v3, -0x8

    invoke-virtual {v1, v5, v2, v3, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    monitor-exit p0

    :goto_a
    return-void

    :goto_b
    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleStopFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "uid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v2, "profileName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v5

    const/4 v6, -0x1

    invoke-interface {v5, v1, v6}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    sget-object v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-virtual {p0, v5, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const/16 v5, 0x270f

    invoke-virtual {p0, v0, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_1
    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_0
    :try_start_4
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v11, "handleStopFilteringOperation:dns:error occured remote service null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v11, "handleStopFilteringOperation:dns:error occured while communicating to remote service"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    :try_start_6
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v11, "handleStopFilteringOperation:tcp:error occured remote service null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v11, "handleStopFilteringOperation:tcp:error occured while communicating to remote service"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v9}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_4
    :try_start_8
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v11, "handleStopFilteringOperation:udp:error occured remote service null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_5
    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v11, "handleStopFilteringOperation:udp:error occured while communicating to remote service"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-interface {v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    :catch_6
    :try_start_a
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v10, "handleStopFilteringOperation:dns:v6:error occured remote service null"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v10, "handleStopFilteringOperation:dns:v6:error occured while communicating to remote service"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectV6DnsQueryRules(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    :catch_8
    :try_start_c
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v10, "handleStopFilteringOperation:tcp:V6:error occured remote service null"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_9
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v10, "handleStopFilteringOperation:tcp:V6:error occured while communicating to remote service"

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-interface {v9}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    :catch_a
    :try_start_e
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v9, "handleStopFilteringOperation:udp:V6:error occured remote service null"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_b
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v9, "handleStopFilteringOperation:udp:V6:error occured while communicating to remote service"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xa

    invoke-static {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    invoke-interface {v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    invoke-interface {v0, v1, v6}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    :catch_c
    :try_start_10
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v5, "handleStopFilteringOperation:tcp:http:error occured remote service null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_d
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v5, "handleStopFilteringOperation:tcp:http:error occured while communicating to remote service"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, p1, v8, v7, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v5, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v0, v3, v5, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x5

    iput v0, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    :cond_3
    invoke-virtual {p0, v1, v4, v7, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAdminIdForUser(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendEMMStatusIntent(IILjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    goto :goto_9

    :catch_e
    :try_start_11
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "handleStopFilteringOperation:error occured while communicating to remote oemnetd service"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x8

    invoke-virtual {p0, v1, v4, p1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    :goto_9
    return-void

    :goto_a
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    invoke-direct {p0}, Lcom/samsung/android/knox/zt/networktrust/filter/IKnoxNetworkFilterService$Stub;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mIsProcessObserverRegistered:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sput-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iput-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-static {p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mCm:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-direct {p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    const-class p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    monitor-enter p1

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-direct {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;-><init>()V

    sput-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :cond_1
    :goto_1
    sget-object v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    iput-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "KnoxNwFilterHandler"

    const/16 v3, 0xa

    invoke-direct {p1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterHelper"

    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "NwFilterService"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string/jumbo v5, "pkgUid"

    if-lez v3, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v0

    :cond_2
    :goto_2
    if-ge v6, v3, :cond_4

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/ContentValues;

    const-string/jumbo v8, "profileName"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "profileConfig"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "pkgName"

    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    invoke-direct {v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;-><init>()V

    iput-object v8, v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    iput-object v9, v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mRulesConfig:Ljava/lang/String;

    iput-object v10, v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageName:Ljava/lang/String;

    iput v7, v11, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    const-class v7, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    monitor-enter v7

    if-eqz v8, :cond_3

    :try_start_2
    sget-object v9, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v7

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_3
    monitor-exit v7

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "UnManagedNwFilterMgr"

    invoke-virtual {v2, v3, v4, v4, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :try_start_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v0

    :goto_3
    if-ge v6, v3, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-string/jumbo v9, "bundleInfo"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    array-length v10, v7

    invoke-virtual {v9, v7, v0, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v9}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    const-string v9, "ConfigViewer"

    invoke-virtual {v7, v9, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "UnEnrollViewer"

    invoke-virtual {v7, v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBundleInfoToLocalCache: configViewActivity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " unEnrollViewActivity: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mBundleInfo:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " updateBundleInfoToLocalCache error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->initializeModules()V

    return-void

    :goto_6
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_7
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public static getAMSInstance()Landroid/app/IActivityManager;
    .locals 1

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bindInternalProxyServices(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    const-wide/16 v3, 0x7530

    const v5, 0x40000005    # 2.0000012f

    const-string/jumbo v6, "com.samsung.android.knox.app.networkfilter"

    const/4 v7, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    const/4 v8, 0x0

    invoke-direct {v0, p0, p1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.samsung.android.knox.app.networkfilter.dns.DefaultDnsProxyService"

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v8, v0, v5, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v3, v4, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "binding to default dns proxy service is success"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    const/4 v8, 0x1

    invoke-direct {v0, p0, p1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.samsung.android.knox.app.networkfilter.tcp.DefaultTcpProxyService"

    invoke-virtual {v8, v6, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v8, v0, v5, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v3, v4, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "binding to default tcp proxy service is success"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;

    const/4 v8, 0x2

    invoke-direct {v0, p0, p1, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;II)V

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v8, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v8, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "com.samsung.android.knox.app.networkfilter.udp.DefaultUdpProxyService"

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v7, v0, v5, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "binding to default udp proxy service is success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$DefaultDnsConnection;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_5
    return-void
.end method

.method public final checkCallingUidPermission()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    const-string v2, " Permission not granted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "failed due to caller not registered or authorized"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "failed due to caller not registered"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_MGMT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceDoPoOnlyPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public final clearProxyInterfaceList(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final connectNativeNetdService()V
    .locals 1

    :try_start_0
    const-string/jumbo v0, "netd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "Can\'t connect to NativeNetdService netd"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public final disableNetdFlags()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "profile "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is running, so skipping disabling the netd flags"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string v3, "Disabling all netd flags, since the profile list is empty"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "net.redirect_socket_calls.hooked"

    const-string/jumbo v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p1, "KnoxNetworkFilterProfileInfo: The profile info being printed at time "

    const-string p3, " without permission android.permission.DUMP"

    const-string v0, "KnoxNetworkFilterProfileInfo: Permission Denial: can\'t dump PersonaManager from from pid="

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntries()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxNetworkFilterProfileInfo: profileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxNetworkFilterProfileInfo: RulesConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getRulesConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxNetworkFilterProfileInfo: socketConfig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getSocketConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxNetworkFilterProfileInfo: packageName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxNetworkFilterProfileInfo: packageUid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KnoxNetworkFilterProfileInfo: state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getVpnClientUidList()Ljava/util/HashSet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: vpn client uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisterInfoFromDatabase()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxNetworkFilterProfileInfo: register app info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedInfoFromDatabase()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v0

    :goto_3
    if-ge v1, p3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxNetworkFilterProfileInfo: unManaged app info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUserIdList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v0

    :goto_4
    if-ge v1, p3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KnoxNetworkFilterProfileInfo: netId value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catch_0
    :cond_5
    :try_start_3
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getAMSInstance()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v1, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error condition is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error longMsg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error shortMsg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error stackTrace is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk error pid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local nwfilter proxy apk apk error uid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_7
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz p3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default DNS proxy server configured under user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local default DNS proxy server address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local default DNS proxy server port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local default DNS proxy server thread is active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local default DNS proxy server thread state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getProxythreadStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: local default DNS proxy server alive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadAlive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server address "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server thread is active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server thread state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6ProxythreadStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KnoxNetworkFilterProfileInfo: V6:local default DNS proxy server alive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadAlive()Z

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz p3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxNetworkFilterProfileInfo: local default tcp proxy server configured under user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default tcp proxy server address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default tcp proxy server port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default tcp proxy server thread is active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default tcp proxy server thread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getProxythreadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default tcp proxy server alive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server thread is active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server thread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6ProxythreadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default tcp proxy server alive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server thread is active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isHttpProxyThreadRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server thread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpProxythreadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: http:local default tcp proxy server alive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isHttpProxyThreadAlive()Z

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz p3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxNetworkFilterProfileInfo: local default udp proxy server configured under user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default udp proxy server address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default udp proxy server port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getLocalProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default udp proxy server thread is active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default udp proxy server thread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getProxythreadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: local default udp proxy server alive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isProxyThreadAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server address "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6LocalProxyPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server thread is active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server thread state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getV6ProxythreadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxNetworkFilterProfileInfo: V6:local default udp proxy server alive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->isV6ProxyThreadAlive()Z

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    const-string p3, "\n"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_d
    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mLocalProxyStatus:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v1, v0

    :goto_9
    if-ge v1, p3, :cond_e

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KnoxNetworkFilterProfileInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "KnoxNetworkFilterProfileInfo: version "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v1, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {p3, v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVersionCode(ILjava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :goto_a
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :catch_1
    :goto_b
    monitor-exit p0

    return-void
.end method

.method public final exemptUidFromNwFilterRange(II)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/net/UidRangeParcel;

    invoke-direct {v3, p1, p2}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRangeParcel;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    invoke-interface {v3, v0}, Lcom/android/internal/net/IOemNetd;->exemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_0
    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "_knox_nwfilter_app_act"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    const-string v7, " -m owner --uid-owner "

    invoke-static {p1, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->INSERT:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    const-string v3, "ACCEPT"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {p1, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCEPT"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {p1, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCEPT"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "*nat"

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    const-string p0, "*filter"

    const/16 p1, 0x2e

    invoke-static {p1, p0, v2, p2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    const-string p0, "*mangle"

    const/4 p1, 0x6

    invoke-static {p1, p0, v2, v6, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized getAllProfiles()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "getConfig validation failed with error code "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/16 v2, -0xc

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x7

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getConfigByUserId(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "com.android.vpndialogs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRulesConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "Error during getConfigByUserId API validation as the caller is not platform signed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :cond_3
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "Error during getConfigByUserId API validation as the caller package name validation failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getInstanceValidation()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getKnoxNwFilterHttpProxyPort(ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mBrowserAppList:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    invoke-interface {p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getHttpLocalProxyPort()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->connectNativeNetdService()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get OemNetd listener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$$ExternalSyntheticOutline0;->m(Landroid/os/RemoteException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    return-object p0
.end method

.method public final getPkgNameForTcpV4Port(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v4, ""

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "unauthorized caller for getPkgNameForTcpV4Port"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "SecurityException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "IllegalArgumentException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getPkgNameForTcpV6Port(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v4, ""

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "unauthorized caller for getPkgNameForTcpV6Port"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "SecurityException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "IllegalArgumentException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final declared-synchronized getProfileForUser(I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "com.android.vpndialogs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "Error during getProfileForUser API validation as the caller is not platform signed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :cond_2
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v0, "Error during getProfileForUser API validation as the caller package name validation failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getProfileStatus(Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "getProfileStatus validation failed with error code "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/16 v2, -0xc

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x7

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object p1

    iget p1, p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    const/4 p1, -0x2

    :goto_2
    monitor-exit p0

    return p1

    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getRegisteredListeners(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "getRegisteredListeners validation failed with error code "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v2

    if-nez v2, :cond_4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v1, v3, :cond_2

    const/16 v2, -0xc

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, -0x7

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getRegisteredPackageList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppsByAdminId(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getTcpV4PortInfo(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v4, ""

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "unauthorized caller for getTcpV4PortInfo"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV4Entry(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "SecurityException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "IllegalArgumentException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getTcpV6PortInfo(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v4, ""

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "unauthorized caller for getTcpV6PortInfo "

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterTcpV6Entry(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "SecurityException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "IllegalArgumentException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getUdpV6PortInfo(I)Ljava/lang/String;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v4, ""

    if-eq v0, v2, :cond_0

    const-string/jumbo p0, "unauthorized caller for getUdpV6PortInfo"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->getNetworkFilterUdpV6Entry(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    const-string/jumbo p0, "RemoteException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "SecurityException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "IllegalArgumentException"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-object v4

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final declared-synchronized handleVendorPackageUninstall(ILjava/lang/String;Z)V
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0xa

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v0, v6, v9, v5}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    invoke-interface {v8, v0, v7, v9, v5}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    const/16 v9, 0x11

    invoke-interface {v8, v0, v7, v9, v5}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :try_start_4
    invoke-interface {v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    :try_start_5
    invoke-interface {v9}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_3
    :try_start_6
    invoke-interface {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_4
    :try_start_7
    invoke-interface {v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_5
    :try_start_8
    invoke-interface {v9}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_6
    const/4 v10, -0x1

    :try_start_9
    invoke-interface {v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    invoke-interface {v4}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v11
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v12

    invoke-interface {v12, v0, v10}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catch_7
    move-object v11, v8

    :catch_8
    :goto_1
    :try_start_b
    iget-object v12, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v12, v2, v11, v5, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    iget-object v11, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    invoke-interface {v11, v0}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    invoke-interface {v11, v0}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    invoke-interface {v11, v0, v10}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v11

    invoke-interface {v11, v1}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catch_9
    :try_start_d
    sget-object v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    if-nez v0, :cond_1

    const/4 v1, 0x1

    const/16 v5, 0x270f

    invoke-virtual {p0, v1, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_1
    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    invoke-interface {v3, v2, v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, v2, v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v2, v8}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catch_a
    :try_start_f
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catch_b
    :try_start_10
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->clearProxyInterfaceList(I)V

    :cond_3
    if-eqz p3, :cond_4

    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "removing the configs set for authorized user after the vendor package uninstall"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unRegisterFilterList()V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unbindInternalProxyServices(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeIpTableChains(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->clearProxyInterfaceList(I)V

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :goto_3
    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw p1
.end method

.method public final initializeModules()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isRegisterDbEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "UnManagedNwFilterMgr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->registerFilterList()V

    iget-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mIsProcessObserverRegistered:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mIsProcessObserverRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    :goto_1
    return-void
.end method

.method public final declared-synchronized isAuthorized()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->prepareFilteringValidation(ILjava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    const-string v4, " Permission not granted"

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isUserLimitReached(Z)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized pause(Ljava/lang/String;)I
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, -0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized prepareFiltering(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 7

    const-string v0, "KnoxAnalyticsData:registerNetworkFilter API getting logged due to end-user authorization for caller "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.android.vpndialogs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string p2, "Error during prepareFiltering API validation as the caller is not platform signed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    const-string v4, " Permission not granted"

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v1, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->prepareFilteringValidation(ILjava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addAuthorizedInfoToDatabase(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    const/4 v5, -0x8

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v1, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addAuthorizedInfoToDatabase(ILjava/lang/String;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "prepareFiltering: inserting info into db failed during second attempt"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v5

    :cond_3
    :try_start_2
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "prepareFiltering: inserting info into db failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v5

    :cond_4
    :try_start_3
    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v4, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->bindInternalProxyServices(I)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->initializeModules()V

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->createIpTableChains(I)V

    const/4 p2, -0x1

    const/4 v4, 0x1

    if-eq v1, p2, :cond_5

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p2, v1, p1, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    new-instance p2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_ZT"

    const-string/jumbo v5, "ZTNA_USAGE"

    invoke-direct {p2, v1, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "apiN"

    const-string/jumbo v4, "registerNetworkFilter"

    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pkgN"

    invoke-virtual {p2, v1, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "eInfo"

    const-string v4, "100"

    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    :catch_0
    :try_start_6
    const-string/jumbo p2, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "removing the inserted info from db since internal binding failed"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p2, v1, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v5

    :goto_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final declared-synchronized registerApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 5

    const-string v0, "KnoxAnalyticsData:registerNetworkFilter API getting logged for caller "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isRegisterDbEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v1, -0x9

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v1, -0xb

    goto :goto_1

    :cond_2
    invoke-static {v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isPackageInstalled(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    const/4 v1, -0x3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v1, -0xa

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_6

    monitor-exit p0

    return v1

    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3, p2, p3, p4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addRegisterInfoToDatabase(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "registerApplication: inserting info into db failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, -0x8

    return p0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_7
    :try_start_2
    iget-object p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v2, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    new-instance p3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string p4, "KNOX_ZT"

    const-string/jumbo v2, "ZTNA_USAGE"

    const/4 v3, 0x1

    invoke-direct {p3, p4, v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v2, "apiN"

    const-string/jumbo v3, "registerNetworkFilter"

    invoke-virtual {p3, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "pkgN"

    invoke-virtual {p3, v2, p4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p4, "userId"

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "package"

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final registerFilterList()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    const/4 v13, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v5

    invoke-virtual/range {v7 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final declared-synchronized registerListeners(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const-string/jumbo v0, "enable clearing the dns system cache for user "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNwFilterProxyAppId:I

    invoke-static {v2, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->registerListenersValidation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    const/4 v7, -0x8

    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v8, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v0

    const/4 v8, 0x1

    invoke-interface {v0, v1, v8}, Lcom/android/internal/net/IOemNetd;->setDnsCacheStatus(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "cache"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    const-string/jumbo v8, "clearCache"

    invoke-virtual {v1, v8, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->containsProfileEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v1

    iput-object p2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mSocketConfig:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v1

    iput v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mDNSCacheStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :try_start_6
    invoke-interface {v4, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    const-string/jumbo v4, "dns"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    :try_start_7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v1, "registerListeners:dns:error occurred since the remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v3, v7

    goto :goto_2

    :catch_3
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v1, "registerListeners:dns:IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v1, "registerListeners:dns:error occured while communicating to remote service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :goto_2
    :try_start_8
    invoke-interface {v6, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    const-string/jumbo v4, "tcp"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catch_5
    :try_start_9
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v1, "registerListeners:tcp:error occurred since the remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v3, v7

    goto :goto_4

    :catch_6
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v1, "registerListeners:tcp:IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_7
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v1, "registerListeners:tcp:error occured while communicating to remote service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :goto_4
    :try_start_a
    invoke-interface {v5, p1, p2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    const-string/jumbo v0, "udp"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->denyUnAuthorizedPackets(ILjava/lang/String;Ljava/util/List;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v7, v3

    goto :goto_5

    :catch_8
    :try_start_b
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "registerListeners:udp:error occurred since the remote service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_9
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "registerListeners:udp:IllegalArgumentException"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_a
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "registerListeners:udp:error occured while communicating to remote service"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_5
    monitor-exit p0

    return v7

    :cond_4
    :goto_6
    monitor-exit p0

    return v7

    :goto_7
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p1
.end method

.method public final registerSystemDefaultNetworkCallback(I)V
    .locals 7

    const-string v0, "Failed to register system default network callback "

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    if-eqz v1, :cond_0

    const-string p0, "Default network callback is already registered, skipping registering"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;-><init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mCm:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    invoke-virtual {v5, v1, v6}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final releaseNwFilterNetId(I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V

    return-void
.end method

.method public final declared-synchronized removeConfigByEnduser()V
    .locals 7

    const-string v0, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged due to end-user stopping manually for caller "

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "com.android.vpndialogs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v3, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v4, "KNOX_ZT"

    const-string/jumbo v5, "ZTNA_USAGE"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "apiN"

    const-string/jumbo v6, "unregisterNetworkFilter"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "pkgN"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "eInfo"

    const-string v6, "203"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "Error during removeConfigByEnduser API validation as the caller is not platform signed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :cond_3
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v1, "Error during removeConfigByEnduser API validation as the caller package name validation failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final removeExemptUidFromNwFilterRange(II)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/net/UidRangeParcel;

    invoke-direct {v3, p1, p2}, Landroid/net/UidRangeParcel;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRangeParcel;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRangeParcel;

    invoke-interface {v3, v0}, Lcom/android/internal/net/IOemNetd;->removeExemptUidFromNwFilterRange([Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_0
    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "_knox_nwfilter_app_act"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    const-string v7, " -m owner --uid-owner "

    invoke-static {p1, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;->DELETE:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;

    const-string v3, "ACCEPT"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {p1, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCEPT"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;

    invoke-static {p1, v7}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACCEPT"

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreParam;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall$IpRestoreActionType;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "*nat"

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    const-string p0, "*filter"

    const/16 p1, 0x2e

    invoke-static {p1, p0, v2, p2, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    const-string p0, "*mangle"

    const/4 p1, 0x6

    invoke-static {p1, p0, v2, v6, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->insertRules(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public final sendBootStatusIntent(IIIILjava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ERROR_CODE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p3, 0x4000000

    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p3, 0x20

    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x1000000

    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p3, "com.samsung.android.knox.intent.extra.TYPE"

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.STATUS"

    if-eqz p2, :cond_1

    const/4 v4, 0x6

    if-eq p2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x7

    :try_start_1
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v2, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendEMMStatusIntent(IILjava/lang/String;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NOTIFY_NETWORK_FILTER_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    const-string/jumbo v4, "com.samsung.android.knox.intent.extra.STATUS"

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    const/4 v5, 0x2

    if-eq p2, v5, :cond_2

    if-eq p2, v3, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendMessageToHandler(ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mHandler:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final sendStatusIntent(IIILjava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.NOTIFY_STATUS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.ERROR_CODE"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p3, 0x4000000

    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 p3, 0x20

    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x1000000

    invoke-virtual {v2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p3, "com.samsung.android.knox.intent.extra.STATUS"

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p2, 0x7

    :try_start_1
    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :pswitch_1
    const/16 p2, 0x67

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const/4 p2, 0x2

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const/16 p2, 0x66

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    const/16 p2, 0x65

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_5
    const/16 p2, 0x64

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :pswitch_6
    const/4 p2, 0x1

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

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

.method public final declared-synchronized setConfig(Ljava/lang/String;Ljava/lang/String;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "setConfig failed "

    const-string/jumbo v4, "setConfig failed "

    const-string/jumbo v5, "setConfig failed "

    const-string/jumbo v6, "setConfig failed "

    const-string/jumbo v7, "setConfig failed "

    const-string/jumbo v8, "setConfig failed "

    const-string v9, "KnoxAnalyticsData:setConfig API for managed config removal getting logged for caller "

    const-string v10, "KnoxAnalyticsData:unregisterNetworkFilter API for unmanaged config removal getting logged for caller "

    const-string v11, "KnoxAnalyticsData:setConfig API getting logged for caller "

    const-string/jumbo v12, "config is being updated for an active running profile "

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    iget-object v15, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->setConfigValidation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    move-object/from16 v17, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    const/4 v3, 0x6

    goto :goto_0

    :goto_1
    const/4 v4, 0x3

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_1

    goto :goto_2

    :cond_1
    if-ne v3, v4, :cond_3

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_2
    :goto_2
    if-ne v3, v4, :cond_3

    monitor-exit p0

    const/16 v0, -0x9

    return v0

    :cond_3
    :goto_3
    :try_start_3
    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    move-object/from16 v18, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v5, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    move-object/from16 v19, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v12}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, -0x8

    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    if-nez v4, :cond_4

    goto/16 :goto_6

    :cond_4
    :try_start_4
    invoke-interface {v3, v0, v2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v5, v0, v2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v4, v0, v2}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v5, "KNOX_ZT"

    const-string/jumbo v7, "ZTNA_USAGE"

    const/4 v8, 0x1

    invoke-direct {v4, v5, v8, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v5, "pkgN"

    invoke-virtual {v4, v5, v15}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "apiN"

    const-string/jumbo v7, "setConfig"

    invoke-virtual {v4, v5, v7}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v13, v0, v2, v15}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addVendorInfoToStorage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_6

    monitor-exit p0

    return v6

    :cond_6
    :try_start_8
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->addUidToVendorList(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return v3

    :cond_7
    :goto_4
    :try_start_9
    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_1
    :try_start_b
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, v13, v15}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeAuthorizedInfoFromDatabase(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "apiN"

    const-string/jumbo v2, "unregisterNetworkFilter"

    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "eInfo"

    const-string v2, "200"

    invoke-virtual {v4, v0, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catch_2
    move-exception v0

    :try_start_c
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return v6

    :catch_3
    move-exception v0

    :try_start_d
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return v6

    :catch_4
    move-exception v0

    :try_start_e
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return v6

    :catch_5
    move-exception v0

    :try_start_f
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v18

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return v6

    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v17

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    monitor-exit p0

    return v6

    :catch_7
    move-exception v0

    :try_start_11
    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return v6

    :cond_9
    :goto_6
    monitor-exit p0

    return v6

    :goto_7
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0
.end method

.method public final setupNetworkDns(I)I
    .locals 13

    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->connectNativeNetdService()V

    const/4 v1, -0x1

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->reserveNetId()I

    move-result v3

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    :try_start_1
    invoke-interface {v8, v3, v7}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "DnsResolverAdapter"

    const-string/jumbo v10, "createNetworkCache - entered"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;

    const/4 v11, 0x0

    invoke-direct {v10, v3, v11}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v8, v10}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    const-string/jumbo v8, "createNetworkCache - exited"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v8, Landroid/net/LinkProperties;

    invoke-direct {v8}, Landroid/net/LinkProperties;-><init>()V

    if-nez p1, :cond_2

    const-string v9, "127.0.0.1"

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :catch_0
    move-exception v7

    :goto_0
    move v8, v2

    goto/16 :goto_4

    :catch_1
    move-exception v4

    goto/16 :goto_6

    :cond_2
    const-string v9, "127.0.0.2"

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    :goto_1
    new-instance v9, Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    iget-object v10, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    invoke-direct {v9, v10, v11}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;)V

    iput-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    iget-object v10, v9, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    iput-boolean v7, v8, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    const/4 v8, 0x4

    const/4 v9, 0x3

    filled-new-array {v7, v2, v9, v8}, [I

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    iget-object v10, v9, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    invoke-virtual {v8}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->flushVmDnsCache()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupNetworkDns() - Network created id = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v7

    goto/16 :goto_7

    :catch_2
    move-exception v4

    move v8, v7

    move-object v7, v4

    move v4, v8

    goto :goto_0

    :goto_3
    move-object v12, v8

    move v8, v7

    move-object v7, v12

    goto :goto_4

    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v8

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error creating private network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_4
    if-eqz v8, :cond_3

    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupNetworkDns() - Failed to set dns for network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetdService:Landroid/net/INetd;

    if-eqz v7, :cond_4

    invoke-interface {v7, v3}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_5
    move-exception v7

    :try_start_7
    const-string/jumbo v8, "setupNetworkDns() - Failed to remove network"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_3
    const-string/jumbo v8, "setupNetworkDns() - Failed to create new network with id provided."

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_5
    iget-object v7, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :goto_6
    :try_start_8
    const-string/jumbo v8, "setupNetworkDns() - Failed creating new network."

    invoke-static {v0, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :goto_7
    if-nez v4, :cond_0

    return v3

    :goto_8
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final declared-synchronized start(Ljava/lang/String;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->startValidation(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v0, "skipping start call since the profile is already in running state"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string/jumbo v5, "net.redirect_socket_calls.hooked"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/internal/net/IOemNetd;->enableIpOptionModification(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->registerSystemDefaultNetworkCallback(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "uid"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "profileName"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :goto_1
    monitor-exit p0

    const/4 p0, -0x8

    return p0

    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized stop(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.vpndialogs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->checkIfPlatformSigned(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string p2, "Error during stop API validation as the caller is not platform signed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermission()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v2

    if-nez v2, :cond_c

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-eq v1, p2, :cond_3

    const/16 v2, -0xc

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :cond_4
    if-ge v5, v4, :cond_7

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_4

    const/4 v2, -0x6

    goto :goto_2

    :cond_5
    const/4 v2, -0x2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, -0x7

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    monitor-exit p0

    return v2

    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v6, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz v1, :cond_b

    if-eqz v5, :cond_b

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_a

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "skipping stop call since the profile is already in idle state"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_a
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    const/4 v6, 0x2

    const/4 v7, 0x6

    invoke-interface {v1, v0, v6, v7, v3}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    const/16 v6, 0xa

    invoke-interface {v1, v0, v6, v7, v3}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    const/16 v7, 0x11

    invoke-interface {v1, v0, v6, v7, v3}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "profileName"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :cond_b
    :goto_4
    monitor-exit p0

    const/4 p0, -0x8

    return p0

    :cond_c
    :try_start_5
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1

    :goto_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method

.method public final unRegisterFilterList()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isRegisterDbEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget-object v1, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "UnManagedNwFilterMgr"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_1
    iput-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mReceiver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NwFilterReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catch_0
    :try_start_1
    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    const-string v4, "Error occured while trying to unregister the reciever"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mIsProcessObserverRegistered:Z

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    iput-boolean v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mIsProcessObserverRegistered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_5
    return-void
.end method

.method public final unbindInternalProxyServices(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpConnectionList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final declared-synchronized unregisterApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 6

    const-string v0, "KnoxAnalyticsData:unregisterNetworkFilter API getting logged for caller "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->checkCallingUidPermissionEMM(Lcom/samsung/android/knox/ContextInfo;)V

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->unregisterApplicationValidation(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v2, -0x6

    if-eq v1, v2, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "pkgName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "NwFilterMgr"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo p2, "unregisterApplication: deleting info from db failed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, -0x8

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v3, "KNOX_ZT"

    const-string/jumbo v4, "ZTNA_USAGE"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "apiN"

    const-string/jumbo v5, "unregisterNetworkFilter"

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkgN"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v2, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "package"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final unregisterSystemDefaultNetworkCallback(I)V
    .locals 6

    const-string v0, "Failed to unregister system default network callback "

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    if-nez v1, :cond_0

    const-string p0, "Default network callback is not registered, skipping unregistering"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$NetworkCallback;

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mNetworkCallbackList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
