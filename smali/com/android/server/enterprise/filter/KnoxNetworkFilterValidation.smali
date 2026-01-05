.class public final Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mKnoxNwFilterApiValidation:Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;


# instance fields
.field public mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;


# virtual methods
.method public final getInstanceValidation(I)I
    .locals 4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppRegistered(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isAppAuthorized(ILjava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    const-string/jumbo v3, "knoxNwFilter-KnoxNetworkFilterValidation"

    if-eqz p0, :cond_0

    const-string/jumbo p0, "getInstanceValidation: isAppAuthorized returns true for "

    invoke-static {p1, p0, v1, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo p0, "getInstanceValidation: isAppRegistered returns true for "

    invoke-static {p1, p0, v1, v3}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string/jumbo p0, "getInstanceValidation: isAppRegistered/isAppAuthorized returns false for "

    invoke-static {p1, p0, v1, v3}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x5

    return p0
.end method

.method public final prepareFilteringValidation(ILjava/lang/String;)I
    .locals 9

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x1000

    invoke-interface {v5, p2, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p2, :cond_1

    array-length v5, p2

    if-lez v5, :cond_1

    array-length v5, p2

    move v6, v4

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p2, v6

    const-string/jumbo v8, "com.samsung.android.knox.permission.KNOX_NETWORK_FILTER_SERVICE_PROVIDER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move p2, v4

    :goto_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move p2, v4

    :goto_3
    if-eqz p2, :cond_3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isUserIdRegistered(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, -0x10

    return p0

    :cond_2
    return v4

    :cond_3
    :try_start_3
    const-string/jumbo p0, "knoxNwFilter-KnoxNetworkFilterValidation"

    const-string/jumbo p1, "prepare filtering failed since permission not included in manifest"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "manifest permission not present"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final registerListenersValidation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v0

    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq p0, v1, :cond_1

    const/16 p0, -0xc

    return p0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "profile mismatch occurred between: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterValidation"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x6

    return p0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, -0x3

    return p0

    :cond_4
    return v0

    :cond_5
    const/4 p0, -0x2

    return p0

    :cond_6
    :goto_0
    const/4 p0, -0x7

    return p0

    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final setConfigValidation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq p0, v1, :cond_1

    const/16 p0, -0xc

    return p0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfilebyUserId(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, -0x6

    return p0

    :cond_5
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p0, -0x3

    return p0

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    const/4 p0, -0x2

    return p0

    :cond_9
    :goto_3
    const/4 p0, -0x7

    return p0

    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final startValidation(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->getInstanceValidation(I)I

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getVendorUidByProfile(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-eq p0, v1, :cond_1

    const/16 p0, -0xc

    return p0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getProfileListByVendor(I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_2
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p0, -0x6

    return p0

    :cond_3
    const/4 v0, -0x2

    :cond_4
    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->retrieveListenersFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "start API failed for profile "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since listener config is not set"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "knoxNwFilter-KnoxNetworkFilterValidation"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x8

    return p0

    :cond_6
    return v0

    :cond_7
    :goto_0
    const/4 p0, -0x7

    return p0

    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public final unregisterApplicationValidation(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 8

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterValidation;->mKnoxNwFilterHelper:Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;

    iget-object v1, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "pkgName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "adminUid"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "NwFilterMgr"

    invoke-virtual {v1, v7, v3, v4, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, -0x1

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-ne v1, v4, :cond_2

    const/4 p0, -0x2

    return p0

    :cond_2
    if-eq v1, p1, :cond_3

    const/4 p0, -0x7

    return p0

    :cond_3
    invoke-static {v0, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->isPackageInstalled(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->getSignature(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterHelper;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "pkgSign"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v7, v0, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 p0, -0x3

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, -0x6

    return p0

    :cond_7
    :goto_2
    const/16 p0, -0xa

    return p0
.end method
