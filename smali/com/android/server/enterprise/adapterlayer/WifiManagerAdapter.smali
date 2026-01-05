.class public final Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field public static mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public static mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static connect(I)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setConnectionAttemptInfo(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to connect to network "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "WifiManagerAdapter"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getConfiguredNetworks()Ljava/util/List;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConfiguredNetworks - failed to get networks "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "WifiManagerAdapter"

    invoke-static {v0, v1, v2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static retrieveWifiManagerObjectWithAttributionSource(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/wifi/WifiManager;
    .locals 1

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_0

    new-instance p0, Landroid/content/AttributionSource$Builder;

    invoke-direct {p0, p2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object p0

    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    const-class p2, Landroid/permission/PermissionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/permission/PermissionManager;

    invoke-virtual {p1, p0}, Landroid/permission/PermissionManager;->registerAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object p0

    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/ContextParams$Builder;

    invoke-direct {p2}, Landroid/content/ContextParams$Builder;-><init>()V

    invoke-virtual {p2, p0}, Landroid/content/ContextParams$Builder;->setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/ContextParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContextParams$Builder;->build()Landroid/content/ContextParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->createContext(Landroid/content/ContextParams;)Landroid/content/Context;

    move-result-object p0

    :cond_0
    const-class p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public static save(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->retrieveWifiManagerObjectWithAttributionSource(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/wifi/WifiManager;

    move-result-object p1

    iget p2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "save - "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "WifiManagerAdapter"

    invoke-static {p0, p1, p2}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v0
.end method
