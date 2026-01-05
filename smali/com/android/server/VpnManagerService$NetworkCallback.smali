.class public final Lcom/android/server/VpnManagerService$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mLinkProperties:Landroid/net/LinkProperties;

.field public mNetwork:Landroid/net/Network;


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    sget v0, Lcom/android/server/VpnManagerService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onAvailable being called for netId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VpnManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    sget v0, Lcom/android/server/VpnManagerService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLinkPropertiesChanged being called for netId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VpnManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    iput-object p2, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 2

    sget v0, Lcom/android/server/VpnManagerService;->$r8$clinit:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLost being called for netId "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "VpnManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mNetwork:Landroid/net/Network;

    iput-object p1, p0, Lcom/android/server/VpnManagerService$NetworkCallback;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method
