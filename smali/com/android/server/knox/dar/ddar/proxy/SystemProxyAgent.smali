.class public final Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
.super Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;


# direct methods
.method public static declared-synchronized getInstance()Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
    .locals 2

    const-class v0, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;-><init>()V

    sput-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/dar/ddar/proxy/SystemProxyAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string/jumbo v0, "relay to Service : "

    invoke-static {v0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "SystemProxyAgent"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0x25e9423d

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    const v2, 0x2897d36c

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v0, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string/jumbo v2, "dual_dar_response"

    const-string/jumbo v5, "SECURE_CLIENT_ID"

    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    :try_start_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_4
    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/KnoxProxyAgent;->establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :goto_2
    const-string/jumbo p1, "RemoteException: name:"

    const-string p4, " command:"

    invoke-static {p1, p2, p4, p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
