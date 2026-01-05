.class public final Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.super Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mUcseService:Lcom/samsung/android/knox/ucm/core/IUcmService;

.field public static sContext:Landroid/content/Context;

.field public static final systemPlugin:Ljava/util/List;


# instance fields
.field public final activePluginsCache:Ljava/util/HashMap;

.field public final adminIds:Ljava/util/List;

.field public final exemptedAppsCache:Ljava/util/HashMap;

.field public final expiredAdmins:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mExistCert:Z

.field public mExistWhitelist:Z

.field public mIsSystemReceiverRegistered:Z

.field public mKgm:Landroid/app/KeyguardManager;

.field public final mPackageRemovedReceiver:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

.field public final mSystemReceiver:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

.field public final mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

.field public final mUcmServiceVosTempHelper:Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;

.field public mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

.field public final whitelistedAppsCache:Ljava/util/HashMap;


# direct methods
.method public static bridge synthetic -$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetActivePlugin(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getActivePlugin()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mgetAllAdmins(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "adminUid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "UniversalCredentialInfoTable"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/ContentValues;

    const-string/jumbo v5, "UniversalCredentialManagerService"

    if-nez v4, :cond_1

    const-string/jumbo v4, "value is null, continue..."

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "parsing error, continue..."

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static -$$Nest$mgetAllExemptedApps(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;
    .locals 3

    const-string/jumbo v0, "appUid"

    const-string/jumbo v1, "appPackage"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "UniversalCredentialExemptTable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mgetAllUsers(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "userId"

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "getAllUsers() is called..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "UniversalCredentialCertificateTable"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    move v8, v7

    :cond_0
    :goto_0
    const-string/jumbo v9, "parsing error, continue..."

    const-string/jumbo v10, "value is null, continue..."

    if-ge v8, v5, :cond_3

    :try_start_1
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    check-cast v11, Landroid/content/ContentValues;

    if-nez v11, :cond_1

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "UniversalCredentialWhiteListTable"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v7

    :cond_4
    :goto_1
    if-ge v8, v5, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    check-cast v11, Landroid/content/ContentValues;

    if-nez v11, :cond_5

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_6

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v7

    :cond_8
    :goto_2
    if-ge v8, v5, :cond_b

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    check-cast v11, Landroid/content/ContentValues;

    if-nez v11, :cond_9

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    invoke-virtual {v11, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    if-nez v11, :cond_a

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialExemptTable"

    invoke-virtual {p0, v4, v6, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_c
    :goto_3
    if-ge v7, v3, :cond_f

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v7, 0x1

    check-cast v4, Landroid/content/ContentValues;

    if-nez v4, :cond_d

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_d
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_e

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_e
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "The exception occurs "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_f
    return-object v2
.end method

.method public static -$$Nest$mgetAllWhitelistedApps(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;
    .locals 3

    const-string/jumbo v0, "appUid"

    const-string/jumbo v1, "appPackage"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "UniversalCredentialWhiteListTable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static -$$Nest$mnotifyAdminUninstall(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "storagePackageName"

    const-string/jumbo v1, "storageName"

    const-string/jumbo v2, "userId"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyAdminUninstall -> adminUid-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UniversalCredentialManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "adminUid"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "UniversalCredentialInfoTable"

    invoke-virtual {v7, v8, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_0

    const-string/jumbo v7, "value is null, continue..."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyAdminUninstall - userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", csName-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", csPackage-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v10}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iput-object v9, v10, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iput-object v7, v10, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v10, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyToPlugin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)V

    goto :goto_0

    :cond_2
    :goto_1
    const-string/jumbo v7, "invalid parameters, continue..."

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static -$$Nest$mnotifyPluginIsUninstalled(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v6, "UniversalCredentialManagerService"

    if-nez v0, :cond_0

    const-string/jumbo v0, "No admin found related to package : "

    invoke-static {v0, v2, v6}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v7, :cond_6

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v0, 0x1

    check-cast v9, Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "notifyPluginIsUninstalled to "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "cannot find admin package name of uid : "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v10

    goto :goto_0

    :cond_2
    array-length v12, v11

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_1

    aget-object v0, v11, v13

    if-nez v0, :cond_3

    const-string/jumbo v0, "adminPkg is null, so continue..."

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    const-string/jumbo v14, "Sending event update to package "

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v15, "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "event_id"

    const/4 v8, 0x1

    invoke-virtual {v0, v15, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "package_name"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v0, v4, v2, v8}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_4

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v8, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v14, v8, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-interface {v0, v3, v2, v8}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-direct {v8, v15}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v14, v8, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v0, "notifyPluginIsUninstalled done"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "admin does not have proper UCM permission"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "The exception occurs "

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v6}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public static -$$Nest$mperformAdminCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    const-string/jumbo v1, "UniversalCredentialCertificateTable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "adminUid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v4, "performAdminCleanup Clean certificate status-"

    const-string/jumbo v5, "UniversalCredentialManagerService"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string/jumbo v4, "performAdminCleanup WhiteList APP status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string/jumbo v4, "performAdminCleanup Default Install status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialInfoTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string/jumbo v4, "performAdminCleanup Certificate info status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialExemptTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const-string/jumbo v4, "performAdminCleanup - Exempt apps status- "

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const-string/jumbo v4, "performAdminCleanup - Enforce Lock Type status- "

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_6
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialEnabledLockTypeTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const-string/jumbo v4, "performAdminCleanup - Enable Lock Type status- "

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_7
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialCACertificateTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "performAdminCleanup - CA Cert status- "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return-void
.end method

.method public static -$$Nest$mperformStorageCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    const-string/jumbo v1, "UniversalCredentialCertificateTable"

    const-string/jumbo v2, "storagePackageName"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v4, "performStorageCleanup Clean certificate status-"

    const-string/jumbo v5, "UniversalCredentialManagerService"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string/jumbo v4, "performStorageCleanup WhiteList APP status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string/jumbo v4, "performStorageCleanup Default Install status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialInfoTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string/jumbo v4, "performStorageCleanup Certificate info status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialExemptTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialEnabledLockTypeTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return-void
.end method

.method public static -$$Nest$mperformUserCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    const-string/jumbo v1, "UniversalCredentialCertificateTable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v2, "userId"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x0

    :goto_0
    const-string/jumbo v4, "performUserCleanup Clean certificate status-"

    const-string/jumbo v5, "UniversalCredentialManagerService"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string/jumbo v4, "performUserCleanup WhiteList APP status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string/jumbo v4, "performUserCleanup Default Install status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialInfoTable"

    invoke-virtual {v4, v6, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const-string/jumbo v4, "performUserCleanup Certificate info status-"

    invoke-static {v4, v5, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialExemptTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialCACertificateTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialEnabledLockTypeTable"

    invoke-virtual {v3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessAdminLicenseExpiry(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->processAdminLicenseExpiry(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "com.samsung.ucs.agent.ese"

    const-string/jumbo v1, "com.sec.smartcard.manager"

    const-string/jumbo v2, "com.samsung.ucs.agent.boot"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->systemPlugin:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcseService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/configurator/IUniversalCredentialManager$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mKgm:Landroid/app/KeyguardManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mIsSystemReceiverRegistered:Z

    new-instance v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mSystemReceiver:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    new-instance v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPackageRemovedReceiver:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    sput-object p1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->sContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    new-instance v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput v0, v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v2, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->random:Ljava/util/Random;

    iput-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getActivePlugin()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->registerReceiver()V

    :cond_0
    new-instance v3, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    const/4 v0, 0x2

    invoke-direct {v3, p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;-><init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.UCM_PLUGIN_STATUS"

    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v4

    const/4 v7, 0x2

    const-string/jumbo v5, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v0, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string/jumbo v3, "ucm_ca_cert"

    invoke-direct {p1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/sec_efs/ucm_ca_cert"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    const-string/jumbo v4, "UniversalCredentialManagerService"

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error!!! Cannot create root directory: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Error!!! Cannot create root ODE CA cert directory: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo p1, "persist.security.ucmcrypto"

    const-string/jumbo v0, "false"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "UniversalCredentialWhiteListTable"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    const-string/jumbo p1, "UniversalCredentialCertificateTable"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    :cond_3
    new-instance p1, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;

    invoke-direct {p1, v2}, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcmServiceVosTempHelper:Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;

    return-void
.end method

.method public static checkCallerPermissionFor(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "checkCallerPermissionFor is called for method-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v2, v3, v0, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Security Exception Occurred while pid["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] with uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] trying to access methodName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "] in [UniversalCredentialManagerService] service"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkKnoxCorePermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/16 v1, 0x1482

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checkKnoxCorePermission : caller does not have valid UCM permission : callerId - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UniversalCredentialManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "callerId is not proper"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 6

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, "Signature s1 is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "Signature s2 is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, p0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "Signature match"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    const-string/jumbo p0, "Signature doesn\'t match"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static convertSignatureToString([Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    :try_start_0
    array-length v0, p0

    if-lez v0, :cond_1

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The exception occurs "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "UniversalCredentialManagerService"

    if-eqz p0, :cond_1

    array-length v2, p0

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "convertStringToSignature providerList sigStrings:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p0

    invoke-static {v2, v3, v1}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length v2, p0

    new-array v2, v2, [Landroid/content/pm/Signature;

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    aget-object v4, p0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    :try_start_0
    new-instance v4, Landroid/content/pm/Signature;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "The exception occurs "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :cond_2
    if-eqz v2, :cond_3

    array-length p0, v2

    if-lez p0, :cond_3

    const-string/jumbo p0, "convertStringToSignature SUCCESS"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    return-object v0
.end method

.method public static getKAData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "API:"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "KNOX_UCM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;
    .locals 1

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p0

    const-string/jumbo v0, "csPackageName"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getReturnvalue(Landroid/os/Bundle;)I
    .locals 3

    const-string/jumbo v0, "errorresponse"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "intresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getStatusErrorBundle(I)Landroid/os/Bundle;
    .locals 1

    const-string/jumbo v0, "status_code"

    invoke-static {p0, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcseService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.ucs.ucsservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcseService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcseService:Lcom/samsung/android/knox/ucm/core/IUcmService;
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

.method public static getValidString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The exception occurs "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {p0, v1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method public static installCertificateInProvider(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IIZZ)I
    .locals 7

    const-string/jumbo v0, "installCertificateInProvider is called for userId-"

    const-string v1, " and adminId-"

    const-string v2, ", systemCalling-"

    invoke-static {p5, p6, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {v2, v0, p7}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v0, "installCertificateInProvider setting extra values userId-"

    invoke-static {p5, p6, v0, v1, v2}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "user_id"

    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p5, "admin_id"

    invoke-virtual {p4, p5, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p5, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p5, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "The exception occurs "

    const-string/jumbo p5, "errorresponse"

    const-string/jumbo p6, "booleanresponse"

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p7, :cond_5

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p7

    if-nez p7, :cond_5

    goto :goto_0

    :catch_0
    move-exception p7

    move p8, v0

    goto/16 :goto_6

    :cond_1
    :goto_0
    const-string p7, "Inside systemCalling block..."

    invoke-static {v2, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const-string p7, "Calling installCertificate in UCS"

    invoke-static {v2, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p7, "renew"

    invoke-virtual {p4, p7, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p7, "private_key"

    invoke-virtual {p4, p7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p7

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p8

    if-eqz p8, :cond_3

    invoke-interface {p8, p0, p7, p1, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p7

    if-eqz p7, :cond_2

    invoke-virtual {p7, p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move p8, v0

    :goto_1
    if-eqz p7, :cond_b

    :try_start_1
    invoke-virtual {p7, p5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception p7

    goto/16 :goto_6

    :cond_3
    :goto_2
    move p8, v0

    goto/16 :goto_7

    :cond_4
    :try_start_2
    const-string p7, "Certificate is null..."

    invoke-static {v2, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo p7, "PKCS12"

    invoke-static {p7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p7

    new-instance p8, Ljava/io/ByteArrayInputStream;

    invoke-direct {p8, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p7, p8, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {p8}, Ljava/io/InputStream;->close()V

    invoke-virtual {p7}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p8

    :cond_6
    invoke-interface {p8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p7, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    instance-of v5, v4, Ljava/security/PrivateKey;

    if-eqz v5, :cond_6

    invoke-virtual {p7, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p7

    if-eqz p7, :cond_a

    array-length p8, p7

    if-nez p8, :cond_7

    goto :goto_5

    :cond_7
    new-instance p8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v3, p7

    move v5, v0

    :goto_3
    if-ge v5, v3, :cond_8

    aget-object v6, p7, v5

    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v6

    invoke-virtual {p8, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p7

    const-string/jumbo p8, "algorithm"

    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, p8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p8

    if-eqz p8, :cond_3

    invoke-interface {v4}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-interface {p8, p0, v3, p7, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->installCertificate(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p7

    if-eqz p7, :cond_9

    invoke-virtual {p7, p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_9
    move p8, v0

    :goto_4
    if-eqz p7, :cond_b

    :try_start_3
    invoke-virtual {p7, p5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :cond_a
    :goto_5
    :try_start_4
    const-string/jumbo p7, "getCertificateChain empty"

    invoke-static {v2, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return v1

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p7, v3, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    :goto_7
    move p7, v1

    :goto_8
    if-nez p8, :cond_e

    if-ne p7, v1, :cond_e

    :try_start_5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-interface {v3, p0, p1, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, p6, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    move p8, p1

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_a

    :cond_c
    move p8, v0

    :goto_9
    if-eqz p0, :cond_d

    invoke-virtual {p0, p5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_d
    move p7, v1

    goto :goto_b

    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_e
    :goto_b
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "status -"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " and errorCode-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p8, :cond_f

    goto :goto_c

    :cond_f
    move v0, p7

    :goto_c
    return v0
.end method

.method public static isSignatureInvalid(Lcom/samsung/android/knox/AppIdentity;Landroid/content/pm/PackageInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p0

    const/4 v0, 0x1

    const-string/jumbo v1, "UniversalCredentialManagerService"

    if-nez p0, :cond_0

    const-string/jumbo p0, "UniversalCredentialManagerPolicy passed String signature is invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p1, p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "Package is installed, and signature doesn\'t match. So return falure"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidAccessType(I)Z
    .locals 3

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6b

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isValidAccessType type-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and status-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isValidAuthType(I)Z
    .locals 3

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x69

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isValidAuthType type-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and status-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "UniversalCredentialManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isValidExemptType(I)Z
    .locals 3

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isValidExemptType type-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and status-"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 4

    const-string v0, "Input parameter is not proper"

    const-string/jumbo v1, "UniversalCredentialManagerService"

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne v3, v2, :cond_0

    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p0, v2, :cond_0

    return-void

    :cond_0
    const-string p0, "Invalid contextInfo"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string/jumbo p0, "contextInfo is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string/jumbo v0, "The exception occurs "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "validateSignature : packageName-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x40

    invoke-interface {v5, p1, v6, v7, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object p1

    if-nez p1, :cond_0

    const-string/jumbo p2, "validateSignature passed String signature is invalid"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "Package is installed, and signature matched..."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_3

    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method


# virtual methods
.method public final addCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 4

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "userId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v2, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    invoke-virtual {v2, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const-string/jumbo p1, "storageManufacture"

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialEnabledLockTypeTable"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p1, "addCredentialStorageLockType retcode-"

    const-string/jumbo p2, "UniversalCredentialManagerService"

    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final addOrUpdateDefaultInstallStorage(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 9

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "UniversalCredentialDefaultInstallTable"

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, "adminUid"

    const-string/jumbo v4, "addOrUpdateDefaultInstallStorage oldResult-"

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v1, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    iget-object p3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    iget-object p3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string/jumbo p1, "storageManufacture"

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string/jumbo p0, "addOrUpdateDefaultInstallStorage retcode-"

    invoke-static {p0, v0, v5}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v5
.end method

.method public final addOrUpdateEnforcedCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 9

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "UniversalCredentialEnforcedLockTypeTable"

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, "adminUid"

    const-string/jumbo v4, "addOrUpdateEnforcedCredentialStorageLockType oldResult - "

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return v5

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v1, v8, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    iget-object p3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    iget-object p3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string/jumbo p1, "storageManufacture"

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string/jumbo p0, "addOrUpdateEnforcedCredentialStorageLockType retcode-"

    invoke-static {p0, v0, v5}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v5
.end method

.method public final addOrUpdateSecureStorageConfig(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)Z
    .locals 8

    const-string/jumbo v0, "addOrUpdateSecureStorageConfig - adding new plugin in cache pluginUid-"

    const-string/jumbo v1, "storagePackageName"

    const-string/jumbo v2, "storageName"

    const-string/jumbo v3, "userId"

    const-string/jumbo v4, "adminUid"

    const/4 v5, 0x0

    const-string/jumbo v6, "UniversalCredentialManagerService"

    const-string/jumbo v7, "UniversalCredentialInfoTable"

    if-nez p4, :cond_0

    iget-object p4, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v0, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_6

    const-string/jumbo p4, "addOrUpdateSecureStorageConfig - Removing Credential Storage for Admin"

    invoke-static {v6, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v4, v3, v2, v1}, [Ljava/lang/String;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v3, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v7, p4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyToPlugin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)V

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performCredentialStorageCleanup(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :cond_0
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p4, v4, p2, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p2

    const-string/jumbo v1, "appUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v7, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v2, "storageManufacture"

    if-lez v1, :cond_2

    :try_start_2
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v7, p1, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p1

    goto :goto_0

    :cond_2
    iget-object v1, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {p4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v7, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p4

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move p1, p4

    :goto_0
    iget-object p4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",pkg-"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v6, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move v5, p1

    :catch_0
    :cond_6
    :goto_1
    const-string/jumbo p0, "addOrUpdateSecureStorageConfig retcode-"

    invoke-static {p0, v6, v5}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v5
.end method

.method public final addPackagesToExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 11

    const-string/jumbo v1, "The exception occurs "

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v0, "addPackagesToExemptList is called...."

    invoke-static {p1, p2, v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p4, :cond_0

    goto/16 :goto_5

    :cond_0
    :try_start_0
    const-string/jumbo v0, "addPackagesToExemptList"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    const-string/jumbo v3, "authType"

    const/16 v4, 0x6a

    if-ne p3, v4, :cond_1

    const-string v4, "AUTH"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "OTHER"

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v9, v0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_3
    :try_start_3
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_4

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_4
    :try_start_4
    invoke-static {p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidExemptType(I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p0, "addPackagesToExemptList - Invalid Exempt Type..."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x15

    return p0

    :cond_5
    move-object v5, p0

    move-object v6, p2

    move v10, p3

    move-object v7, p4

    :try_start_5
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->insertOrUpdateExemptPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_3
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_6
    :goto_5
    const/16 p0, -0xb

    return p0
.end method

.method public final addPackagesToWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 9

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "addPackagesToWhiteList is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v2, 0x6b

    invoke-virtual {p0, v4, v1, p2, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "addPackagesToWhiteList caller is valid delegated app..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :goto_0
    move-object v2, p0

    move v8, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addPackagesToWhiteListMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public final addPackagesToWhiteListInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 8

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "addPackagesToWhiteListInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "addPackagesToWhiteListInternal"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcmServiceVosTempHelper:Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->updateUid(I)I

    move-result v2

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addPackagesToWhiteListMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public final addPackagesToWhiteListMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;Z)I
    .locals 13

    move-object/from16 v7, p3

    move-object/from16 v2, p5

    const-string/jumbo v3, "addPackagesToWhiteListMain alias-"

    const-string/jumbo v8, "UniversalCredentialManagerService"

    const-string/jumbo v0, "addPackagesToWhiteListMain is called...."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "addPackagesToWhiteList"

    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v8}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move v5, p2

    invoke-static {v0, p2, v4}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->updateUserIdForWpcSystemAndVpnProcess(Landroid/content/Context;II)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, -0x1

    :try_start_1
    invoke-static {v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p4, :cond_c

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v5, v4, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x12

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_1
    :try_start_2
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Plugin is not active"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xd

    return v0

    :cond_2
    :try_start_3
    iget-object v0, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v0, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v12, 0x1

    if-eq v12, v0, :cond_3

    if-nez p6, :cond_3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xc

    return v0

    :cond_3
    :try_start_4
    const-string/jumbo v0, "access_type"

    invoke-virtual {v2, v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidAccessType(I)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xf

    return v0

    :cond_4
    const/16 v4, 0x68

    if-ne v0, v4, :cond_7

    :try_start_5
    const-string/jumbo v4, "alias"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x10

    return v0

    :cond_5
    :try_start_6
    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move v3, v5

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object v1, p0

    move-object v6, v2

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v12, v4, :cond_6

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xe

    return v0

    :cond_6
    move-object v2, v6

    goto :goto_1

    :cond_7
    move v3, v5

    const/4 v2, 0x0

    :goto_1
    if-eqz p6, :cond_b

    const/16 v4, 0x67

    if-ne v0, v4, :cond_8

    :try_start_7
    const-string/jumbo v0, "addPackagesToWhiteListMain Delegated app can\'t WhiteList storage.. error"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x1e

    return v0

    :cond_8
    const/16 v4, 0x6b

    const/16 v5, -0x1d

    if-ne v0, v4, :cond_9

    :try_start_8
    const-string/jumbo v0, "addPackagesToWhiteListMain Delegated app can\'t further delegate.. error"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_9
    :try_start_9
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/AppIdentity;

    if-eqz p6, :cond_a

    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPackageDelegated(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string/jumbo v0, "addPackagesToWhiteListMain ..app is already delegated by other app.. error"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_b
    move-object v1, v7

    move-object v7, v2

    move-object v2, v1

    move-object v1, p0

    move v4, p1

    move v6, v0

    move v5, v3

    move-object/from16 v3, p4

    :try_start_a
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->insertOrUpdateWhiteListPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IIILjava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_c
    :goto_2
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xb

    return v0

    :goto_3
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The exception occurs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v11

    :goto_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final changeKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "changeKeyguardPin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "changeKeyguardPin"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 2

    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    const/16 p0, -0xc

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catch_0
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 1

    const-string/jumbo v0, "UniversalCredentialManagerService"

    if-eqz p3, :cond_0

    const-string p3, "Caller Must be Active Admin"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xd

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCountFromEdmDB(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "UniversalCredentialCertificateTable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Input param is undefined flag, can\'t update flag"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The exception occurs "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v2
.end method

.method public final checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iput-object p3, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iput-object p4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAliasesInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length p1, p0

    move p2, v0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p0, p2

    invoke-virtual {p3, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p0, "UniversalCredentialManagerService"

    const-string/jumbo p1, "checkCredentialStorageAliasForAdmin Alias exist..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method public final checkCredentialStorageEnabledForLockTypebyAdmin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 3

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const-string/jumbo v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo p1, "userId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v0, :cond_1

    const-string/jumbo p1, "storageName"

    invoke-virtual {v1, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo p1, "storagePackageName"

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialEnabledLockTypeTable"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final checkCredentialStorageLockTypeEnforcedForAdmin(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_0

    const-string/jumbo p1, "storageName"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo p1, "storagePackageName"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final checkDefaultInstallCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_0

    const-string/jumbo p1, "storageName"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string/jumbo p1, "storagePackageName"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final checkDelegatorPermission(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z
    .locals 14

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    const-string/jumbo v2, "getDelegatorUid - Size-"

    const-string/jumbo v3, "The exception occurs "

    const/4 v4, 0x0

    const-string/jumbo v5, "UniversalCredentialManagerService"

    const-string/jumbo v6, "UniversalCredentialWhiteListTable"

    const-string/jumbo v7, "appPackage"

    const-string/jumbo v8, "accessType"

    const-string/jumbo v9, "userId"

    const-string/jumbo v10, "adminUid"

    const/4 v11, -0x1

    if-eqz v1, :cond_0

    :try_start_0
    const-string/jumbo v12, "storageName"

    const-string/jumbo v13, "storagePackageName"

    filled-new-array {v9, v12, v13, v8, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v12, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    filled-new-array {v8, v9, v12, v13, v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    filled-new-array {v9, v8, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9, v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v6, v7, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v6, v4

    :cond_1
    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_2

    const-string/jumbo v7, "value is null, continue..."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "parsing error, continue..."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getDelegatorUid adminId -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v7, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isAdminLicenseActive(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    :try_start_1
    const-string/jumbo v0, "getDelegatorUid delegator found.."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v11, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move v11, v7

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_4
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getDelegatorUid adminUid - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkDelegatorPermission delegatorUid - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    const-string v0, "Check if caller has some UCM permission..."

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const/4 v6, 0x1

    if-eqz v1, :cond_6

    :try_start_3
    iget-object v7, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v2, v11}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "  delegator has valid ESE permission... Processing further..."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_2
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "  delegator has valid other permission... Processing further..."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v2, v11}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v0, v11}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_8

    :cond_7
    const-string p0, "  delegator has valid permission... Processing further..."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return v6

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo p0, "checkDelegatorPermission delegator doesnt have valid permission..."

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public final clearWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    const-string/jumbo v8, "The exception occurs "

    const-string/jumbo v4, "clearWhiteList alias-"

    const-string/jumbo v9, "UniversalCredentialManagerService"

    const-string/jumbo v0, "clearWhiteList is called...."

    invoke-static {v2, v7, v9, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0xb

    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "clearWhiteList"

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v9}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x6b

    invoke-virtual {v1, v5, v0, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_1

    const-string/jumbo v2, "clearWhiteList caller is valid delegated app..."

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    move v0, v11

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v2, v0

    move v0, v10

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, -0x1

    :try_start_1
    iget-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v15, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v5, v15, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x12

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xd

    return v0

    :cond_3
    :try_start_3
    iget-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v15, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6, v15}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v11, v6, :cond_4

    if-nez v0, :cond_4

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xc

    return v0

    :cond_4
    :try_start_4
    const-string/jumbo v0, "access_type"

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidAccessType(I)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_5

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xf

    return v0

    :cond_5
    const/16 v6, 0x68

    if-ne v0, v6, :cond_8

    :try_start_5
    const-string/jumbo v6, "alias"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_6

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x10

    return v0

    :cond_6
    :try_start_6
    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move v3, v5

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v11, v4, :cond_7

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xe

    return v0

    :cond_7
    :goto_2
    move-object/from16 v1, p0

    move v4, v0

    move-object v5, v7

    goto :goto_3

    :cond_8
    move v3, v5

    const/4 v6, 0x0

    goto :goto_2

    :goto_3
    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->clearWhiteListPackages(IIILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z

    move-result v0

    if-ne v11, v0, :cond_9

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_9
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_6
    return v14

    :goto_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final clearWhiteListPackages(IIILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z
    .locals 10

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const/4 v2, 0x0

    if-nez p5, :cond_0

    const-string/jumbo p5, "clearWhiteListPackages access_type-"

    invoke-static {p3, p5, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p5, "storagePackageName"

    const-string/jumbo v3, "accessType"

    const-string/jumbo v4, "adminUid"

    const-string/jumbo v5, "userId"

    const-string/jumbo v6, "storageName"

    filled-new-array {v4, v5, v6, p5, v3}, [Ljava/lang/String;

    move-result-object p5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p4, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, v3, p4, p3}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, v0, p5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeWhiteListPackages access_type-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and alias-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "accessType"

    const-string/jumbo v9, "alias"

    const-string/jumbo v4, "adminUid"

    const-string/jumbo v5, "userId"

    const-string/jumbo v6, "storageName"

    const-string/jumbo v7, "storagePackageName"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, p5

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object p1

    :try_start_1
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, v0, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "clearWhiteListPackages retcode-"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return v2
.end method

.method public final configureCredentialStorageForODESettings(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 9

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "configureCredentialStorageForODESettings is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "configureCredentialStorageForODESettings"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    :try_start_1
    const-string/jumbo p0, "This API is only valid for User 0"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v6, 0x4

    if-eqz p2, :cond_4

    :try_start_2
    new-instance v7, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v8, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v7, :cond_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :cond_2
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_3
    :try_start_4
    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v7, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p1, 0x1

    if-eq p1, p0, :cond_5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_4
    :try_start_5
    new-instance p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string/jumbo v2, "reset"

    invoke-direct {p0, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v6

    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string/jumbo p1, "configureCredentialStorageForODESettings is called for plugin unmanaged..."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_6

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, v6, p3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->configureODESettings(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_7
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :goto_4
    return v5

    :goto_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;Z)I

    move-result p0

    return p0
.end method

.method public final configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;Z)I
    .locals 14

    move-object/from16 v2, p2

    const-string/jumbo v3, "The exception occurs "

    const-string/jumbo v4, "configureCredentialStoragePlugin - requestId -"

    const-string/jumbo v5, "UniversalCredentialManagerService"

    const-string/jumbo v0, "configureCredentialStoragePlugin is called...."

    invoke-static {p1, v2, v5, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "configureCredentialStoragePlugin"

    iget-object v6, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v5}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :cond_1
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v1, -0x1

    :try_start_1
    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v8, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v10, v8, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_3
    :try_start_3
    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v9, v10, v0, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x1

    if-eq v8, v0, :cond_4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v11, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v12, "com.samsung.ucs.agent.ese:eSE Credential Storage"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "com.samsung.ucs.agent.ese"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "Adding install flag for ESE applet"

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_5

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_5
    move-object/from16 v11, p3

    :goto_1
    const-string/jumbo v12, "installAppletUsingLCCM"

    invoke-virtual {v11, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v12, v11

    goto :goto_2

    :cond_6
    move-object/from16 v12, p3

    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getEnforcedCredentialStorageFromDb(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    const-string/jumbo v11, "configureCredentialStoragePlugin - pass to agent..."

    invoke-static {v5, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v2, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v11, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v11

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mRIdGenerator:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;

    iget v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    const/16 v13, 0xa

    if-le v2, v13, :cond_7

    iput v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    :cond_7
    iget v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->fraction:I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;->random:Ljava/util/Random;

    const v8, 0x15f91

    invoke-virtual {p0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit16 p0, p0, 0x2710

    mul-int v13, p0, v2

    move-object v8, v0

    invoke-interface/range {v8 .. v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setAdminConfigureBundleForCs(IILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string/jumbo v0, "intresponse"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    if-eqz p0, :cond_9

    const-string/jumbo v2, "errorresponse"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_4

    :cond_9
    move p0, v1

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and retCode-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_a

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    :cond_a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_b
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :goto_6
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_7
    return v1

    :goto_8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final configureWpcDar(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 5

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "configureWpcDar"

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkKnoxCorePermission(Lcom/samsung/android/knox/ContextInfo;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    const-string/jumbo p0, "This API is only valid for User 0"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 p0, -0x12

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xd

    return p0

    :cond_3
    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, -0xc

    return p0

    :cond_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "configureWPCDARFlag is called for plugin..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->configureWPCDARFlag(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public final deleteCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 1

    const-string/jumbo p0, "UniversalCredentialManagerService"

    const-string/jumbo p2, "deleteCACertificate is deprecated from Knox 3.10, not supported anymore."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    :try_start_0
    const-string/jumbo p1, "deleteCACertificate"

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final deleteCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "deleteCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x6b

    invoke-virtual {p0, v2, v1, p2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo p1, "deleteCertificate caller is valid delegated app..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    :goto_0
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->deleteCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deleteCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 2

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "deleteCertificateInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "deleteCertificateInternal"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcmServiceVosTempHelper:Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->updateUid(I)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->deleteCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final deleteCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)I
    .locals 13

    move-object/from16 v1, p3

    const-string/jumbo v2, "The exception occurs "

    const-string/jumbo v3, "UniversalCredentialManagerService"

    const-string/jumbo v0, "deleteCertificateMain is called...."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "deleteCertificate"

    iget-object v4, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v0, p2, v4}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->updateUserIdForWpcSystemAndVpnProcess(Landroid/content/Context;II)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_1
    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p2, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object v0, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v6, v0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_2
    :try_start_3
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v8, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object v5, p0

    move v7, v6

    move v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v6, v7

    const/4 v0, 0x1

    if-eq v0, p2, :cond_3

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xe

    return p0

    :cond_3
    :try_start_4
    iget-object v8, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object v5, p0

    move v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->removeCertificatefromProvider(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v7, v6

    if-eqz p2, :cond_4

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :cond_4
    :try_start_5
    invoke-virtual {p0, p1, v7, v1, v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->deleteCertificateUsingAdminId(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z

    move-result p1

    if-ne v0, p1, :cond_5

    const-string/jumbo p1, "UniversalCredentialCertificateTable"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :cond_6
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xb

    return p0

    :goto_3
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :goto_4
    const/4 p0, -0x1

    return p0

    :goto_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final deleteCertificateUsingAdminId(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z
    .locals 11

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "deleteCertificateUsingAdminId remove whitelist status-"

    const-string/jumbo v2, "deleteCertificateUsingAdminId is successful for alias-"

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "adminUid"

    const-string/jumbo v7, "userId"

    const-string/jumbo v8, "storageName"

    const-string/jumbo v9, "storagePackageName"

    const-string/jumbo v10, "alias"

    filled-new-array {v6, v7, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    iget-object v7, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {v4, v5, v7, v8, p4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "UniversalCredentialCertificateTable"

    invoke-virtual {v5, v7, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const/16 v7, 0x68

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-object v8, p3

    move-object v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->clearWhiteListPackages(IIILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v3
.end method

.method public final enableCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 10

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "enableCredentialStorageForLockType isGeneratePasswordAvailable-"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v3, "enableCredentialStorageForLockType is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    :try_start_0
    const-string/jumbo v4, "enableCredentialStorageForLockType"

    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v4

    const-string/jumbo v5, "enable"

    invoke-virtual {v4, v5, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v3, v5, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 p0, -0x12

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v4

    const/16 v5, -0xd

    if-nez v4, :cond_1

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/4 v4, -0x1

    :try_start_1
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v3, v8, v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x1

    if-eq v9, v8, :cond_2

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_2
    :try_start_2
    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string/jumbo v5, "isGeneratePasswordAvailable"

    invoke-virtual {v8, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "false"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x1b

    return p0

    :cond_3
    :try_start_3
    invoke-virtual {p0, p1, v3, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enableCredentialStorageForLockTypeInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_2
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :goto_3
    return v4

    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final enableCredentialStorageForLockTypeInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, v1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageEnabledForLockTypebyAdmin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageEnabledForLockTypebyAdmin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p4, :cond_0

    const-string/jumbo p0, "enableCredentialStorageForLockTypeInternal record already exist..."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->removeCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    const-string/jumbo p4, "enableCredentialStorageForLockTypeInternal record already exist for another admin. Enabling for current Admin too..."

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    const-string/jumbo p4, "enableCredentialStorageForLockTypeInternal enabling lock type for current Admin ..."

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    :goto_0
    return v3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public final enforceActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string v1, "Enforcing UCM PRIVILEGED permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public final enforceCredentialStorageAsLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)I
    .locals 10

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "enforceCredentialStorageAsLockType isGeneratePasswordAvailable-"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v3, "enforceCredentialStorageAsLockType is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    const-string/jumbo v4, "enforce_lock_type_direct_set"

    invoke-virtual {p3, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v5, "null"

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/os/Bundle;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    const/4 v3, 0x1

    :cond_3
    const-string/jumbo p3, "enforceCredentialStorageAsLockType"

    invoke-static {p3, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p3

    const-string/jumbo v5, "bundleProp"

    invoke-virtual {p3, v5, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Exception = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, v3, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_3
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    const/16 v3, -0xd

    if-eqz p2, :cond_5

    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p3, v6, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 p0, -0x12

    return p0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const/4 v7, -0x1

    :try_start_1
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, v8, v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_6

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_6
    :try_start_2
    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v9, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v8

    if-eqz v8, :cond_7

    const-string/jumbo v3, "isGeneratePasswordAvailable"

    invoke-virtual {v8, v3}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_9

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x1b

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_1
    move-exception p0

    goto/16 :goto_5

    :cond_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_8
    if-nez p2, :cond_d

    :try_start_3
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p3, v1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageLockTypeEnforcedForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_9

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :cond_9
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceCredentialStorageAsLockTypeInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string/jumbo p1, "USER_ID"

    const-string v1, "CS_NAME"

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.ACTION_ENFORCE_LOCKTYPE"

    if-nez v7, :cond_b

    if-eqz p2, :cond_b

    if-eqz v4, :cond_a

    :try_start_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_c

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-interface {p0, p3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->showEnforcedLockTypeNotification(ILjava/lang/String;)V

    goto :goto_4

    :cond_b
    const/16 v8, 0xa

    if-ne v7, v8, :cond_c

    if-eqz p2, :cond_c

    if-eqz v4, :cond_c

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    :goto_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :cond_d
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :goto_5
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    :goto_6
    return v7

    :goto_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final enforceCredentialStorageAsLockTypeInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 8

    const-string/jumbo v0, "enforceCredentialStorageAsLockTypeInternal result-"

    const-string/jumbo v1, "UniversalCredentialEnforcedLockTypeTable"

    const-string/jumbo v2, "userId"

    const/4 v3, 0x0

    const-string/jumbo v4, "UniversalCredentialManagerService"

    if-nez p2, :cond_0

    :try_start_0
    const-string/jumbo p2, "enforceCredentialStorageAsLockTypeInternal cs is null so removing admin entry..."

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "adminUid"

    filled-new-array {p3, v2}, [Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "storageName"

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "storagePackageName"

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageLockTypeEnforcedForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "enforceCredentialStorageAsLockTypeInternal record already exist..."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xa

    return p0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageLockTypeEnforcedForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "enforceCredentialStorageAsLockTypeInternal Credential storage is configured by some other admin"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0

    :cond_3
    const-string/jumbo v0, "enforceCredentialStorageAsLockTypeInternal Another Credential storage is already configured by some other admin"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addOrUpdateEnforcedCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addOrUpdateEnforcedCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p0, :cond_5

    return v3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isCallerValidKPU(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;)V

    return-void

    :cond_1
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const-string/jumbo v3, "UniversalCredentialManagerService"

    if-eqz p2, :cond_4

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Enforcing ESE permission"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p2, "Enforcing OTHER permission"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p0, "Input parameter is not proper"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p2, "Check if caller has some UCM permission..."

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_5
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-eq p0, p2, :cond_6

    const-string/jumbo p0, "enforceSecurityPermission : oldCallerId = "

    const-string v0, " newCallerId = "

    invoke-static {p2, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0, p1, v3}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_6
    const-string/jumbo p0, "enforceSecurityPermission : caller has valid UCM permission"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final generateKeyPair(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p4

    const-string/jumbo v3, "The exception occurs "

    const-string/jumbo v12, "UniversalCredentialManagerService"

    const-string/jumbo v0, "generateKeyPair is called...."

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :try_start_0
    const-string/jumbo v0, "generateKeyPair"

    iget-object v5, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v12}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v6, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    const-string/jumbo v7, "keystoreAlias"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUser(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "keySize"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "blockModes"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    :try_start_1
    const-string/jumbo v10, "digests"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v10, 0x0

    :goto_1
    const-string/jumbo v11, "signaturePaddings"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "purposes"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v15, "ecCurveName"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {v13, v6, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v9, :cond_0

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {v13, v6, v9}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    if-eqz v10, :cond_1

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    invoke-virtual {v13, v6, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    if-eqz v11, :cond_2

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {v13, v6, v11}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    if-eqz v15, :cond_3

    sget-object v6, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    invoke-virtual {v13, v6, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v6, p3

    :try_start_2
    invoke-interface {v0, v5, v6, v8, v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v6, v4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    iget v6, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUser(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v5

    :try_start_3
    invoke-interface {v0, v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    const-string/jumbo v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    const-string/jumbo v0, "generateCertificatesFromBytes. Failed to generate X509Certificate"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v3, v16

    :goto_2
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v8, v3

    const/4 v0, 0x0

    move v9, v0

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v0, v3, v9

    :try_start_6
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v3, v1

    move v2, v5

    move-object/from16 v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZ)I

    move-result v0

    if-nez v0, :cond_5

    return-object v13

    :cond_5
    const-string/jumbo v1, "generateKeyPair. Failed : "

    invoke-static {v0, v1, v12}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v16

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v12}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v16

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v12}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v16
.end method

.method public final getActivePlugin()Ljava/util/ArrayList;
    .locals 3

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getActivePlugin .."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v0, "storagePackageName"

    const-string/jumbo v1, "appUid"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "UniversalCredentialInfoTable"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getAdminForEnforcedCredentialStorageAsUser(I)I
    .locals 2

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getAdminForEnforcedCredentialStorageAsUser is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminForEnforcedCredentialStorageFromDb(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0
.end method

.method public final getAdminForEnforcedCredentialStorageFromDb(I)I
    .locals 4

    const-string/jumbo v0, "userId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "adminUid"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {p0, v3, v0, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, -0x1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    const-string/jumbo p1, "UniversalCredentialManagerService"

    if-nez p0, :cond_0

    const-string/jumbo p0, "parsing object error"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "parsing integer error"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const-string/jumbo v0, "adminUid"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAdminIdRelatedToStorage stroragePackage-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v3, "storagePackageName"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "UniversalCredentialInfoTable"

    invoke-virtual {p0, v5, v3, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/ContentValues;

    if-nez v4, :cond_0

    const-string/jumbo v4, "value is null, continue..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "parsing error, continue..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public final getAdminIdRelatedToStorageAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;
    .locals 5

    const-string/jumbo v0, "adminUid"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string/jumbo v2, "userId"

    const-string/jumbo v3, "storageName"

    const-string/jumbo v4, "storagePackageName"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {p1, v3, p2}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "UniversalCredentialInfoTable"

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    check-cast v2, Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "UniversalCredentialManagerService"

    if-nez v2, :cond_0

    :try_start_1
    const-string/jumbo v2, "value is null, continue..."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "parsing error, continue..."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public final getAliases(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getAliases is called...."

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string/jumbo v1, "getAliases"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x6b

    invoke-virtual {p0, v3, v1, p2, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo p1, "getAliases caller is valid delegated app..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    :goto_1
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_2
    return-object v2

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_3
    invoke-virtual {p0, v1, p2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAliasesInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAliasesInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)[Ljava/lang/String;
    .locals 8

    const-string/jumbo v0, "alias"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v4, "adminUid"

    const-string/jumbo v5, "userId"

    const-string/jumbo v6, "storageName"

    const-string/jumbo v7, "storagePackageName"

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {p1, p3, v5, p2}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p3, "UniversalCredentialCertificateTable"

    invoke-virtual {p0, p3, v4, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v3, p1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p3, p3, 0x1

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3
.end method

.method public final getAllCertificateAliases(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "UniversalCredentialCertificateTable"

    const-string/jumbo v1, "alias"

    const-string/jumbo v2, "getAllCertificateAliases"

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v3, "getAllCertificateAliases is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v2, "storageName"

    const-string/jumbo v6, "storagePackageName"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    iget-object v6, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {v6, p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v6, "adminUid"

    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7, v0, v2, p1, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_1
    :goto_0
    if-ge v7, v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/content/ContentValues;

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p1

    :catch_0
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return-object v3
.end method

.method public final getAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 7

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "getAuthType is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "getAuthType"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v6, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_2
    :try_start_3
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x1

    if-eq v5, p1, :cond_3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_3
    :try_start_4
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0

    return-object p0
.end method

.method public final getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "The exception occurs "

    const-string/jumbo v3, "UniversalCredentialManagerService"

    const-string/jumbo v4, "getAvailableCredentialStorages is called...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x6b

    invoke-virtual {v1, v5, v4, v6, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v0, "getAvailableCredentialStorages caller is valid delegated app..."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    move v8, v4

    move v4, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v1, v0, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :cond_1
    iget v4, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v8, v4

    const/4 v4, 0x0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    :cond_2
    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getManagedProviders()[Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v12, v0

    if-lez v12, :cond_5

    array-length v12, v0

    new-array v12, v12, [Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    array-length v13, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v14, v13, :cond_4

    move-object/from16 v16, v6

    :try_start_1
    aget-object v6, v0, v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v7

    :try_start_2
    new-instance v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v7}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v9, "packageName"

    invoke-virtual {v6, v9}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string/jumbo v9, "vendorId"

    invoke-virtual {v6, v9}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v9, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 p1, v10

    const-wide/16 v10, 0x40

    :try_start_3
    invoke-interface {v6, v9, v10, v11, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertSignatureToString([Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_3
    :goto_2
    aput-object v7, v12, v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v10, p1

    move-object/from16 v6, v16

    move/from16 v7, v17

    goto :goto_1

    :catchall_1
    move-exception v0

    move-wide/from16 p1, v10

    goto/16 :goto_11

    :catch_1
    move-exception v0

    :goto_3
    move-wide/from16 p1, v10

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_4
    move/from16 v17, v7

    goto :goto_3

    :cond_4
    move-object/from16 v16, v6

    move/from16 v17, v7

    move-wide/from16 p1, v10

    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_4

    :cond_5
    move-object/from16 v16, v6

    move/from16 v17, v7

    move-wide/from16 p1, v10

    :try_start_4
    const-string/jumbo v0, "getAvailableCredentialStorage - UniversalCredentialUtil service returns no providers... "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    move-object/from16 v16, v6

    move/from16 v17, v7

    move-wide/from16 p1, v10

    const-string/jumbo v0, "getAvailableCredentialStorage - UniversalCredentialUtil service is null.... "

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_5
    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :goto_6
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    :goto_7
    move-object/from16 v12, v16

    :goto_8
    if-nez v12, :cond_7

    goto/16 :goto_10

    :cond_7
    if-eqz v4, :cond_11

    const-string/jumbo v0, "getAvailableCredentialStorages - Delegated caller.."

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    array-length v0, v4

    if-lez v0, :cond_10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v4

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_c

    aget-object v0, v4, v8

    const-string/jumbo v9, "storagePackageName"

    const-string/jumbo v10, "storageName"

    const-string/jumbo v11, "getDelegatedStorages - Size-"

    :try_start_6
    const-string/jumbo v13, "userId"

    const-string/jumbo v14, "accessType"

    const-string/jumbo v15, "appPackage"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v14, v15, v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v1, "UniversalCredentialWhiteListTable"

    invoke-virtual {v15, v1, v13, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :try_start_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v11, :cond_8

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Landroid/content/ContentValues;

    move-object/from16 p1, v0

    invoke-virtual {v15, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    move-object/from16 p2, v1

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object/from16 v18, v4

    :try_start_9
    const-string/jumbo v4, "getDelegatedStorages storageName -"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", storagePackage-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iput-object v15, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    aput-object v1, p2, v13
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v4, v18

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_b
    move-object/from16 v1, p2

    goto :goto_c

    :catch_5
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_b

    :catch_6
    move-exception v0

    move-object/from16 p2, v1

    move-object/from16 v18, v4

    goto :goto_c

    :cond_8
    move-object/from16 p2, v1

    move-object/from16 v18, v4

    goto :goto_d

    :catch_7
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v1, v16

    goto :goto_c

    :cond_9
    move-object/from16 v18, v4

    move-object/from16 v1, v16

    goto :goto_d

    :goto_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_d
    if-eqz v1, :cond_b

    array-length v0, v1

    if-lez v0, :cond_b

    array-length v0, v1

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v0, :cond_b

    aget-object v9, v1, v4

    iget-object v10, v9, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v9, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getAvailableCredentialStorages - Addding whitelisted storage -"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v9, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-static {v10, v9, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    goto/16 :goto_9

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, v12

    const/4 v9, 0x0

    :goto_f
    if-ge v9, v1, :cond_e

    aget-object v2, v12, v9

    iget-object v4, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getAvailableCredentialStorages - Final filtered storage -"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    return-object v0

    :cond_f
    const-string/jumbo v0, "returning null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_10
    return-object v16

    :cond_11
    return-object v12

    :goto_11
    invoke-static/range {p1 .. p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getCACertificate(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ucm/configurator/CACertificateInfo;
    .locals 0

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    :try_start_0
    const-string/jumbo p0, "getCACertificate"

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "UniversalCredentialManagerService"

    invoke-static {p0, p1, p2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCACertificateAliases(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "UniversalCredentialManagerService"

    const-string/jumbo p2, "getCACertificateAliases is deprecated from Knox 3.10, not supported anymore."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCertificateAliases(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "appPackage"

    const-string/jumbo v4, "alias"

    const-string/jumbo v5, "adminUid"

    const-string/jumbo v6, "getCertificateAliases no packages related to uid-"

    const-string/jumbo v7, "getCertificateAliases"

    invoke-static {v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v7, "UniversalCredentialManagerService"

    const-string/jumbo v8, "getCertificateAliases is called...."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    return-object v9

    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    :try_start_0
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "userId"

    const-string/jumbo v14, "storageName"

    const-string/jumbo v15, "storagePackageName"

    const-string/jumbo v9, "accessType"

    filled-new-array {v13, v14, v15, v9}, [Ljava/lang/String;

    move-result-object v9

    iget-object v13, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v14, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const/16 v15, 0x68

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    filled-new-array {v8, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v8

    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v15, "UniversalCredentialWhiteListTable"

    invoke-virtual {v14, v15, v9, v8, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_8

    iget-object v9, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    array-length v1, v9

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v1, :cond_6

    aget-object v14, v9, v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCertificateAliases pkgName-"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v6, :cond_5

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v17, v1

    move-object/from16 v1, v16

    check-cast v1, Landroid/content/ContentValues;

    if-nez v1, :cond_1

    const-string/jumbo v1, "value is null, continue..."

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, v17

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    move/from16 v16, v6

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    const-string/jumbo v8, "getCertificateAliases dbPackage-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "*"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCertificateAliases alias found alias-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "parsing error, continue..."

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    move/from16 v6, v16

    move/from16 v1, v17

    move-object/from16 v3, v18

    move-object/from16 v8, v19

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isAdminLicenseActive(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move/from16 v17, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v8

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object v9, v0

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "getCertificateAliases - No record found..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    const/4 v9, 0x0

    :goto_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getCertificateAliases - aliases size -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, v9

    invoke-static {v0, v1, v7}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_9
    return-object v9
.end method

.method public final getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "alias"

    const-string/jumbo v1, "adminUid"

    const-string/jumbo v2, "getCertificateAliasesAsUser"

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v3, "getCertificateAliasesAsUser is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "userId"

    const-string/jumbo v7, "storageName"

    const-string/jumbo v8, "storagePackageName"

    filled-new-array {v3, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {p1, v7, p2}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "UniversalCredentialCertificateTable"

    invoke-virtual {p0, v7, v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v3, v3, 0x1

    check-cast v7, Landroid/content/ContentValues;

    if-nez v7, :cond_1

    const-string/jumbo v7, "value is null, continue..."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "parsing error, continue..."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, p0

    :cond_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-object v4
.end method

.method public final getCredentialStoragePluginConfiguration(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "getCredentialStoragePluginConfiguration is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string/jumbo v2, "getCredentialStoragePluginConfiguration"

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_2
    :try_start_3
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v6, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    if-eq v6, p0, :cond_3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo v6, "getCredentialStoragePluginConfiguration - pass to agent..."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v6, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {v6, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, v2, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAdminConfigureBundleFromCs(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_4
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_3
    return-object v3

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "getPackageSetting is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string/jumbo v2, "getCredentialStorageProperty"

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_2
    :try_start_3
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v6, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    if-eq v6, p0, :cond_3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo v6, "getCredentialStorageProperty - pass to agent..."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v6, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {v6, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_4
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_3
    return-object v3

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;
    .locals 6

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getCredentialStorageProperties name-"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and pkg-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getManagedProviders()[Ljava/security/Provider;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-lez v1, :cond_6

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "packageName"

    invoke-virtual {v3, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p1, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    const-string/jumbo p0, "getCredentialStorageProperties match found..."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_3
    :goto_2
    const-string v3, "CredentialStorage or AGENT_PACKAGENAME is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo p0, "getCredentialStorageProperties - UniversalCredentialUtil service is null.... "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v4, "_"

    const-string/jumbo v5, "appPackage"

    const-string/jumbo v6, "storageManufacture"

    const-string/jumbo v7, "storagePackageName"

    const-string/jumbo v8, "storageName"

    const-string/jumbo v9, "getCredentialStorages - Size-"

    const-string/jumbo v10, "UniversalCredentialManagerService"

    const-string/jumbo v0, "getCredentialStorages is called...."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v11, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object/from16 v16, v11

    goto/16 :goto_6

    :cond_1
    :try_start_0
    const-string/jumbo v0, "getCredentialStorages"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    const-string/jumbo v12, "packageName"

    invoke-virtual {v0, v12, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Exception = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v12, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    move-object/from16 v16, v11

    :try_start_1
    const-string/jumbo v11, "adminUid"

    const-string/jumbo v15, "userId"

    filled-new-array {v11, v15}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v8, v7, v6, v5}, [Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v15, "UniversalCredentialWhiteListTable"

    invoke-virtual {v1, v15, v11, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v2, v2, 0x1

    check-cast v9, Landroid/content/ContentValues;

    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v0

    const-string/jumbo v0, "getCredentialStorages dbPackage-"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_3

    invoke-virtual {v11, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    const-string/jumbo v0, "getCredentialStorages match found..."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    new-instance v15, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {v15}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    iput-object v0, v15, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iput-object v11, v15, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    iput-object v9, v15, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object/from16 v0, p0

    goto/16 :goto_1

    :catch_1
    :cond_4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_4
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getCredentialStorages - hashList.size()"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    goto :goto_5

    :cond_5
    move-object/from16 v11, v16

    :goto_5
    return-object v11

    :goto_6
    return-object v16
.end method

.method public final getDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 9

    const-string/jumbo v0, "storageManufacture"

    const-string/jumbo v1, "storagePackageName"

    const-string/jumbo v2, "storageName"

    const-string/jumbo v3, "UniversalCredentialManagerService"

    const-string/jumbo v4, "getDefaultInstallStorage is called...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    const-string/jumbo v6, "userId"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {p0, v8, v6, p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {p1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v3, p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3
.end method

.method public final getDefaultInstallStorageAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 9

    const-string/jumbo v0, "storageManufacture"

    const-string/jumbo v1, "storagePackageName"

    const-string/jumbo v2, "storageName"

    const-string/jumbo v3, "getDefaultInstallStorageAsUser"

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v3, "UniversalCredentialManagerService"

    const-string/jumbo v4, "getDefaultInstallStorageAsUser is called...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "userId"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {p0, v8, v6, p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {p1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-object v5, p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5
.end method

.method public final getEnforcedCredentialStorageForLockType(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 3

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getEnforcedCredentialStorageForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getEnforcedCredentialStorageFromDb(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method public final getEnforcedCredentialStorageForLockTypeAsUser(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 2

    const-string/jumbo v0, "getEnforcedCredentialStorageForLockTypeAsUser"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getEnforcedCredentialStorageForLockTypeAsUser is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getEnforcedCredentialStorageFromDb(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEnforcedCredentialStorageFromDb(I)Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;
    .locals 6

    const-string/jumbo v0, "userId"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "storageName"

    const-string/jumbo v2, "storagePackageName"

    const-string/jumbo v3, "storageManufacture"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {p0, v5, v0, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    invoke-direct {p1}, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getKeyguardPinCurrentRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getKeyguardPinCurrentRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "getKeyguardPinCurrentRetryCount"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardPinCurrentRetryCount(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getKeyguardPinMaximumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "getKeyguardPinMaximumLength"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardPinMaximumLength(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getKeyguardPinMaximumRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "getKeyguardPinMaximumRetryCount"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardPinMaximumRetryCount(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getKeyguardPinMinimumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "getKeyguardPinMinimumLength"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardPinMinimumLength(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final getManagedProviders()[Ljava/security/Provider;
    .locals 11

    const-string/jumbo v0, "UniversalCredentialManagerService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->listAllProviders()[Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v4, v7

    iget-object v9, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-nez v9, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    :cond_0
    const-string/jumbo v9, "uniqueId"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v8, "NULL agent ID name Returned for bundle"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    new-instance v10, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    invoke-direct {v10, v9, v8}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Provider;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Provider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "The exception occurs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getODESettingsConfiguration(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .locals 5

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "getODESettingsConfiguration is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "getODESettingsConfiguration is called for plugin unmanaged..."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getODESettingsConfiguration()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_1
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getPackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v4, "appSignature"

    const-string/jumbo v5, "appPackage"

    const-string/jumbo v6, "getPackagesFromExemptList - Size-"

    const-string/jumbo v7, "UniversalCredentialManagerService"

    const-string/jumbo v0, "getPackagesFromExemptList is called...."

    invoke-static {v2, v3, v7, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    :try_start_0
    const-string/jumbo v0, "getPackagesFromExemptList"

    iget-object v9, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    const-string/jumbo v9, "authType"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v10, 0x6a

    move/from16 v11, p3

    if-ne v11, v10, :cond_1

    :try_start_1
    const-string v10, "AUTH"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "OTHER"

    :goto_0
    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v11, p3

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Exception = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9, v7}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_2
    iget-object v12, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_2

    :try_start_3
    iget-object v13, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v13, v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v12, :cond_2

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :try_start_4
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v12, :cond_3

    :try_start_5
    const-string/jumbo v0, "Storage is not active"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_3
    :try_start_6
    iget-object v12, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v13, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v12, v13}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v13, 0x1

    if-eq v13, v12, :cond_4

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_4
    :try_start_7
    invoke-static {v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidExemptType(I)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v12, :cond_5

    :try_start_8
    const-string/jumbo v0, "getPackagesFromExemptList - Invalid Exempt Type..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v8

    :cond_5
    :try_start_9
    const-string/jumbo v12, "adminUid"

    const-string/jumbo v13, "userId"

    const-string/jumbo v14, "storageName"

    const-string/jumbo v15, "storagePackageName"

    const-string/jumbo v8, "exemptType"

    filled-new-array {v12, v13, v14, v15, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v12, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v0, v2, v12, v3, v11}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5, v4}, [Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "UniversalCredentialExemptTable"

    invoke-virtual {v1, v3, v8, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Landroid/content/ContentValues;

    new-instance v7, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v7}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_2
    :cond_6
    move-object v8, v1

    goto :goto_4

    :catch_3
    :cond_7
    const/4 v8, 0x0

    :catch_4
    :goto_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_6
    return-object v8
.end method

.method public final getPackagesFromExemptListAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;
    .locals 10

    const-string/jumbo v0, "appSignature"

    const-string/jumbo v1, "appPackage"

    const-string/jumbo v2, "adminUid"

    const-string/jumbo v3, "getPackagesFromExemptListAsUser - Size-"

    const-string/jumbo v4, "UniversalCredentialManagerService"

    const-string/jumbo v5, "getPackagesFromExemptListAsUser is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidExemptType(I)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo p0, "getPackagesFromExemptListAsUser - Invalid Exempt Type..."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_1
    const-string/jumbo v6, "userId"

    const-string/jumbo v7, "storageName"

    const-string/jumbo v8, "storagePackageName"

    const-string/jumbo v9, "exemptType"

    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v8, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, v7, v8, p3}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object p3

    iget-object v7, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "UniversalCredentialExemptTable"

    invoke-virtual {v7, v8, v6, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_2
    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/ContentValues;

    if-nez v6, :cond_3

    const-string/jumbo v6, "value is null, continue...."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-object v5, p3

    goto :goto_1

    :cond_3
    new-instance v7, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v7}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "parsing error, continue..."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isAdminLicenseActive(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_5
    return-object p3

    :catch_1
    :cond_6
    :goto_1
    return-object v5
.end method

.method public final getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    const-string/jumbo v8, "getPackagesFromWhiteList - Size-"

    const-string/jumbo v9, "getPackagesFromWhiteList cxtInfo.mContainerId-"

    const-string/jumbo v4, "getPackagesFromWhiteList alias-"

    const-string/jumbo v10, "UniversalCredentialManagerService"

    const-string/jumbo v0, "getPackagesFromWhiteList is called...."

    invoke-static {v2, v7, v10, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_1
    :try_start_0
    const-string/jumbo v0, "getPackagesFromWhiteList"

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v10}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const-string/jumbo v6, "UniversalCredentialWhiteListTable"

    invoke-virtual {v1, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    const/16 v6, 0x6b

    invoke-virtual {v1, v5, v0, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v6

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_2

    const-string/jumbo v2, "getPackagesFromWhiteList caller is valid delegated app..."

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    move v0, v12

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v2, v0

    move v0, v13

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_1
    iget-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    const/16 v16, 0x0

    :try_start_2
    iget-object v11, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v5, v11, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_3
    const/16 v16, 0x0

    :cond_4
    :try_start_3
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v0, "Plugin is not active"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :cond_5
    :try_start_4
    iget-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v11, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6, v11}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eq v12, v6, :cond_6

    if-nez v0, :cond_6

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :cond_6
    :try_start_5
    const-string/jumbo v0, "access_type"

    const/4 v6, -0x1

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidAccessType(I)Z

    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v6, :cond_7

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :cond_7
    const/16 v6, 0x68

    if-ne v0, v6, :cond_9

    :try_start_6
    const-string/jumbo v6, "alias"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_8

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :cond_8
    :try_start_7
    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move v3, v5

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eq v12, v4, :cond_a

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v16

    :cond_9
    move v3, v5

    move-object/from16 v6, v16

    :cond_a
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",name-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",package-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", accessType-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move v4, v0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getWhitelistedData(IIILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v13, v2, :cond_b

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    check-cast v3, Landroid/content/ContentValues;

    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v4}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    const-string/jumbo v5, "appPackage"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    const-string/jumbo v5, "appSignature"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    :catch_1
    :cond_b
    move-object v11, v1

    goto :goto_4

    :cond_c
    :try_start_a
    const-string/jumbo v0, "getPackagesFromWhiteList DB is empty..."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_2
    :goto_3
    move-object/from16 v11, v16

    :goto_4
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_3
    const/16 v16, 0x0

    goto :goto_3

    :goto_6
    return-object v11

    :goto_7
    return-object v16
.end method

.method public final getPackagesFromWhiteListInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;
    .locals 12

    const-string/jumbo v0, "getPackagesFromWhiteListInternal mContainerId-"

    const-string/jumbo v1, "getPackagesFromWhiteListInternal alias-"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v3, "getPackagesFromWhiteListInternal is called...."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "access_type"

    const/4 v5, -0x1

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidAccessType(I)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v5, 0x68

    const-string/jumbo v6, "alias"

    if-ne v4, v5, :cond_1

    :try_start_1
    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    :cond_1
    move-object p3, v3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",name-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, ""

    if-eqz p2, :cond_3

    :try_start_2
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v5, v0

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",package-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", accessType-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string/jumbo v0, "storagePackageName"

    const-string/jumbo v1, "storageName"

    const-string/jumbo v5, "UniversalCredentialWhiteListTable"

    const-string/jumbo v7, "accessType"

    const-string/jumbo v8, "userId"

    const-string/jumbo v9, "appSignature"

    const-string/jumbo v10, "adminUid"

    const-string/jumbo v11, "appPackage"

    if-nez p3, :cond_6

    if-eqz p2, :cond_5

    :try_start_3
    filled-new-array {v8, v1, v0, v7}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v0, v1, v4}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v10, v11, v9}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v5, p3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_5
    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v10, v11, v9}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v5, p3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_6
    filled-new-array {v8, v1, v0, v7, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p1, v1, v6, v4, p3}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v10, v11, v9}, [Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v5, v0, p1, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_b

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_7
    :goto_2
    if-ge v1, v0, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Landroid/content/ContentValues;

    if-nez v3, :cond_8

    const-string/jumbo v3, "value is null, continue..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-object v3, p3

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v4}, Lcom/samsung/android/knox/AppIdentity;-><init>()V

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/AppIdentity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/AppIdentity;->setSignature(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPackagesFromWhiteListInternal APP PKG-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_9

    const-string/jumbo v3, "parsing error, continue..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isAdminLicenseActive(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_a
    return-object p3

    :catch_1
    :cond_b
    :goto_3
    return-object v3
.end method

.method public final getStorageAuthenticationType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 8

    const-string/jumbo v0, "storageAuthType"

    const-string/jumbo v1, "getStorageAuthenticationType"

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "getStorageAuthenticationType is called...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xd

    return p0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/16 v4, 0x69

    :try_start_0
    const-string/jumbo v5, "userId"

    const-string/jumbo v6, "storageName"

    const-string/jumbo v7, "storagePackageName"

    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {p1, v6, p2}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialInfoTable"

    invoke-virtual {p0, v6, v5, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-ge p2, p1, :cond_5

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 p2, p2, 0x1

    check-cast v5, Landroid/content/ContentValues;

    if-nez v5, :cond_3

    const-string/jumbo v5, "value is null, continue..."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "parsing error, continue..."

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_2

    const-string/jumbo p0, "getStorageAuthenticationType - found the strictest value..."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4
.end method

.method public final getSupportedAlgorithms(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 10

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "getSupportedAlgorithms is called...."

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :try_start_0
    const-string/jumbo p1, "getSupportedAlgorithms"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v3, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_1
    return-object v2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUniversalCredentialUtil:Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getManagedProviders()[Ljava/security/Provider;

    move-result-object p0

    if-eqz p0, :cond_5

    array-length p1, p0

    if-lez p1, :cond_5

    array-length p1, p0

    const/4 v1, 0x0

    move v5, v1

    :goto_2
    if-ge v5, p1, :cond_7

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "packageName"

    invoke-virtual {v6, v8}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_4

    iget-object v9, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    new-array v2, v7, [Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Provider$Service;

    invoke-virtual {v8}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p0

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo p0, "getSupportedAlgorithmsInternal - UniversalCredentialUtil service returns no providers... "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    const-string/jumbo p0, "getSupportedAlgorithmsInternal - UniversalCredentialUtil service is null.... "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "The exception occurs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_6
    return-object v2

    :goto_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getWhitelistedData(IIILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    const-string/jumbo v1, "appSignature"

    const-string/jumbo v2, "appPackage"

    if-nez p5, :cond_0

    const-string/jumbo p5, "storagePackageName"

    const-string/jumbo v3, "accessType"

    const-string/jumbo v4, "adminUid"

    const-string/jumbo v5, "userId"

    const-string/jumbo v6, "storageName"

    filled-new-array {v4, v5, v6, p5, v3}, [Ljava/lang/String;

    move-result-object p5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p4, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2, v3, p4, p3}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0, p5, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo v7, "accessType"

    const-string/jumbo v8, "alias"

    const-string/jumbo v3, "adminUid"

    const-string/jumbo v4, "userId"

    const-string/jumbo v5, "storageName"

    const-string/jumbo v6, "storagePackageName"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p4, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, p5

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0, v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "UniversalCredentialCertificateTable"

    const-string/jumbo v3, "wifi"

    const-string/jumbo v4, "alias"

    const-string/jumbo v5, "adminUid"

    const-string/jumbo v6, "UniversalCredentialManagerService"

    const-string/jumbo v7, "getWifiCertificateAliasesAsUser is called...."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "getWifiCertificateAliasesAsUser"

    invoke-static {v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v11, "userId"

    const-string/jumbo v12, "storageName"

    const-string/jumbo v13, "storagePackageName"

    filled-new-array {v11, v12, v13}, [Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v13, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {v7, v12, v13}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v13, v2, v11, v7, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_5

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Landroid/content/ContentValues;

    if-nez v14, :cond_1

    const-string/jumbo v14, "value is null, continue..."

    invoke-static {v6, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v16, :cond_2

    if-nez v14, :cond_3

    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    goto :goto_2

    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string/jumbo v4, "getWifiCertificateAliasesAsUser - isWifi :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isAdminLicenseActive(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    if-ne v14, v3, :cond_4

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v8, 0x0

    goto :goto_0

    :goto_2
    const-string/jumbo v3, "parsing error, continue..."

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return-object v8
.end method

.method public final initKeyguardPin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "initKeyguardPin is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "initKeyguardPin"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->initKeyguardPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final initPluginForWpc(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "initPluginForWpc is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "initPluginForWpc - Invalid Arguments"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xb

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkKnoxCorePermission(Lcom/samsung/android/knox/ContextInfo;)V

    const-string/jumbo v1, "initPluginForWpc : caller has valid UCM permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAvailableCredentialStorages(Lcom/samsung/android/knox/ContextInfo;Z)[Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string/jumbo v2, "No credential storages found for UCM WPC DAR."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v6, v3

    goto :goto_1

    :cond_2
    array-length v4, v2

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cs.packageName -"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-static {v7, v8, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v6, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :goto_1
    const/4 v2, -0x1

    if-nez v6, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "No credential storages found for packageName"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Selected CS for UCM WPC DAR"

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v6, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and pkg-"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p2, v4, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v6, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ZZ)I

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_5
    const-string v4, "Failed to install applet, unmanage Plugin"

    const-string v5, "Exception in configureCredentialStoragePlugin in UCM DAR WPC"

    iget-object v7, v6, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v7

    if-nez v7, :cond_6

    const-string/jumbo p0, "getCredentialStorageForWpc. csProvider is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_6
    const-string/jumbo v8, "storageType"

    invoke-virtual {v7, v8}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "credential_storage"

    invoke-virtual {v8, v9, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v9, "eSE"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string/jumbo v9, "status_code"

    if-nez v7, :cond_7

    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v8

    :cond_7
    :try_start_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "applet_location"

    invoke-virtual {v7, v10, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6, v7, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->configureCredentialStoragePlugin(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;Z)I

    move-result v3

    const/16 v7, 0x2710

    if-ge v3, v7, :cond_8

    const-string/jumbo v3, "getCredentialStorageForWpc. failed to install applet"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v6, v1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ZZ)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_8
    :try_start_3
    invoke-virtual {v8, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "request_id"

    invoke-virtual {v8, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v8

    :catchall_1
    move-exception v2

    move p2, v1

    goto :goto_5

    :catch_3
    move-exception v3

    move p2, v1

    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_9

    :try_start_5
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v6, v1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ZZ)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_3
    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p2

    :goto_4
    return-object p2

    :goto_5
    if-eqz p2, :cond_a

    :try_start_6
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v6, v1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ZZ)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_6
    throw v2

    :goto_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Exception in manageCredentialStorage in UCM DAR WPC"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getStatusErrorBundle(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;IILjava/lang/String;Z)Z
    .locals 5

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "UniversalCredentialCertificateTable"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-static {p4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "userId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "storageName"

    iget-object p3, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "storagePackageName"

    iget-object p3, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "alias"

    invoke-virtual {v3, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "wifi"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "storageManufacture"

    iget-object p1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    :goto_0
    move v2, p0

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "insertOrUpdateCertificateProfile - record already exist.."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    const-string/jumbo p0, "retcode-"

    invoke-static {p0, v0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public final insertOrUpdateExemptPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "insertOrUpdateExemptPackages - Exempt app size -"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "UniversalCredentialManagerService"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v0, -0x1

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/AppIdentity;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "insertOrUpdateExemptPackages - pkg : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v10, 0x40

    invoke-interface {v6, v0, v10, v11, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v10, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Package Info: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_2

    const/4 v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    const/16 v14, -0x12

    if-nez v0, :cond_3

    const-string/jumbo v0, "UniversalCredentialManagerPolicy passed String signature is invalid"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v8, v14

    goto/16 :goto_a

    :cond_3
    iget-object v15, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v15, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "Package is installed, and signature doesn\'t match. So return falure"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "adminUid"

    const-string/jumbo v8, "userId"

    invoke-static {v3, v14, v15, v4, v8}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v12, "storageName"

    invoke-virtual {v14, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const-string/jumbo v11, "storagePackageName"

    invoke-virtual {v14, v11, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v17, v6

    const-string/jumbo v6, "exemptType"

    invoke-virtual {v14, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v18, v7

    const-string/jumbo v7, "The exception occurs "

    if-eqz v13, :cond_5

    :try_start_1
    const-string/jumbo v0, "appUid"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v19, v9

    :try_start_2
    iget-object v9, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v14, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v19, v9

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    move-object/from16 v19, v9

    :goto_6
    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "appPackage"

    invoke-virtual {v14, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "appSignature"

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    move/from16 v20, v13

    :goto_7
    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v13, "storageManufacture"

    invoke-virtual {v14, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v0, v15, v4, v8}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v8, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v0, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_3
    iget-object v6, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "UniversalCredentialExemptTable"

    invoke-virtual {v6, v8, v14, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v6, 0x1

    if-eq v0, v6, :cond_8

    const/4 v8, -0x1

    goto :goto_a

    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    :catch_3
    const/16 v16, -0x1

    :goto_8
    if-eqz v20, :cond_9

    :try_start_4
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caching Exempt app id-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName-"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v6, v5}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    :goto_9
    move/from16 v0, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_0

    :cond_a
    move v8, v0

    :goto_a
    const-string/jumbo v0, "insertOrUpdateExemptPackages retcode-"

    invoke-static {v8, v0, v5}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v8
.end method

.method public final insertOrUpdateWhiteListPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IIILjava/lang/String;)I
    .locals 24

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    const-string/jumbo v6, "The exception occurs "

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "insertOrUpdateWhiteListPackages access_type-"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v7, p5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "UniversalCredentialManagerService"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "*"

    if-eqz v10, :cond_0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    const-string/jumbo v13, "insertOrUpdateWhiteListPackages - allowAllApp -"

    invoke-static {v13, v8, v10}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v13, "storageManufacture"

    const-string/jumbo v14, "UniversalCredentialWhiteListTable"

    const-string/jumbo v15, "appPackage"

    const-string/jumbo v9, "alias"

    const-string/jumbo v12, "accessType"

    const-string/jumbo v7, "storagePackageName"

    move-object/from16 v16, v6

    const-string/jumbo v6, "storageName"

    move-object/from16 v17, v14

    const-string/jumbo v14, "userId"

    const-string/jumbo v1, "adminUid"

    const/16 v18, -0x1

    move-object/from16 v19, v11

    const/4 v11, 0x1

    if-ne v11, v10, :cond_5

    const-string/jumbo v0, "insertOrUpdateWhiteListPackages - inside Allow all packages"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v0, v1, v4, v14}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v10, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    if-eqz v10, :cond_1

    invoke-virtual {v0, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v5, :cond_2

    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v10, v19

    invoke-virtual {v0, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v11, v1, v4, v14}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v11, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v5, :cond_3

    invoke-virtual {v11, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v11, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p0

    :try_start_0
    iget-object v1, v10, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, v17

    :try_start_1
    invoke-virtual {v1, v2, v0, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    move/from16 v9, v18

    :goto_1
    move/from16 v18, v9

    goto :goto_2

    :catch_0
    move-object/from16 v2, v17

    :catch_1
    :goto_2
    move-object v13, v10

    :goto_3
    move/from16 v0, v18

    goto/16 :goto_16

    :cond_5
    move-object/from16 v10, p0

    move-object/from16 v11, v17

    const-string/jumbo v0, "insertOrUpdateWhiteListPackages - inside else block..."

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "insertOrUpdateWhiteListPackages - WhiteList app size -"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move/from16 v0, v18

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v10, v20

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    move/from16 p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v20, v13

    const-string/jumbo v13, "insertOrUpdateWhiteListPackages - pkg : "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    :goto_5
    move-object/from16 v10, p0

    move/from16 v0, p2

    move-object/from16 v13, v20

    goto :goto_4

    :cond_7
    :try_start_2
    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v21, v12

    const-wide/16 v12, 0x40

    :try_start_3
    invoke-interface {v11, v0, v12, v13, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v13, v16

    :goto_6
    move-object v12, v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v21, v12

    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v13, v16

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v12, v8}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    const-string/jumbo v11, "Package Info: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_8

    const/4 v11, 0x1

    goto :goto_9

    :cond_8
    const/4 v11, 0x0

    :goto_9
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_VERSION:I

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_a

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-gtz v22, :cond_9

    goto :goto_a

    :cond_9
    const/16 v22, 0x1

    goto :goto_b

    :cond_a
    :goto_a
    const/16 v22, 0x0

    :goto_b
    sget-object v23, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->KNOX_ENTERPRISE_SDK_VERSION_3_7_1:Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v23

    move/from16 p2, v11

    add-int/lit8 v11, v23, 0x3

    if-ge v0, v11, :cond_b

    if-eqz v22, :cond_d

    if-eqz p2, :cond_d

    invoke-static {v10, v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isSignatureInvalid(Lcom/samsung/android/knox/AppIdentity;Landroid/content/pm/PackageInfo;)Z

    move-result v11

    goto :goto_c

    :cond_b
    if-nez v22, :cond_c

    const-string/jumbo v0, "UniversalCredentialManagerPolicy passed empty String signature"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    goto :goto_c

    :cond_c
    if-eqz p2, :cond_d

    invoke-static {v10, v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isSignatureInvalid(Lcom/samsung/android/knox/AppIdentity;Landroid/content/pm/PackageInfo;)Z

    move-result v11

    goto :goto_c

    :cond_d
    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_e

    const/16 v18, -0x12

    move-object/from16 v13, p0

    move-object/from16 v2, v17

    goto/16 :goto_3

    :cond_e
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v11, v1, v4, v14}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v11, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v22, v10

    move-object/from16 v10, v21

    invoke-virtual {v11, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v5, :cond_f

    invoke-virtual {v11, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    :try_start_4
    const-string/jumbo v0, "appUid"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v21, v13

    :try_start_5
    iget-object v13, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_d
    move-object/from16 v23, v12

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v21, v13

    :goto_e
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v23, v12

    const-string/jumbo v12, "insertOrUpdateWhiteListPackages getting appuid - Exception"

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v13, v8}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_f

    :cond_10
    move-object/from16 v21, v13

    goto :goto_d

    :goto_f
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "appSignature"

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->manufacturer:Ljava/lang/String;

    move-object/from16 v12, v20

    if-eqz v0, :cond_12

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v3, v0, v1, v4, v14}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v13, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v0, v6, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v5, :cond_13

    invoke-virtual {v0, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v13, p0

    move-object/from16 v20, v1

    :try_start_6
    iget-object v1, v13, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v2, v17

    :try_start_7
    invoke-virtual {v1, v2, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    const/4 v11, 0x1

    if-eq v0, v11, :cond_14

    goto/16 :goto_3

    :cond_14
    const/4 v1, 0x0

    goto :goto_12

    :catch_6
    :goto_10
    const/4 v11, 0x1

    goto :goto_11

    :catch_7
    move-object/from16 v2, v17

    goto :goto_10

    :goto_11
    move/from16 v1, v18

    :goto_12
    if-eqz p2, :cond_16

    move-object/from16 v11, v23

    :try_start_8
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v13, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    move/from16 p2, v1

    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v13, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching WhiteList app id-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_15
    :goto_13
    move-object/from16 v3, v21

    goto :goto_15

    :catch_8
    move-exception v0

    goto :goto_14

    :catch_9
    move-exception v0

    move/from16 p2, v1

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v8}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_15

    :cond_16
    move/from16 p2, v1

    goto :goto_13

    :goto_15
    move-object v0, v12

    move-object v12, v10

    move-object v10, v13

    move-object v13, v0

    move/from16 v0, p2

    move-object/from16 v17, v2

    move-object/from16 v11, v16

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    move-object/from16 v16, v3

    move/from16 v3, p3

    goto/16 :goto_4

    :cond_17
    move/from16 p2, v0

    move-object v13, v10

    move-object/from16 v2, v17

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "insertOrUpdateWhiteListPackages retcode-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {v13}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return v0
.end method

.method public final installCACertificate(Lcom/samsung/android/knox/ContextInfo;[BLjava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    const-string/jumbo p0, "UniversalCredentialManagerService"

    const-string/jumbo p2, "installCACertificate is deprecated from Knox 3.10, not supported anymore."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    :try_start_0
    const-string/jumbo p1, "installCACertificate"

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Exception = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final installCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "installCertificate is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v2, 0x6b

    invoke-virtual {p0, v4, v1, p2, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p1, "installCertificate caller is valid delegated app..."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    :goto_0
    move v12, p1

    move v3, v1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZ)I

    move-result p0

    return p0
.end method

.method public final installCertificateInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Landroid/os/Bundle;Z)I
    .locals 11

    move-object/from16 v7, p6

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "installCertificateInternal is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "installCertificateInternal"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    const-string/jumbo v0, "ucm_privatekey_password"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUcmServiceVosTempHelper:Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/ucm/ucmservice/UcmServiceVosTempHelper;->updateUid(I)I

    move-result v1

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZ)I

    move-result p0

    return p0
.end method

.method public final installCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZ)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    const-string/jumbo v11, "UniversalCredentialManagerService"

    const-string/jumbo v0, "installCertificateMain is called...."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v4, p2

    invoke-static {v0, v4, v3}, Lcom/samsung/ucm/ucmservice/UcmServiceUtil;->updateUserIdForWpcSystemAndVpnProcess(Landroid/content/Context;II)I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, -0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p4, :cond_10

    if-eqz v5, :cond_10

    if-nez p8, :cond_0

    if-nez p6, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v7, v3, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x12

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "Plugin is not active"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xd

    return v0

    :cond_2
    :try_start_2
    iget-object v0, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v3, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move/from16 v8, p1

    invoke-virtual {v1, v8, v7, v0, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x1

    if-eq v15, v0, :cond_3

    if-nez p10, :cond_3

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xc

    return v0

    :cond_3
    :try_start_3
    invoke-virtual {v1, v7, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCertificateAliasesAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_8

    aget-object v9, v0, v4

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v15, v9, :cond_7

    if-eqz p9, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x14

    return v0

    :cond_7
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    if-eqz p9, :cond_9

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xe

    return v0

    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    :try_start_4
    const-string/jumbo v0, "ese_storage_option"

    invoke-virtual {v6, v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    :cond_a
    move v0, v14

    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "installCertificateMain storageOption-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_b

    const-string/jumbo v0, "allow_wifi"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v16, v0

    goto :goto_5

    :cond_b
    move/from16 v16, v3

    :goto_5
    :try_start_5
    const-string/jumbo v0, "installCertificate"

    iget-object v4, v2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    const-string/jumbo v4, "certType"

    if-eqz v16, :cond_c

    const-string/jumbo v9, "WIFI"

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_c
    const-string/jumbo v9, "VPN"

    :goto_6
    invoke-virtual {v0, v4, v9}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :goto_7
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    if-eqz v16, :cond_d

    const/16 v0, 0xa

    if-lt v7, v0, :cond_d

    const-string/jumbo v0, "installCertificateMain wifi cert can\'t be installed for container"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v14

    :cond_d
    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v17, v3

    move-object v4, v5

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    :try_start_7
    invoke-static/range {v2 .. v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCertificateInProvider(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;IIZZ)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_e

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_e
    move/from16 v3, p1

    move-object/from16 v2, p3

    move-object/from16 v5, p5

    move v4, v7

    move/from16 v6, v16

    :try_start_8
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->insertOrUpdateCertificateProfile(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;IILjava/lang/String;Z)Z

    move-result v0

    if-ne v15, v0, :cond_f

    const-string/jumbo v0, "UniversalCredentialCertificateTable"

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v17

    :cond_f
    :goto_9
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_c

    :cond_10
    :goto_a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xb

    return v0

    :goto_b
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The exception occurs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :goto_c
    return v14

    :goto_d
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isAccessAllowed(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const-string/jumbo v3, "isAccessAllowed is called....userId-"

    const-string/jumbo v4, "UniversalCredentialManagerService"

    const-string/jumbo v5, "isAccessAllowed is called...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "isAccessAllowed"

    invoke-static {v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const-string/jumbo v7, "The exception occurs "

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v10, "userId"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_0
    move v10, v9

    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and packageUid-"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v10, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    :goto_1
    const-string/jumbo v3, "getPackagesFromWhiteListAsUser is called...."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p2

    invoke-virtual {v0, v10, v3, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getPackagesFromWhiteListInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v12, "*"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string/jumbo v3, "isAccessAllowed All packages are allowed..."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move v3, v8

    :goto_4
    if-nez v3, :cond_e

    :try_start_1
    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    if-eqz v10, :cond_d

    array-length v13, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-ge v8, v13, :cond_c

    :try_start_2
    aget-object v14, v10, v8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p0, v0

    const-string/jumbo v0, "isAccessAllowed pkgName-"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and DB packageName-"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_9

    if-eqz v9, :cond_9

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p0, :cond_8

    const-string/jumbo v0, "isAccessAllowed package matched. Now matching signature...."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_6

    :try_start_3
    const-string/jumbo v0, "isAccessAllowed - failed to convert signature from db."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    move v8, v3

    goto/16 :goto_10

    :cond_6
    :goto_7
    :try_start_4
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 p3, v2

    move/from16 p0, v3

    const-wide/16 v2, 0x40

    :try_start_5
    invoke-interface {v12, v14, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 p3, v2

    move/from16 p0, v3

    :goto_8
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_9
    if-eqz v9, :cond_7

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v9}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "isAccessAllowed match found with signature matching..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const/4 v3, 0x1

    goto :goto_d

    :catch_4
    move-exception v0

    :goto_b
    move/from16 v8, p0

    goto :goto_10

    :cond_7
    const-string/jumbo v0, "isAccessAllowed signature mismatch happened...Ignoring package"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_5
    move-exception v0

    move/from16 p0, v3

    goto :goto_b

    :cond_8
    move-object/from16 p3, v2

    move/from16 p0, v3

    const-string/jumbo v0, "isAccessAllowed match found ..."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :cond_9
    move-object/from16 p3, v2

    move/from16 p0, v3

    :goto_c
    move/from16 v3, p0

    move-object/from16 v2, p3

    goto/16 :goto_6

    :cond_a
    move-object/from16 p3, v2

    move/from16 p0, v3

    :goto_d
    if-eqz v3, :cond_b

    goto :goto_e

    :cond_b
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    goto/16 :goto_5

    :cond_c
    move/from16 p0, v3

    goto :goto_e

    :cond_d
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAccessAllowed no packages related to uid-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_e
    :goto_e
    move v8, v3

    goto :goto_f

    :cond_f
    :try_start_8
    const-string/jumbo v0, "getPackagesFromWhiteListAsUser returned empty/null whitelist"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_f
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_11

    :goto_10
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_f

    :goto_11
    return v8

    :goto_12
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isAdminLicenseActive(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 6

    const-string/jumbo v0, "isAdminLicenseActive - enforceMgt :"

    const-string/jumbo v1, "isAdminLicenseActive - adminId "

    const-string/jumbo v2, "isAdminLicenseActive Test adminId-"

    const-string/jumbo v3, "UniversalCredentialManagerService"

    invoke-static {p1, v2, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is expired admin"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo p1, "isAdminLicenseActive - found the storage..."

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isSystemStorage(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo p0, "isAdminLicenseActive - Storage is system. Blocking access"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p1, "enforceManagement"

    invoke-virtual {p0, p1}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    const-string/jumbo p0, "isAdminLicenseActive - admin License is active"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public final isAllowed(II)Z
    .locals 7

    const-string/jumbo v0, "isAllowed container ownerUid - "

    const-string/jumbo v1, "isAllowed: callerUserId - "

    const-string/jumbo v2, "isAllowed: adminUid - "

    const-string v3, ", userId-"

    const-string/jumbo v4, "UniversalCredentialManagerService"

    invoke-static {p1, p2, v2, v3, v4}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-lt p2, v2, :cond_2

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v2, p2, :cond_0

    :try_start_1
    const-string/jumbo p0, "isAllowed: Caller is inside container. match found...."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_2
    const-string/jumbo v1, "isAllowed: Check if caller is owner of container"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p0, p1, :cond_1

    :try_start_3
    const-string/jumbo p0, "isAllowed: match found...."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_1
    :try_start_4
    const-string/jumbo p0, "isAllowed: no match found...."

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v3, v5

    goto :goto_2

    :catch_1
    move-exception p0

    move v3, v5

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    const-string/jumbo p0, "isAllowed: caller app is not in user 0"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v4}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo p0, "isAllowed status-"

    invoke-static {p0, v4, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public final isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 6

    const-string/jumbo v0, "isCallerDelegated is called callerUid-"

    const-string v1, ", userId-"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {p2, p1, v0, v1, v2}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "access_type"

    invoke-virtual {v1, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getPackagesFromWhiteListInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v3, p2

    if-lez v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isCallerDelegated package- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "isCallerDelegated Caller is delegated app..."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p4, p3, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkDelegatorPermission(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "isCallerDelegated Caller is not delegated app..."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const-string/jumbo p0, "isCallerDelegated status "

    invoke-static {p0, v2, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public final isCallerDelegated(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 2

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isCallerDelegated is called...."

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo p0, "cxtInfo is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0

    return p0
.end method

.method public final isCallerPackageManaged()Z
    .locals 6

    const-string/jumbo v0, "isCallerPackageManaged, callingUid: "

    const-string/jumbo v1, "isCallerPackageManaged, Start"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", packageName: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "storagePackageName"

    invoke-static {v0, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "appUid"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "UniversalCredentialInfoTable"

    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string/jumbo p0, "cannot find information"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :catch_1
    const-string/jumbo p0, "cannot get packageName"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isCredentialStorageEnabledForLockType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isCredentialStorageEnabledForLockType is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :try_start_0
    const-string/jumbo v1, "isCredentialStorageEnabledForLockType"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageEnabledForLockTypebyAdmin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public final isCredentialStorageEnabledForLockTypeAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    const-string/jumbo v0, "isCredentialStorageEnabledForLockTypeAsUser"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isCredentialStorageEnabledForLockTypeAsUser is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, p2, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageEnabledForLockTypebyAdmin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isCredentialStorageLocked(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 4

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "isCredentialStorageLocked is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p1, v3, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageLockedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isCredentialStorageLockedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 5

    const-string/jumbo v0, "isCredentialStorageLockedAsUser"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isCredentialStorageLockedAsUser is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string/jumbo v1, "isCredentialStorageLocked"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "status"

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialInfoTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-lez p0, :cond_1

    move v2, p2

    :catch_1
    :cond_1
    return v2
.end method

.method public final isCredentialStorageManaged(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 3

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isCredentialStorageManaged is called...."

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCredentialStorageManagedAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 2

    const-string/jumbo v0, "isCredentialStorageManagedAsUser"

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isCredentialStorageManagedAsUser is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    const-string/jumbo v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string/jumbo p1, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialInfoTable"

    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    const/4 v2, 0x1

    :catch_0
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_2
    return v2
.end method

.method public final isPackageDelegated(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "isPackageDelegated is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "appPackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "accessType"

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p1, "UniversalCredentialWhiteListTable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageFromExemptList(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v3, "isPackageFromExemptList"

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getPackagesFromExemptListAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x3f2

    if-ne v1, v7, :cond_0

    const-string/jumbo v0, "com.samsung.knox.virtual.wifi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "isPackageFromExemptList WIFI special block..."

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v7, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :goto_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    if-eqz v7, :cond_9

    array-length v9, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v5

    :goto_1
    if-ge v5, v9, :cond_6

    :try_start_1
    aget-object v11, v7, v5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isPackageFromExemptList pkgName-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " and DB packageName-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_1

    if-eqz v13, :cond_1

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-eqz v0, :cond_4

    const-string/jumbo v14, "isPackageFromExemptList package matched. Now matching signature...."

    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v14

    if-nez v14, :cond_2

    const-string/jumbo v0, "isPackageFromExemptList - failed to convert signature from db."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    move v5, v10

    goto :goto_9

    :cond_2
    :goto_3
    :try_start_2
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 p2, v14

    const-wide/16 v13, 0x40

    :try_start_3
    invoke-interface {v8, v11, v13, v14, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 p2, v14

    :goto_4
    :try_start_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "isPackageFromExemptList exception - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_5
    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v13, p2

    invoke-static {v0, v13}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "isPackageFromExemptList match found with signature matching..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v10, 0x1

    goto :goto_7

    :cond_3
    const-string/jumbo v0, "isPackageFromExemptList signature mismatch happened...Ignoring package"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, "isPackageFromExemptList match found ..."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_5
    :goto_7
    if-eqz v10, :cond_7

    :cond_6
    move v5, v10

    goto :goto_8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    :try_start_5
    const-string/jumbo v0, "isPackageFromExemptList returned empty/null whitelist"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    :goto_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    :goto_9
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The exception occurs "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :goto_a
    return v5

    :goto_b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "UniversalCredentialManagerService"

    const-string/jumbo p1, "Plugin is active..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSystemStorage(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->systemPlugin:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string/jumbo v4, "android"

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move p0, v1

    :goto_2
    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final isValidCredentialStorage(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string/jumbo v2, "The exception occurs "

    const-string/jumbo v3, "isValidCredentialStorage callerPkg-"

    const-string/jumbo v4, "UniversalCredentialManagerService"

    const-string/jumbo v5, "isValidCredentialStorage isManageable-"

    :try_start_0
    iget-object v7, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getCredentialStorageProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string/jumbo v7, "isManageable"

    invoke-virtual {v1, v7}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "configuratorList"

    invoke-virtual {v1, v5}, Ljava/security/Provider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_a

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v7, p1

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    array-length v9, v8

    move v10, v5

    move v11, v10

    :goto_0
    if-ge v10, v9, :cond_8

    aget-object v12, v8, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    array-length v0, v1

    if-lez v0, :cond_5

    array-length v13, v1

    move v14, v5

    :goto_1
    if-ge v14, v13, :cond_5

    aget-object v0, v1, v14

    const-string v15, "@"

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    aget-object v15, v0, v5

    if-nez v15, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    array-length v15, v0

    const/4 v5, 0x2

    const/16 v16, 0x1

    if-ne v15, v5, :cond_3

    aget-object v5, v0, v16

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " match found. Now Matching signature..."

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v0, v16

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->convertStringToSignature(Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v0, "isValidCredentialStorage - failed to convert signature from db."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    :goto_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    const-wide/16 v6, 0x40

    invoke-interface {v0, v12, v6, v7, v15}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4

    :goto_3
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "isValidCredentialStorage signature match found"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move/from16 v11, v16

    goto :goto_9

    :cond_2
    const-string/jumbo v0, "isValidCredentialStorage signature didn\'t matched"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is allowed to configure storage..."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :cond_4
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, p1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    :goto_9
    if-eqz v11, :cond_6

    goto :goto_a

    :cond_6
    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v11, 0x0

    :cond_8
    :goto_a
    if-eqz v11, :cond_9

    const/4 v5, 0x0

    goto :goto_b

    :cond_9
    const/16 v5, -0x17

    :goto_b
    move v6, v5

    goto :goto_d

    :cond_a
    const/4 v6, 0x0

    goto :goto_d

    :cond_b
    const/16 v6, -0x16

    goto :goto_d

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v4}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_c
    const/16 v6, -0xd

    :goto_d
    return v6
.end method

.method public final lockCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 7

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "lockCredentialStorage is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "lockCredentialStorage"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    const-string/jumbo v3, "enable"

    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v6, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_2
    :try_start_3
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    if-eq v6, v5, :cond_3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_3
    :try_start_4
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->lockCredentialStorageInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_4

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_3
    const/4 p0, -0x1

    return p0

    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final lockCredentialStorageInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    iget-object p2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    iget-object p2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo p2, "status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "UniversalCredentialInfoTable"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p1, "lockCredentialStorageInternal retcode-"

    const-string/jumbo p2, "UniversalCredentialManagerService"

    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ZZ)I

    move-result p0

    return p0
.end method

.method public final manageCredentialStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ZZ)I
    .locals 8

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "manageCredentialStorage is called...."

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :cond_1
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    const-string/jumbo v1, "The exception occurs "

    const-string/jumbo v2, "configureCredentialStorageInternal keyguardCSName -"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, -0x1

    :try_start_0
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p4, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_2
    if-eqz p3, :cond_4

    :try_start_1
    invoke-virtual {p0, p1, p4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isAllowed(II)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_3
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidCredentialStorage(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_4
    :try_start_3
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p4, v6, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v7, 0x1

    if-eq v7, v6, :cond_5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_5
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and CS name -"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo p0, "configureCredentialStorageInternal : Keyguard is setup with CS. Can\'t unmanaged it."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x1a

    return p0

    :cond_6
    :try_start_5
    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addOrUpdateSecureStorageConfig(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mIsSystemReceiverRegistered:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->registerReceiver()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_0
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyLicenseStatus(ILjava/lang/String;)Z
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const-string/jumbo v5, "notifyLicenseStatus"

    invoke-static {v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "notifyLicenseStatus : event-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", packageName-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "UniversalCredentialManagerService"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v9, 0x1

    const-string/jumbo v10, "The exception occurs "

    const/4 v11, 0x0

    if-ne v0, v9, :cond_5

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, -0x1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_LICENSE_ACTIVATE -> expiredAdmins Admin ID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    array-length v9, v8

    if-lez v9, :cond_0

    array-length v9, v8

    move v12, v11

    :goto_1
    if-ge v12, v9, :cond_0

    aget-object v13, v8, v12

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "admin license has renewed, admin-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v0

    move/from16 v16, v11

    goto/16 :goto_c

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-eq v4, v3, :cond_4

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, "notifyChangeToPlugin is called for EVENT_LICENSE_ACTIVATE..."

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "adminUid"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v6, v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    invoke-interface {v0, v5, v6, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyChangeToPlugin Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move/from16 v16, v11

    goto/16 :goto_d

    :cond_5
    const/4 v9, 0x2

    if-ne v0, v9, :cond_4

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-interface {v5, v0, v2, v13}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "Plugin still have permission. Ignoring notification to MDM."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_6
    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-interface {v5, v0, v2, v13}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v5, v4, v2, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-interface {v5, v0, v2, v13}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v5, v3, v2, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move/from16 v16, v11

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v0, v11

    :goto_3
    if-ge v0, v8, :cond_d

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v0, 0x1

    check-cast v13, Ljava/lang/Integer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "notifyLicenseStatus expire to "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_9

    const-string/jumbo v0, "adminPkg is null, so continue..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v14

    goto :goto_3

    :cond_9
    move/from16 v16, v11

    :try_start_3
    array-length v11, v15

    move/from16 v9, v16

    :goto_4
    if-ge v9, v11, :cond_c

    aget-object v0, v15, v9

    move/from16 p1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v9

    const-string/jumbo v9, "Sending event update to package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "event_id"

    move/from16 v19, v11

    const/4 v11, 0x2

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v9, "package_name"

    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v5, v4, v2, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v9, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v9, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_a
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {v5, v3, v2, v0}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-direct {v9, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8, v9, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v0, "notifyLicenseStatus expire done"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    const-string/jumbo v0, "admin does not have proper UCM permission"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v9, v18, 0x1

    move/from16 v8, p1

    move/from16 v11, v19

    goto/16 :goto_4

    :catch_3
    move-exception v0

    goto/16 :goto_c

    :cond_c
    move v0, v14

    move/from16 v11, v16

    const/4 v9, 0x2

    goto/16 :goto_3

    :cond_d
    move/from16 v16, v11

    goto :goto_9

    :goto_8
    const-string/jumbo v0, "caller still have permission. Ignoring it"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_e
    move/from16 v16, v11

    const-string/jumbo v0, "No admin found related to package..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v4, v16

    :cond_f
    :goto_a
    if-ge v4, v3, :cond_11

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Integer;

    iget-object v8, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    array-length v9, v8

    if-lez v9, :cond_f

    array-length v9, v8

    move/from16 v11, v16

    :goto_b
    if-ge v11, v9, :cond_f

    aget-object v12, v8, v11

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "admin license has expired, admin-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->processAdminLicenseExpiry(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v7}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_11
    :goto_d
    return v16
.end method

.method public final notifyToPlugin(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)V
    .locals 5

    const-string/jumbo v0, "notifyToPlugin eventId-10, adminUid-"

    const-string v1, ", userId-"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {p1, p3, v0, v1, v2}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "adminUid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "userId"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAliasesInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    const-string/jumbo v4, "aliases"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->processPackagesForPlugin(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p1, "notifyChangeToPlugin is called for plugin unmanaged..."

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    invoke-interface {p0, v1, p1, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final notifyUCMConfigStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatusByPermission(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatusByPermission(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatusByPermission(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1482

    if-ne v1, p1, :cond_3

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final notifyUCMConfigStatus(Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "notifyUCMConfigStatus requestId -"

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "notifyUCMConfigStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerPackageManaged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCallerPermissionFor(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    const-string/jumbo v4, "request_id"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v6, "adminUid"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "status_code"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", adminUid-"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    if-eq v7, v8, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v4, v0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v7, v0, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Sending config update to package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, v6, v7, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyUCMConfigStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v7

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The exception occurs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catch_1
    :try_start_3
    const-string/jumbo p0, "notifyUCMConfigStatus failed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyUCMConfigStatusByPermission(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "Package has UCM permission. : "

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p4, p1, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-virtual {v0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.UCM_CONFIG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
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
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final performCredentialStorageCleanup(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)V
    .locals 6

    const-string/jumbo v0, "UniversalCredentialWhiteListTable"

    const-string/jumbo v1, "UniversalCredentialCertificateTable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v2, "storageName"

    const-string/jumbo v3, "storagePackageName"

    const-string/jumbo v4, "adminUid"

    const-string/jumbo v5, "userId"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    filled-new-array {p1, p3, v3, p2}, [Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    const-string/jumbo p3, "performCredentialStorageCleanup Clean certificate status-"

    const-string/jumbo v3, "UniversalCredentialManagerService"

    invoke-static {p3, v3, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_1
    iget-object p3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p3, v0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string/jumbo p3, "performCredentialStorageCleanup WhiteList APP status-"

    invoke-static {p3, v3, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_2
    iget-object p3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "UniversalCredentialDefaultInstallTable"

    invoke-virtual {p3, v4, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const-string/jumbo p3, "performCredentialStorageCleanup Default Install status-"

    invoke-static {p3, v3, p2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "UniversalCredentialExemptTable"

    invoke-virtual {v4, v5, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    return-void
.end method

.method public final processAdminLicenseExpiry(I)V
    .locals 10

    const-string/jumbo v0, "adminUid"

    const-string/jumbo v1, "storageName"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getStoragesRelatedToAdminId adminId-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UniversalCredentialManagerService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "UniversalCredentialInfoTable"

    invoke-virtual {v8, v9, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Landroid/content/ContentValues;

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->expiredAdmins:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processAdminLicenseExpiry expired admin-"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "processAdminLicenseExpiry is called for license expiry..."

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v4, p1, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    check-cast v0, Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xd

    invoke-interface {p0, v0, v5, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "The exception occurs "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v3}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final processPackagesForPlugin(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    const-string/jumbo v8, "The exception occurs "

    const-string/jumbo v2, "processPackagesForPlugin - adminUid"

    const-string v4, ", userId-"

    const-string v6, ", Storage -"

    invoke-static {v0, v3, v2, v4, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v5, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    const-string/jumbo v9, "UniversalCredentialManagerService"

    invoke-static {v2, v4, v9}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, v3, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminIdRelatedToStorageAsUser(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Ljava/util/List;

    move-result-object v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v2

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v12, :cond_4

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v2, 0x1

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_0

    const-string/jumbo v2, "storageAdmin is null, continue..."

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v2, v14

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "adminUid related to storage is - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring current adminUid  - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x67

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getWhitelistedData(IIILcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_2
    :goto_2
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v15, "appPackage"

    invoke-virtual {v6, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Adding app in whitelistPkgsByOtherAdmin -"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v5, p3

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v2, "package_access_type"

    if-nez v0, :cond_5

    :try_start_1
    const-string v0, "Blocking all packages..."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "*"

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Allowing all packages..."

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_8

    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_9

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v0, 0x1

    check-cast v11, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Allowed pkg - "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v13, 0x40

    :try_start_2
    invoke-interface {v5, v11, v13, v14, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_8

    const-string/jumbo v0, "pkgInfo is null"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_5
    move v0, v12

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v11, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_6
    if-ge v3, v1, :cond_b

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_a

    const-string/jumbo v5, "id is null, continue..."

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "adding id-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x3

    invoke-virtual {v7, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "allowed_packages"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v9}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_c
    :goto_8
    return-void
.end method

.method public final registerReceiver()V
    .locals 15

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    const-string/jumbo v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    const-string/jumbo v3, "android.intent.action.SCREEN_ON"

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v8

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mSystemReceiver:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPackageRemovedReceiver:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$2;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v11, v7

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mIsSystemReceiverRegistered:Z

    return-void
.end method

.method public final removeCertificatefromProvider(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const-string/jumbo v0, "wifi"

    const-string/jumbo v1, "removeCertificatefromProvider is called for userId-"

    const-string v2, " and adminId-"

    const-string v3, " and alias-"

    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "UniversalCredentialManagerService"

    invoke-static {v1, p5, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, -0x1

    :try_start_0
    const-string/jumbo v4, "storageName"

    const-string/jumbo v5, "storagePackageName"

    const-string/jumbo v6, "alias"

    const-string/jumbo v7, "userId"

    const-string/jumbo v8, "adminUid"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {p3, p4, p5, v5, v6}, [Ljava/lang/String;

    move-result-object p4

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v6, "UniversalCredentialCertificateTable"

    invoke-virtual {p0, v6, v4, p4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v4, 0x1

    if-lez p4, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    move v6, v1

    move v5, v4

    :cond_0
    :goto_0
    if-ge v6, p4, :cond_1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :catch_0
    move-exception p0

    move p2, v1

    goto :goto_3

    :cond_1
    move v4, v5

    :cond_2
    new-instance p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {p0, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->deleteCertificate(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string/jumbo p2, "booleanresponse"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    if-eqz p1, :cond_4

    :try_start_1
    const-string/jumbo p3, "errorresponse"

    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "removeCertificatefromProvider : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, "; csUri="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_5
    move p2, v1

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "The exception occurs "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4
    if-eqz p2, :cond_6

    goto :goto_5

    :cond_6
    move v1, v3

    :goto_5
    return v1
.end method

.method public final removeCredentialStorageLockType(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 7

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "removeCredentialStorageLockType result - "

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v3, "adminUid"

    const-string/jumbo v4, "userId"

    const-string/jumbo v5, "storageName"

    const-string/jumbo v6, "storagePackageName"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, p3, v2, p2}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "UniversalCredentialEnabledLockTypeTable"

    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p1, "removeCredentialStorageLockType retcode-"

    invoke-static {p1, v0, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final removeExemptPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)Z
    .locals 14

    const-string/jumbo v1, "UniversalCredentialExemptTable"

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removeExemptPackages - WhiteList app size -"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/AppIdentity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "removeExemptPackages - pkg : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "removeExemptPackages exempt type-"

    move/from16 v7, p5

    invoke-static {v7, v6, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "storageName"

    const-string/jumbo v11, "storagePackageName"

    const-string/jumbo v8, "adminUid"

    const-string/jumbo v9, "userId"

    const-string/jumbo v12, "exemptType"

    const-string/jumbo v13, "appPackage"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v11, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v8, v1, v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v5, "removeExemptPackages - failed to remove record..."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move/from16 v7, p5

    const-string/jumbo v4, "removeExemptPackages clearing all packages...."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "userId"

    const-string/jumbo v5, "storageName"

    const-string/jumbo v6, "adminUid"

    const-string/jumbo v8, "storagePackageName"

    const-string/jumbo v9, "exemptType"

    filled-new-array {v6, v4, v5, v8, v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v6, v8, v0, v7}, [Ljava/lang/String;

    move-result-object v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    const-string/jumbo p0, "removeExemptPackages retcode-"

    invoke-static {p0, v2, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method public final removeODESettingsForWPC()I
    .locals 5

    const-string/jumbo p0, "The exception occurs "

    const-string/jumbo v0, "removeODEConfigForWPC is called...."

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "removeODEConfigForWPC is called for plugin unmanaged..."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeWpcOdeSettings()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    const/4 p0, -0x1

    return p0

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "removeODESettingsForWPC is called by not-proper caller"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removePackagesFromExemptList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;ILjava/util/List;)I
    .locals 11

    const-string/jumbo v1, "The exception occurs "

    const-string/jumbo v2, "UniversalCredentialManagerService"

    const-string/jumbo v0, "removePackagesFromExemptList is called...."

    invoke-static {p1, p2, v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "removePackagesFromExemptList"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    const-string/jumbo v3, "authType"

    const/16 v4, 0x6a

    if-ne p3, v4, :cond_1

    const-string v4, "AUTH"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "OTHER"

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v9, v0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_2
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_3
    :try_start_3
    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v0, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, p1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_4

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_4
    :try_start_4
    invoke-static {p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidExemptType(I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string/jumbo p0, "removePackagesFromExemptList - Invalid Exempt Type..."

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x15

    return p0

    :cond_5
    move-object v5, p0

    move-object v6, p2

    move v10, p3

    move-object v7, p4

    :try_start_5
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->removeExemptPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;III)Z

    move-result p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p0, :cond_6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_5
    const/4 p0, -0x1

    return p0

    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final removePackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p4

    const-string/jumbo v8, "The exception occurs "

    const-string/jumbo v4, "removePackagesFromWhiteList alias-"

    const-string/jumbo v9, "UniversalCredentialManagerService"

    const-string/jumbo v0, "removePackagesFromWhiteList is called...."

    invoke-static {v2, v7, v9, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_8

    :cond_0
    :try_start_0
    const-string/jumbo v0, "removePackagesFromWhiteList"

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Exception = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v9}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x6b

    invoke-virtual {v1, v5, v0, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCallerDelegated(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_1

    const-string/jumbo v2, "removePackagesFromWhiteList caller is valid delegated app..."

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    move v0, v11

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    move v2, v0

    move v0, v10

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    const/4 v14, -0x1

    :try_start_1
    iget-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v15, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v5, v15, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x12

    return v0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :cond_2
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v0, "Plugin is not active"

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xd

    return v0

    :cond_3
    :try_start_3
    iget-object v6, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v15, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6, v15}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v11, v6, :cond_4

    if-nez v0, :cond_4

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xc

    return v0

    :cond_4
    :try_start_4
    const-string/jumbo v0, "access_type"

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidAccessType(I)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_5

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xf

    return v0

    :cond_5
    const/16 v6, 0x68

    if-ne v0, v6, :cond_8

    :try_start_5
    const-string/jumbo v6, "alias"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_6

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0x10

    return v0

    :cond_6
    :try_start_6
    iget-object v4, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move v3, v5

    iget-object v5, v7, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCredentialStorageAliasForAdmin(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eq v11, v4, :cond_7

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v0, -0xe

    return v0

    :cond_7
    move-object/from16 v1, p0

    move v4, v2

    move v5, v3

    :goto_2
    move-object v2, v7

    move-object/from16 v3, p3

    move-object v7, v6

    move v6, v0

    goto :goto_3

    :cond_8
    move v3, v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v4, v2

    goto :goto_2

    :goto_3
    :try_start_7
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->removeWhiteListPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IIILjava/lang/String;)Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne v11, v0, :cond_9

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_9
    :goto_4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :goto_5
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :goto_6
    return v14

    :goto_7
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_a
    :goto_8
    const/16 v0, -0xb

    return v0
.end method

.method public final removeWhiteListPackages(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/util/List;IIILjava/lang/String;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    move-object/from16 v8, p6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "removeWhiteListPackages - WhiteList app size -"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "UniversalCredentialManagerService"

    invoke-static {v10, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string/jumbo v13, "UniversalCredentialWhiteListTable"

    if-eqz v3, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/AppIdentity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "removeWhiteListPackages - pkg : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v14, "removeWhiteListPackages - failed to remove record..."

    const-string/jumbo v4, "removeWhiteListPackages access_type-"

    if-nez v8, :cond_1

    invoke-static {v2, v4, v10}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "storageName"

    const-string/jumbo v18, "storagePackageName"

    const-string/jumbo v15, "adminUid"

    const-string/jumbo v16, "userId"

    const-string/jumbo v19, "accessType"

    const-string/jumbo v20, "appPackage"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    iget-object v5, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v5, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v13, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and alias-"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "storagePackageName"

    const-string/jumbo v19, "accessType"

    const-string/jumbo v15, "adminUid"

    const-string/jumbo v16, "userId"

    const-string/jumbo v17, "storageName"

    const-string/jumbo v20, "alias"

    const-string/jumbo v21, "appPackage"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v15

    move-object v4, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    iget-object v5, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v1, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    move-object v9, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    :try_start_1
    iget-object v4, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4, v13, v15, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v10, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object/from16 v8, p6

    goto/16 :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v0, v13}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCountFromEdmDB(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    invoke-virtual {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->updateUcmCryptoProp()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeWhiteListPackages retcode-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public final setAuthType(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 7

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "setAuthType is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 p0, -0xb

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "setAuthType"

    iget-object v3, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x64

    const-string/jumbo v4, "authType"

    if-ne p3, v3, :cond_1

    :try_start_1
    const-string v3, "LOCK"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x69

    if-ne p3, v3, :cond_2

    const-string/jumbo v3, "NONE"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v6, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x12

    return p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo p0, "Storage is not active"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xd

    return p0

    :cond_4
    :try_start_4
    iget-object v5, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v5, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x1

    if-eq v6, v5, :cond_5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0xc

    return p0

    :cond_5
    :try_start_5
    invoke-static {p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidAuthType(I)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo p0, "setAuthType - Invalid AUTH Type..."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x11

    return p0

    :cond_6
    :try_start_6
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->setAuthTypeInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string/jumbo p0, "setAuthTypeInternal is successful"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    :goto_4
    :try_start_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :goto_5
    const/4 p0, -0x1

    return p0

    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setAuthTypeInternal(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "userId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "storageName"

    iget-object p2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "storagePackageName"

    iget-object p2, p3, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo p2, "storageAuthType"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "UniversalCredentialInfoTable"

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo p1, "setAuthTypeInternal retcode-"

    const-string/jumbo p2, "UniversalCredentialManagerService"

    invoke-static {p1, p2, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final setCredentialStorageProperty(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "UniversalCredentialManagerService"

    const-string/jumbo v2, "setPackageSetting is called...."

    invoke-static {p1, p2, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    const-string/jumbo v2, "setCredentialStorageProperty"

    iget-object v4, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_1
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v2, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo p0, "Plugin is not active.."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_2
    :try_start_3
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v6, v7}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v6, 0x1

    if-eq v6, p0, :cond_3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :cond_3
    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string/jumbo v6, "setCredentialStorageProperty - pass to agent..."

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {v6, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {v6, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setCredentialStorageProperty(ILjava/lang/String;Landroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_4
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :goto_3
    return-object v3

    :goto_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDefaultInstallStorage(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I
    .locals 9

    const-string/jumbo v0, "The exception occurs "

    const-string/jumbo v1, "setDefaultInstallStorage callerUid - "

    const-string/jumbo v2, "setDefaultInstallStorage container ownerUid - "

    const-string/jumbo v3, "UniversalCredentialManagerService"

    const-string/jumbo v4, "setDefaultInstallStorage is called...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eqz p2, :cond_1

    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->signature:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v7, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p1, v7, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateSignature(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/16 p0, -0x12

    return p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isPluginActive(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string/jumbo p0, "Plugin is not active"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xd

    return p0

    :cond_1
    const-string/jumbo p1, "setDefaultInstallStorage"

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v6, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "null"

    invoke-static {p1, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    const/16 p1, 0xa

    if-lt v5, p1, :cond_3

    :try_start_1
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v4, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not owner of container. Request fail..."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, -0x18

    return p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result p1

    const/16 v1, -0xc

    if-eqz p1, :cond_4

    iget-object p1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, p1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isCredentialStorageManagedInternal(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x1

    if-eq v2, p1, :cond_5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_4
    const/4 p1, 0x0

    :try_start_3
    invoke-virtual {p0, v4, v5, p1, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkDefaultInstallCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_5
    :try_start_4
    invoke-virtual {p0, v4, p2, v5}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->setDefaultInstallStorageInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    :goto_3
    return p0

    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDefaultInstallStorageInternal(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 8

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "setDefaultInstallStorageInternal result-"

    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->isValidParam(Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "UniversalCredentialDefaultInstallTable"

    const-string/jumbo v4, "userId"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    :try_start_1
    const-string/jumbo p2, "setDefaultInstallStorageInternal cs is null so removing admin entry..."

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "adminUid"

    filled-new-array {p3, v4}, [Ljava/lang/String;

    move-result-object p3

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v3, p3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "storageName"

    invoke-virtual {v6, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "storagePackageName"

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-lez v1, :cond_2

    :try_start_3
    iget-object v1, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkDefaultInstallCredentialStorageExistsForAdmin(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "configureSecureStorageInternal record already exist..."

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    const-string/jumbo p0, "setDefaultInstallStorageInternal Credential storage is configured by some other admin"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, -0xa

    return p0

    :catch_1
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->addOrUpdateDefaultInstallStorage(ILcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz p0, :cond_3

    :goto_0
    return v5

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final setKeyPairCertificate(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Ljava/lang/String;[B)Z
    .locals 13

    const-string/jumbo v1, "UniversalCredentialManagerService"

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)V

    :try_start_0
    const-string/jumbo v0, "setKeyPairCertificate"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object/from16 v7, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCertificateMain(IILcom/samsung/android/knox/ucm/configurator/CredentialStorage;[BLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZZ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo p1, "setKeyPairCertificate. Failed : "

    invoke-static {p0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setKeyguardPinMaximumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "setKeyguardPinMaximumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "setKeyguardPinMaximumLength"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setKeyguardPinMaximumLength(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final setKeyguardPinMaximumRetryCount(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "setKeyguardPinMaximumRetryCount is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "setKeyguardPinMaximumRetryCount"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setKeyguardPinMaximumRetryCount(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final setKeyguardPinMinimumLength(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;I)I
    .locals 4

    const-string/jumbo v0, "UniversalCredentialManagerService"

    const-string/jumbo v1, "setKeyguardPinMinimumLength is called...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->validateContextInfo(Lcom/samsung/android/knox/ContextInfo;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkContext(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;Z)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v1, "setKeyguardPinMinimumLength"

    iget-object v2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getKAData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->checkCS(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService$1()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    iget-object p2, p2, Lcom/samsung/android/knox/ucm/configurator/CredentialStorage;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setKeyguardPinMinimumLength(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getReturnvalue(Landroid/os/Bundle;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "The exception occurs "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method

.method public final updateUcmCryptoProp()V
    .locals 6

    const-string/jumbo v0, "persist.security.ucmcrypto"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v3, "security.ucmcrypto"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistCert:Z

    if-nez v5, :cond_1

    iget-boolean p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mExistWhitelist:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    const-string/jumbo p0, "false"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->updateUcmProvider(Z)V

    return-void

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    if-nez v4, :cond_2

    const-string/jumbo p0, "true"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->updateUcmProvider(Z)V

    :cond_2
    return-void
.end method
