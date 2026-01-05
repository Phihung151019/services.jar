.class public final Lcom/android/server/enterprise/dex/DexPolicy;
.super Lcom/samsung/android/knox/dex/IDexPolicy$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static isBlockerRegistered:Z


# instance fields
.field public final blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

.field public mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mContext:Landroid/content/Context;

.field public mContext_temp:Lcom/samsung/android/knox/ContextInfo;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

.field public final mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

.field public restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;


# direct methods
.method public static -$$Nest$menableEthernetOnlyRestriction(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "enableEthernetOnlyRestriction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    :cond_1
    return-void
.end method

.method public static -$$Nest$mhandleDexModePackageDisable(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "adminUid"

    const-string v1, "DexPolicyService"

    const-string/jumbo v2, "handleDexModePackageDisable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ADMIN"

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v6, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_0
    :goto_0
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v7, 0x1

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v8, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDexModePackageDisable : failed "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static -$$Nest$mhandleDexModePackageEnable(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "adminUid"

    const-string/jumbo v1, "handleDexModePackageEnable : Admin list size() : "

    const-string v2, "DexPolicyService"

    const-string/jumbo v3, "handleDexModePackageEnable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ADMIN"

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v8, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v8, v1, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v7, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v7, v10}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v7, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleDexModePackageEnable : failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public static -$$Nest$mremoveEthernetOnlyRestriction(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "removeEthernetOnlyRestriction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getAdminUidForEthernetOnly(Lcom/android/server/enterprise/storage/EdmStorageProvider;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext_temp:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dex/DexPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/dex/IDexPolicy$Stub;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$1;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v0, "com.samsung.android.desktopmode.action.ENTER_DESKTOP_MODE"

    const-string/jumbo v1, "com.samsung.android.desktopmode.action.EXIT_DESKTOP_MODE"

    const-string/jumbo v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy$DexStateManager;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/enterprise/dex/DexPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/dex/DexPolicy$2;-><init>(Lcom/android/server/enterprise/dex/DexPolicy;)V

    const/4 p0, 0x2

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final addPackageToDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "addPackageToDisableList"

    const-string v1, "DexPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo p0, "addPackageToDisableList already blocked package"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo p0, "addPackageToDisableList : "

    const-string p1, " is not installed"

    invoke-static {p0, p2, p1, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v2

    return p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "addPackageToDisableList : failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public final allowScreenTimeoutChange(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    const-string v1, "DEX_POLICY"

    const-string/jumbo v5, "screenTimeoutChangeAllowed"

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p2

    const-string v3, "DEX_POLICY"

    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-nez v4, :cond_0

    const-string/jumbo v4, "restriction_policy"

    invoke-static {v4}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    iput-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    :cond_0
    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "wifi_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    :cond_1
    iget-object v4, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    const-string/jumbo v5, "failed to set applyEthernetOnly"

    const-string v6, "DexPolicyService"

    if-nez v4, :cond_2

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v4, "applyEthernetOnly - "

    invoke-static {v4, v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v7, "wifi"

    const-string/jumbo v8, "phone"

    const/4 v9, 0x0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "RESTRICTION"

    const-string/jumbo v3, "store current status - cell - "

    :try_start_0
    iget-object v10, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v11, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v12, "cellularDataEnabled"

    invoke-virtual {v10, v11, v9, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v11, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v13, "WIFI"

    const-string/jumbo v14, "allowWifi"

    invoke-virtual {v11, v12, v9, v13, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    iget-object v12, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v13, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v14, "usbTetheringEnabled"

    invoke-virtual {v12, v13, v9, v0, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v13, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v14, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v15, "wifiTetheringEnabled"

    invoke-virtual {v13, v14, v9, v0, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v14, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v15, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v4, "bluetoothTetheringEnabled"

    invoke-virtual {v14, v15, v9, v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  wifi - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  usbTether - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  WifiTether - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  BtTether - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    move/from16 v19, v4

    move/from16 v23, v11

    move/from16 v27, v12

    move/from16 v31, v13

    move v13, v10

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :goto_1
    const/4 v4, 0x1

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_2
    const/4 v4, 0x1

    :goto_3
    const/4 v13, 0x1

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_2

    :goto_4
    const/4 v4, 0x1

    :goto_5
    const/4 v12, 0x1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :goto_6
    const/4 v4, 0x1

    :goto_7
    const/4 v11, 0x1

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_6

    :goto_8
    const/4 v4, 0x1

    const/4 v10, 0x1

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_8

    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "storeCurrentPolicy() failed "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_a
    iget-object v10, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v15, "prevCellularData"

    const/4 v14, 0x0

    const-string v11, "DEX_POLICY"

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v25, "prevWifi"

    const/16 v24, 0x0

    const-string v21, "DEX_POLICY"

    move-object/from16 v20, v0

    move/from16 v22, v3

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v29, "prevUsbTethering"

    const/16 v28, 0x0

    const-string v25, "DEX_POLICY"

    move-object/from16 v24, v0

    move/from16 v26, v3

    invoke-virtual/range {v24 .. v29}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v33, "prevWifiTethering"

    const/16 v32, 0x0

    const-string v29, "DEX_POLICY"

    move-object/from16 v28, v0

    move/from16 v30, v3

    invoke-virtual/range {v28 .. v33}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v21, "prevBtTethering"

    const/16 v20, 0x0

    const-string v17, "DEX_POLICY"

    move-object/from16 v16, v0

    move/from16 v18, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v3, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v13

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v19

    iget-object v10, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v12, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v15, "prevDataStatus"

    const/4 v14, 0x0

    const-string v11, "DEX_POLICY"

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v21, "prevWifiStatus"

    const/16 v20, 0x0

    const-string v17, "DEX_POLICY"

    move-object/from16 v16, v0

    move/from16 v18, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, v2, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    invoke-virtual {v0, v2, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :try_start_6
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    invoke-interface {v0, v2, v9}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :catch_6
    move-exception v0

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :goto_c
    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    goto/16 :goto_19

    :cond_3
    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    :try_start_7
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "prevCellularData"

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v10, v9

    :cond_4
    if-ge v10, v4, :cond_5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    if-nez v11, :cond_4

    goto :goto_d

    :catch_7
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isPrevCellDataEnabled : failed "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setCellularData(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :goto_d
    :try_start_8
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "prevWifi"

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v10, v9

    :cond_6
    if-ge v10, v4, :cond_7

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    if-nez v11, :cond_6

    goto :goto_e

    :catch_8
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isPrevWifiEnabled : failed "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7
    :try_start_9
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mIWifipolicy:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    const/4 v4, 0x1

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_e

    :catch_9
    move-exception v0

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    :try_start_a
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "prevWifiTethering"

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v9

    :cond_8
    if-ge v5, v4, :cond_9

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    if-nez v10, :cond_8

    goto :goto_f

    :catch_a
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isPrevWifiTetheringEnabled : failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_9
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :goto_f
    :try_start_b
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "prevUsbTethering"

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v9

    :cond_a
    if-ge v5, v4, :cond_b

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    if-nez v10, :cond_a

    goto :goto_10

    :catch_b
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isPrevUsbTetheringEnabled : failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :goto_10
    :try_start_c
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "prevBtTethering"

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v9

    :cond_c
    if-ge v5, v4, :cond_d

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    if-nez v10, :cond_c

    goto :goto_11

    :catch_c
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isPrevBtTetheringEnabled : failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v6}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_d
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->restrictionPolicy:Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Lcom/samsung/android/knox/ContextInfo;Z)Z

    :goto_11
    const-string/jumbo v4, "restoreNetworkStatus : failed "

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/net/wifi/WifiManager;

    :try_start_d
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v10, "prevDataStatus"

    invoke-virtual {v0, v8, v9, v3, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :try_start_e
    iget-object v0, v1, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v2, "prevWifiStatus"

    invoke-virtual {v0, v1, v9, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_14

    :catch_d
    move-exception v0

    goto :goto_13

    :goto_12
    move v8, v9

    goto :goto_13

    :catch_e
    move-exception v0

    goto :goto_12

    :goto_13
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "restoreNetworkStatus() failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    if-eqz v8, :cond_e

    const/4 v3, 0x1

    :try_start_f
    invoke-virtual {v5, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_15

    :catchall_0
    move-exception v0

    goto :goto_18

    :catch_f
    move-exception v0

    goto :goto_16

    :cond_e
    const/4 v3, 0x1

    :goto_15
    if-eqz v9, :cond_f

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_17

    :goto_16
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_f
    :goto_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :goto_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_19
    return-void
.end method

.method public final disablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "packageName"

    const-string/jumbo v5, "controlState"

    const-string v2, "APPLICATION"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move p2, v2

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p2

    invoke-virtual {p2, p1, v4, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    const/4 p1, 0x1

    invoke-virtual {p0, v1, v4, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->updatePackageControlState(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setControlStateMask : failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "DexPolicyService"

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 14

    move-object/from16 v0, p2

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "Permission Denial: can\'t dump DexPolicy"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    const-string/jumbo v12, "screenTimeoutChangeAllowed"

    const-string/jumbo v13, "useDexStationMacAddress"

    const-string/jumbo v1, "adminUid"

    const-string/jumbo v2, "dexDisabled"

    const-string/jumbo v3, "ethernetOnlyEnabled"

    const-string/jumbo v4, "prevCellularData"

    const-string/jumbo v5, "prevWifi"

    const-string/jumbo v6, "prevWifiTethering"

    const-string/jumbo v7, "prevUsbTethering"

    const-string/jumbo v8, "prevBtTethering"

    const-string/jumbo v9, "prevDataStatus"

    const-string/jumbo v10, "prevWifiStatus"

    const-string/jumbo v11, "ethernetOnlyApplied"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "DEX_POLICY"

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "packageName"

    const-string/jumbo v5, "controlStateOnDex"

    const-string v2, "APPLICATION"

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    move p2, v6

    :cond_1
    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v4, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    :cond_2
    invoke-virtual {p0, v1, v4, v6}, Lcom/android/server/enterprise/dex/DexPolicy;->updatePackageControlState(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setControlStateMask : failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "DexPolicyService"

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    const-string v1, "DEX_POLICY"

    const-string/jumbo v5, "ethernetOnlyEnabled"

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    return p2

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->applyEthernetOnly(Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_1
    return p2
.end method

.method public final enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceVirtualMacAddress(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v4, 0x0

    const-string v1, "DEX_POLICY"

    const-string/jumbo v5, "useDexStationMacAddress"

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "application_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mApplicationPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public final getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3

    const-string v0, "DexPolicyService"

    const-string/jumbo v1, "getPackagesFromDisableList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mInjector:Lcom/android/server/enterprise/dex/DexPolicy$Injector;

    iget-object v0, v0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_DEX"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "adminUid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DEX_POLICY"

    const-string/jumbo v1, "dexApplicationDisableList"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getPackagesFromDisableList : failed "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ApplicationPolicy"

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getVirtualMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isDexActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final isDexDisabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "dexDisabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isDexDisabled : failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DexPolicyService"

    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final isEthernetOnlyEnforced()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "ethernetOnlyEnabled"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isEthernetOnlyEnforced : failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DexPolicyService"

    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final isScreenTimeoutChangeAllowed()Z
    .locals 4

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DEX_POLICY"

    const-string/jumbo v1, "screenTimeoutChangeAllowed"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    return v2

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isScreenTimeoutChangeAllowed : failed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "DexPolicyService"

    invoke-static {p0, v0, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isVirtualMacAddressEnforced()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DEX_POLICY"

    const-string/jumbo v2, "useDexStationMacAddress"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isVirtualMacAddressEnforced : failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "DexPolicyService"

    invoke-static {p0, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public final isWirelessDexEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object p0

    const-string v0, "DexPolicyService"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result p0

    if-ne p0, v2, :cond_0

    const-string/jumbo p0, "isWirelessDexEnabled:true"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo p0, "isWirelessDexEnabled:false"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 5

    sget-boolean p1, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "DexPolicyService"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "desktopmode"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v4, p0, Lcom/android/server/enterprise/dex/DexPolicy;->blocker:Lcom/android/server/enterprise/dex/DexPolicy$1;

    invoke-virtual {v3, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterBlocker(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;)V

    sput-boolean v0, Lcom/android/server/enterprise/dex/DexPolicy;->isBlockerRegistered:Z

    const-string/jumbo v3, "registerDexBlocker was unregistered"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo v3, "unRegisterDexBlocker was failed"

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->isEthernetOnlyApplied(Lcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->showEthernetOnlyNotification(Z)V

    :cond_1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public final removePackageFromDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I
    .locals 4

    const-string/jumbo v0, "removePackageFromDisableList"

    const-string v1, "DexPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->getPackagesFromDisableList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo p0, "removePackageFromDisableList not find blocked package name"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/dex/DexPolicy;->writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->isDexActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dex/DexPolicy;->enablePackage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    xor-int/lit8 p0, v0, 0x1

    return p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "removePackageFromDisableList : failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public final setDexDisabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dex/DexPolicy;->enforceOwnerOnlyAndDexPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "DEX_POLICY"

    const-string/jumbo v5, "dexDisabled"

    const/4 v4, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "mirror_built_in_display"

    invoke-static {v0, v3, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->isWirelessDexEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "display"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setEthernetOnlyApplied(Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 8

    const-string/jumbo v0, "setEthernetOnlyApplied - "

    const-string v1, "DexPolicyService"

    invoke-static {v0, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "DEX_POLICY"

    const-string/jumbo v7, "ethernetOnlyApplied"

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    return-void
.end method

.method public final showEthernetOnlyNotification(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const v1, 0x1040487

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const-string v2, "DexPolicyService"

    if-nez v1, :cond_0

    const-string p0, "Failed to get NotificationManager"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/16 v5, 0x11cd

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "MDM_DEXPOLICY"

    invoke-direct {p1, p0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const p0, 0x108078c

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string p0, "Dex Ethernet only mode"

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "showEthernetOnlyNotification was failed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method

.method public final updatePackageControlState(ILjava/lang/String;Z)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/dex/DexPolicy;->getApplicationPolicy$1()Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "updatePackageControlStateForDex - write dexControlState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "controlStateOnDex"

    const-string v4, "APPLICATION"

    const-string/jumbo v5, "packageName"

    move v3, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    move v1, v3

    move-object v5, v6

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-eqz p3, :cond_1

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, -0x3

    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "controlStateOnDex"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "APPLICATION"

    const-string/jumbo v4, "packageName"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public final writePackageDisableList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 9

    const-string/jumbo v0, "adminUid"

    const-string v1, "DexPolicyService"

    const-string v2, "DEX_POLICY"

    const-string/jumbo v3, "writePackageList(dexApplicationDisableList) : insert : ret : "

    const-string/jumbo v4, "writePackageList(dexApplicationDisableList) : update : ret : "

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object p2

    const-string/jumbo v8, "dexApplicationDisableList"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object p2, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p2, v2, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "writePackageList : failed "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v5
.end method
