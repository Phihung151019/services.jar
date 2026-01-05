.class public Lcom/android/net/module/util/NetdUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final TAG:Ljava/lang/String; = "NetdUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoutesToNetwork(Landroid/net/INetd;ILjava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {p0, v1, p1, v0}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    goto :goto_0

    :cond_1
    sget-object p3, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    const-string/jumbo v2, "fe80::/64"

    invoke-direct {v1, v2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p2, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, p3, p1, v0}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    return-void
.end method

.method public static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 p0, 0x7

    if-eq v0, p0, :cond_1

    const/16 p0, 0x9

    if-eq v0, p0, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo p0, "throw"

    return-object p0

    :cond_1
    const-string/jumbo p0, "unreachable"

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method public static getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static hasFlag(Landroid/net/InterfaceConfigurationParcel;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .locals 5

    const-string/jumbo v0, "Unsupported modify operation:"

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcom/android/net/module/util/NetdUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {p0, p2, v1, v2, p3}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-interface {p0, p2, v1, v2, p3}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static networkAddInterface(Landroid/net/INetd;ILjava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p3, :cond_1

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EBUSY:I

    if-ne v2, v3, :cond_0

    if-ge v0, p3, :cond_0

    int-to-long v1, p4

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/net/module/util/NetdUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Retry Netd#networkAddInterface failure: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p2}, Lcom/android/net/module/util/NetdUtils;->validateFlag(Ljava/lang/String;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid InterfaceConfigurationParcel"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static removeRoutesFromNetwork(Landroid/net/INetd;ILjava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    :try_start_0
    sget-object v2, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {p0, v2, p1, v1}, Lcom/android/net/module/util/NetdUtils;->modifyRoute(Landroid/net/INetd;Lcom/android/net/module/util/NetdUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V
    .locals 0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static setInterfaceDown(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    iget-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string/jumbo v1, "up"

    const-string/jumbo v2, "down"

    invoke-static {v0, v1, v2}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    return-void
.end method

.method public static setInterfaceUp(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->getInterfaceConfigParcel(Landroid/net/INetd;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object p1

    iget-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    const-string/jumbo v1, "down"

    const-string/jumbo v2, "up"

    invoke-static {v0, v1, v2}, Lcom/android/net/module/util/NetdUtils;->removeAndAddFlags([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/net/module/util/NetdUtils;->setInterfaceConfig(Landroid/net/INetd;Landroid/net/InterfaceConfigurationParcel;)V

    return-void
.end method

.method public static tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    new-instance v0, Landroid/net/TetherConfigParcel;

    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    return-void
.end method

.method public static toRouteInfoParcel(Landroid/net/RouteInfo;)Landroid/net/RouteInfoParcel;
    .locals 3

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "throw"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "unreachable"

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_0
    new-instance v0, Landroid/net/RouteInfoParcel;

    invoke-direct {v0}, Landroid/net/RouteInfoParcel;-><init>()V

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/RouteInfoParcel;->ifName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/RouteInfoParcel;->destination:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/RouteInfoParcel;->nextHop:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getMtu()I

    move-result p0

    iput p0, v0, Landroid/net/RouteInfoParcel;->mtu:I

    return-object v0
.end method

.method public static validateFlag(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "flag contains space: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
