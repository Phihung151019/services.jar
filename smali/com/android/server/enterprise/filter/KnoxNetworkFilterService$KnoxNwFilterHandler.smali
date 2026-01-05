.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x11

    const/4 v7, 0x6

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/16 v10, -0x2710

    const/4 v11, 0x1

    const/4 v12, 0x5

    const/4 v13, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const-string/jumbo v0, "sending config removed broadcast to authorized package "

    const-string/jumbo v3, "config removed by end-user is triggered for authorized package "

    const-string/jumbo v4, "sending config removed broadcast to registered package "

    const-string/jumbo v5, "config removed by end-user is triggered for registered package "

    monitor-enter v1

    :try_start_0
    const-string/jumbo v6, "uid"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v7, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v8, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getRegisteredAppPackage(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with uid "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v7, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " userId "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " success after config removal event"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6, v12, v13, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdAuthorized(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getAuthorizedAppPackage(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with uid "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2, v4, v11}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->handleVendorPackageUninstall(ILjava/lang/String;Z)V

    const-string/jumbo v2, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " userId "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " success after config removal event"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v6, v12, v13, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    const-string/jumbo v0, "user removal is triggered for user "

    monitor-enter v1

    :try_start_2
    const-string/jumbo v12, "android.intent.extra.user_handle"

    invoke-virtual {v2, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v10, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v10, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v10, :cond_2

    monitor-exit v1

    goto/16 :goto_12

    :cond_2
    :try_start_3
    invoke-static {v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v12, :cond_3

    monitor-exit v1

    goto/16 :goto_12

    :cond_3
    :try_start_4
    iget v14, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, v2, v9, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, v2, v8, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, v2, v8, v6, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    :try_start_6
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-interface {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    :try_start_8
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catch_2
    :try_start_9
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_3
    :try_start_a
    invoke-interface {v3}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_4
    :try_start_b
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_5
    :try_start_c
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_6
    :try_start_d
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v15

    invoke-interface {v15, v2, v4}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_7
    :try_start_e
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v15

    invoke-interface {v15, v2}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v15

    invoke-interface {v15, v2}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v15

    invoke-interface {v15, v2, v4}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v15

    invoke-interface {v15, v0}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_8
    :try_start_f
    sget-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    aget-object v0, v0, v13

    iget-object v13, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_4

    invoke-virtual {v1, v0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_4
    invoke-virtual {v1, v14, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    if-nez v2, :cond_5

    const/16 v0, 0x270f

    invoke-virtual {v1, v11, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_5
    iget-object v0, v12, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4, v4}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    invoke-interface {v3, v10, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6, v10, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v10, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catch_9
    :try_start_11
    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unRegisterFilterList()V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeIpTableChains(I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->clearProxyInterfaceList(I)V

    iget-object v0, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    monitor-exit v1

    goto/16 :goto_12

    :goto_4
    :try_start_12
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    throw v0

    :pswitch_2
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    monitor-enter v1

    :try_start_13
    const-string/jumbo v0, "userId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v3

    iget-object v10, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v14, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    iget-object v14, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v12

    invoke-interface {v12, v0, v9, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v12

    invoke-interface {v12, v0, v8, v7, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v7

    invoke-interface {v7, v0, v8, v6, v13}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catch_a
    :try_start_15
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :catchall_3
    move-exception v0

    goto/16 :goto_11

    :catchall_4
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/internal/net/IOemNetd;->getNwFilterNetId(I)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->releaseNwFilterNetId(I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/internal/net/IOemNetd;->removeUserFromNwFilterRange(I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v6

    invoke-interface {v6, v0, v4}, Lcom/android/internal/net/IOemNetd;->setNwFilterNetId(II)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v6

    invoke-interface {v6, v10}, Lcom/android/internal/net/IOemNetd;->removeKnoxNwFilterProxyApp(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :catch_b
    :try_start_17
    sget-object v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    aget-object v6, v6, v13

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_7

    invoke-virtual {v1, v6, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_7
    invoke-virtual {v1, v3, v3}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    if-nez v0, :cond_8

    const/16 v6, 0x270f

    invoke-virtual {v1, v11, v6}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    :cond_8
    invoke-static {v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, v6, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mVpnClientUidList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7, v7}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->removeExemptUidFromNwFilterRange(II)V

    goto :goto_6

    :cond_9
    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushExemptDnsRulesFromNat(I)V

    iget-object v6, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v7, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v11, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :try_start_18
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_7

    :catch_c
    :try_start_19
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v15, "handleUnregisterOperation:dns:error occured remote service null"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_d
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v15, "handleUnregisterOperation:dns:error occured while communicating to remote service"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectDnsQueryRules(I)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_f
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_e
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_8

    :catch_e
    :try_start_1b
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v15, "handleUnregisterOperation:tcp:error occured remote service null"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_f
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v15, "handleUnregisterOperation:tcp:error occured while communicating to remote service"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectTcpConnRules(I)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopProxyServer()I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    goto :goto_9

    :catch_10
    :try_start_1d
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v15, "handleUnregisterOperation:udp:error occured remote service null"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_11
    const-string/jumbo v12, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v15, "handleUnregisterOperation:udp:error occured while communicating to remote service"

    invoke-static {v12, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v12, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v9}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectUdpConnRules(I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :try_start_1e
    invoke-interface {v6}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_1e} :catch_12
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_a

    :catch_12
    :try_start_1f
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v12, "handleUnregisterOperation:dns:v6:error occured remote service null"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_13
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v12, "handleUnregisterOperation:dns:v6:error occured while communicating to remote service"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushRedirectV6DnsQueryRules(I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    :try_start_20
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_20} :catch_14
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    goto :goto_b

    :catch_14
    :try_start_21
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v12, "handleUnregisterOperation:tcp:V6:error occured remote service null"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_15
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v12, "handleUnregisterOperation:tcp:V6:error occured while communicating to remote service"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6TcpConnRules(I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    :try_start_22
    invoke-interface {v7}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopV6ProxyServer()I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_16
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto :goto_c

    :catch_16
    :try_start_23
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v12, "handleUnregisterOperation:udp:V6:error occured remote service null"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_17
    const-string/jumbo v9, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v12, "handleUnregisterOperation:udp:V6:error occured while communicating to remote service"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    iget-object v9, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUdpPacketExemptRules(II)V

    iget-object v8, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushAppGeneratedRedirectV6UdpConnRules(I)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    :try_start_24
    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->stopHttpProxyServer()I

    invoke-interface {v11}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v8
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_18
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    :try_start_25
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v9

    invoke-interface {v9, v0, v4}, Lcom/android/internal/net/IOemNetd;->setHttpProxyPort(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_25} :catch_1a
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    goto :goto_f

    :catch_18
    move-object v8, v5

    goto :goto_d

    :catch_19
    move-object v8, v5

    goto :goto_e

    :catch_1a
    :goto_d
    :try_start_26
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v9, "handleUnregisterOperation:tcp:http:error occured remote service null"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catch_1b
    :goto_e
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v9, "handleUnregisterOperation:tcp:http:error occured while communicating to remote service"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v14, v8, v13, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->applyHttpProxyConfiguration(Ljava/lang/String;[Ljava/lang/String;ZI)V

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushTcpRedirectRulesForCaptivePortal(I)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    :try_start_27
    invoke-interface {v6, v14, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v11, v14, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7, v14, v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;->setConfig(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_27} :catch_1c
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto :goto_10

    :catch_1c
    :try_start_28
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v5, "handleUnregisterOperation:setConfig:error occured remote service null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catch_1d
    const-string/jumbo v4, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v5, "handleUnregisterOperation:setConfig:error occured while communicating to remote service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->flushUnAuthorizedPackets(I)V

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4, v3, v2, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    const-string/jumbo v5, "com.samsung.android.knox.app.networkfilter"

    invoke-virtual {v4, v10, v5, v13}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->addOrRemoveAppsFromBatteryOptimization(ILjava/lang/String;Z)V

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    move-result-object v4

    if-eqz v4, :cond_a

    const/4 v5, 0x5

    iput v5, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mState:I

    :cond_a
    iget-object v4, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterProcessObserver:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;

    iget-object v4, v4, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3, v14}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->removeVendorInfoFromStorage(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unRegisterFilterList()V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unbindInternalProxyServices(I)V

    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterFw:Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterFirewall;->removeIpTableChains(I)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->disableNetdFlags()V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->clearProxyInterfaceList(I)V

    iget-object v3, v1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sending unregister broadcast to package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " success during unregister process"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3, v13, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendStatusIntent(IIILjava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    monitor-exit v1

    goto :goto_12

    :goto_11
    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_3

    throw v0

    :pswitch_3
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleRegisterOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    return-void

    :pswitch_4
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleStopFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    return-void

    :pswitch_5
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleStartFilteringOperation(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    return-void

    :pswitch_6
    const-string/jumbo v1, "reason"

    invoke-virtual {v2, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_c

    const-string/jumbo v1, "knoxNwFilter-KnoxNetworkFilterService"

    const-string/jumbo v2, "ultra power saving mode has been disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_7
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_8
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionLockBootCompleted(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    return-void

    :pswitch_9
    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    iget-object v2, v2, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionBootComplete(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;I)V

    :cond_c
    :goto_12
    return-void

    :pswitch_a
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionClearData(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    return-void

    :pswitch_b
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionPackageRemoved(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    return-void

    :pswitch_c
    iget-object v0, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterHandler;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->-$$Nest$mhandleActionPackageAdded(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
