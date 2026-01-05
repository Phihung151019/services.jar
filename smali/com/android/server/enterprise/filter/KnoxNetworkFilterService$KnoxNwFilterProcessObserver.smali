.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

.field public final vendorList:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final addUidToVendorList(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 7

    iget-object p1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->vendorList:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileInfomap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;

    iget v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mPackageUid:I

    if-ne v1, p2, :cond_0

    iget-object p1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterProfileInfo;->mProfileName:Ljava/lang/String;

    const-string/jumbo v0, "knoxNwFilter-KnoxNetworkFilterService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vendor uid\'s "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " process is killed for profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService$KnoxNwFilterProcessObserver;->this$0:Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultDnsProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v2, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultUdpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    iget-object v4, v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->mDefaultTcpProxyInterfaceList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v3, p0, v4, v5, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, p0, v4, v5, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    const/16 v5, 0x11

    invoke-interface {v3, p0, v4, v5, v6}, Lcom/android/internal/net/IOemNetd;->enablePortInfoEntries(IIIZ)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/internal/net/IOemNetd;->clearNetworkFilterEntries(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->unregisterSystemDefaultNetworkCallback(I)V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    invoke-virtual {p0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "profileName"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9

    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterService;->sendMessageToHandler(ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_3
    :goto_3
    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
