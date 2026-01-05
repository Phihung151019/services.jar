.class public final Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;
.super Landroid/net/ip/IIpClientCallbacks$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCb:Landroid/net/ip/IpClientCallbacks;


# direct methods
.method public constructor <init>(Landroid/net/ip/IpClientCallbacks;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;-><init>()V

    iput-object p1, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "9dd581b4741329188b6e58107600f38a3eaa9be1"

    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    const/16 p0, 0x17

    return p0
.end method

.method public final installPacketFilter([B)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->installPacketFilter([B)V

    return-void
.end method

.method public final onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    return-void
.end method

.method public final onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public final onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    return-void
.end method

.method public final onPostDhcpAction()V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onPostDhcpAction()V

    return-void
.end method

.method public final onPreDhcpAction()V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onPreDhcpAction()V

    return-void
.end method

.method public final onPreconnectionStart(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V

    return-void
.end method

.method public final onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public final onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v0}, Landroid/net/ip/IpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public final onQuit()V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->onQuit()V

    return-void
.end method

.method public final onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V

    return-void
.end method

.method public final onReachabilityLost(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    return-void
.end method

.method public final setFallbackMulticastFilter(Z)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setFallbackMulticastFilter(Z)V

    return-void
.end method

.method public final setMaxDtimMultiplier(I)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setMaxDtimMultiplier(I)V

    return-void
.end method

.method public final setNeighborDiscoveryOffload(Z)V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0, p1}, Landroid/net/ip/IpClientCallbacks;->setNeighborDiscoveryOffload(Z)V

    return-void
.end method

.method public final startReadPacketFilter()V
    .locals 0

    iget-object p0, p0, Landroid/net/ip/IpClientUtil$IpClientCallbacksProxy;->mCb:Landroid/net/ip/IpClientCallbacks;

    invoke-virtual {p0}, Landroid/net/ip/IpClientCallbacks;->startReadPacketFilter()V

    return-void
.end method
