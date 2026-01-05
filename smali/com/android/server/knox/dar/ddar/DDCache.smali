.class public final Lcom/android/server/knox/dar/ddar/DDCache;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static volatile _instance:Lcom/android/server/knox/dar/ddar/DDCache;


# instance fields
.field public semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;


# direct methods
.method public static enforceCallingUser(I)V
    .locals 2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x1482

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user. callingUid: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/knox/dar/ddar/DDCache;
    .locals 2

    const-class v0, Lcom/android/server/knox/dar/ddar/DDCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/knox/dar/ddar/DDCache;

    invoke-direct {v1}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    sput-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/dar/ddar/DDCache;->_instance:Lcom/android/server/knox/dar/ddar/DDCache;
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
.method public final get(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DUALDAR_User_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ISemPersonaManager;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DDCache"

    const-string/jumbo p2, "get value failed"

    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    if-nez v0, :cond_0

    :try_start_0
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ISemPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/DDCache;->semPersonaManager:Lcom/samsung/android/knox/ISemPersonaManager;

    return-object p0
.end method

.method public final onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "onMessage() "

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "DDCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, -0xd9160e7

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v4, :cond_2

    const v4, 0xac391ee

    if-eq v2, v4, :cond_1

    const v4, 0x67175262

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "SET_DATA_CMD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v2, "GET_DATA_CMD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move v3, v6

    goto :goto_1

    :cond_2
    const-string v2, "DELETE_DATA_CMD"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const-string p2, "DUAL_DAR_VALUE"

    const-string/jumbo v2, "dual_dar_response"

    const-string v4, "DUAL_DAR_KEY"

    const-string v7, "DUAL_DAR_USER_ID"

    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_4

    return-object v0

    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDCache;->enforceCallingUser(I)V

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/knox/dar/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_6
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDCache;->enforceCallingUser(I)V

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/knox/dar/ddar/DDCache;->set(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public final set(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getPersonaService()Lcom/samsung/android/knox/ISemPersonaManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DUALDAR_User_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/knox/ISemPersonaManager;->updatePersonaCache(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DDCache"

    const-string/jumbo p2, "set value failed"

    invoke-static {p1, p2, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
