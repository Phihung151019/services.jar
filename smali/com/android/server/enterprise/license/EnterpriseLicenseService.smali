.class public final Lcom/android/server/enterprise/license/EnterpriseLicenseService;
.super Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/license/IDeviceProfileObserver;


# static fields
.field public static final MY_PID:I

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mPMS:Landroid/content/pm/IPackageManager;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mElmPkgRecords:Ljava/util/Map;

.field public final mKlmElmChangeList:Ljava/util/List;

.field public final mKlmPkgRecords:Ljava/util/Map;

.field public final mPackageRemovedReceiver:Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

.field public mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

.field public final samsungSpecialPackages:Ljava/util/List;

.field public final throttler:Lcom/android/server/enterprise/license/LicenseThrottler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/knox/license/IEnterpriseLicense$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sec.knox.kccagent"

    invoke-static {v1}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->samsungSpecialPackages:Ljava/util/List;

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    iput-object v3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPackageRemovedReceiver:Lcom/android/server/enterprise/license/EnterpriseLicenseService$1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    new-instance p2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    sget-object p2, Lcom/android/server/enterprise/license/LicenseThrottler;->instance:Lcom/android/server/enterprise/license/LicenseThrottler;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/server/enterprise/license/LicenseThrottler;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p2, Lcom/android/server/enterprise/license/LicenseThrottler;->mapping:Ljava/util/HashMap;

    sput-object p2, Lcom/android/server/enterprise/license/LicenseThrottler;->instance:Lcom/android/server/enterprise/license/LicenseThrottler;

    :cond_0
    sget-object p2, Lcom/android/server/enterprise/license/LicenseThrottler;->instance:Lcom/android/server/enterprise/license/LicenseThrottler;

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->throttler:Lcom/android/server/enterprise/license/LicenseThrottler;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-direct {v5, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p2, "package"

    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    new-instance p1, Lcom/android/server/enterprise/license/DeviceProfileListener;

    invoke-direct {p1}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string/jumbo p2, "[EnterpriseLicenseService] DeviceProfileListener"

    const-string/jumbo v0, "registerObserver()"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/server/enterprise/license/DeviceProfileListener;->mObservers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static getMaskedKlm(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    :goto_0
    const-string p0, ""

    return-object p0

    :cond_2
    aget-object v2, p0, v0

    const/4 v0, 0x1

    aget-object v3, p0, v0

    const/4 v0, 0x2

    aget-object v4, p0, v0

    const/4 v0, 0x3

    aget-object v5, p0, v0

    const/4 v0, 0x4

    aget-object v6, p0, v0

    const/4 v0, 0x5

    aget-object v7, p0, v0

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaskedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    new-array v0, v0, [C

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    const-string v0, "\u0000"

    const-string v4, "*"

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static isLicenseLocked(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getAttributes(I)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x10

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string/jumbo p0, "isLicenseLocked : "

    const-string v0, "EnterpriseLicenseService"

    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public static resetELMInfo(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v1, "pkgName"

    invoke-static {v1, p0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE"

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method

.method public static unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    const-string/jumbo v0, "unregisterLicenseResultRecord() for "

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v0, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DeathRecipient unlinked from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const-string/jumbo p1, "license record not found for "

    invoke-static {p1, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updatePackagePermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 1

    const-string/jumbo v0, "success"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "signatures"

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized activateKnoxLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v5, p2

    move-object/from16 v14, p3

    const-string/jumbo v0, "activateKnoxLicense to "

    const-string/jumbo v2, "Package "

    monitor-enter p0

    :try_start_0
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "activateKnoxLicense()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    invoke-virtual {v1, v15, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageName(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x0

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_4

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v5, v3, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not authorized to activate license for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v5, v7, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0xcc

    const/16 v3, 0x320

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    array-length v0, v9

    move/from16 v8, v18

    :goto_0
    if-ge v8, v0, :cond_2

    aget-object v5, v9, v8

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0xcc

    const/16 v3, 0x320

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v7, v6

    move-object/from16 v6, p2

    goto/16 :goto_4

    :cond_2
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move-wide v8, v7

    move-object v7, v6

    move-object/from16 v6, p2

    goto :goto_2

    :cond_4
    :goto_1
    move-wide v8, v7

    move-object v7, v6

    :goto_2
    :try_start_6
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->throttler:Lcom/android/server/enterprise/license/LicenseThrottler;

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/license/LicenseThrottler;->getTimeRemainingUntilNextLicenseRequest(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v3, v11, v8

    if-lez v3, :cond_5

    const-string v0, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blocked and will be able to perform a new request in : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v10, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "success"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v3, 0xd1

    move-object v5, v4

    const/16 v4, 0x320

    :try_start_7
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-virtual {v1, v4, v13, v14, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with uuid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v3, v1, v0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_b
    const-string v0, "EnterpriseLicenseService"

    const-string v2, "Invalid targetPackageName."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :goto_3
    :try_start_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v5, v6

    goto :goto_5

    :goto_4
    :try_start_d
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "activateKnoxLicense() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    :goto_5
    if-nez v5, :cond_7

    :try_start_e
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    array-length v8, v0

    move/from16 v9, v18

    :goto_6
    if-ge v9, v8, :cond_8

    aget-object v5, v0, v9

    move-object v6, v7

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0x12d

    const/16 v3, 0x320

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    add-int/lit8 v9, v9, 0x1

    move-object v7, v6

    goto :goto_6

    :cond_7
    move-object v6, v7

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0x12d

    const/16 v3, 0x320

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :goto_7
    :try_start_f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_8
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0
.end method

.method public final declared-synchronized activateLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    const-string/jumbo v0, "activateLicense to "

    const-string/jumbo v2, "Package "

    monitor-enter p0

    :try_start_0
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v5, "activateLicense()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    invoke-virtual {v1, v15, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageName(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x0

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-object v5, v6

    goto/16 :goto_4

    :cond_1
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v4, v5, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not authorized to activate license for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v4, v7, v8, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    move-object v5, v6

    :try_start_3
    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0xcc

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmErrorResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v5, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v6

    :goto_0
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    array-length v0, v9

    move/from16 v7, v18

    :goto_2
    if-ge v7, v0, :cond_3

    aget-object v4, v9, v7

    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0xcc

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmErrorResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v5

    :goto_3
    move-object/from16 v5, p2

    goto/16 :goto_7

    :cond_3
    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :catch_3
    move-exception v0

    move-object v5, v6

    goto :goto_3

    :cond_4
    move-object/from16 v5, p2

    goto :goto_5

    :goto_4
    move-object v6, v5

    :goto_5
    :try_start_7
    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->throttler:Lcom/android/server/enterprise/license/LicenseThrottler;

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/license/LicenseThrottler;->getTimeRemainingUntilNextLicenseRequest(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v4, v11, v7

    if-lez v4, :cond_5

    const-string v0, "EnterpriseLicenseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blocked and will be able to perform a new request in : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "success"

    new-instance v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v10, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v7, 0x0

    move-object v4, v3

    const/16 v3, 0xd1

    :try_start_8
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_5
    if-eqz v5, :cond_6

    :try_start_a
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-virtual {v1, v3, v13, v14, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    const-string v2, "EnterpriseLicenseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with uuid "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    const/4 v7, 0x0

    invoke-direct {v4, v1, v0, v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_c
    const-string v0, "EnterpriseLicenseService"

    const-string v2, "Invalid targetPackageName."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_6
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v4, v5

    goto :goto_8

    :goto_7
    :try_start_e
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v4, "activateLicense() failed."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    :goto_8
    if-nez v4, :cond_7

    :try_start_f
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    if-lez v2, :cond_8

    array-length v7, v0

    move/from16 v8, v18

    :goto_9
    if-ge v8, v7, :cond_8

    aget-object v4, v0, v8

    move-object v5, v6

    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0x12d

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmErrorResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    add-int/lit8 v8, v8, 0x1

    move-object v6, v5

    goto :goto_9

    :cond_7
    move-object v5, v6

    new-instance v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v6, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0x12d

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmErrorResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :goto_a
    :try_start_10
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_b
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0
.end method

.method public final callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string/jumbo v0, "callLicenseAgent() - "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "EnterpriseLicenseService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    :try_start_0
    iget-object v0, v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/samsung/android/knox/license/LicenseAgentDbContract;->DB_URI:Landroid/net/Uri;

    move-object/from16 v6, p2

    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    const-string/jumbo v6, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    const-string/jumbo v7, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "KLMRegistrationInternal"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_1
    const-string v9, "KLMDeactivationInternal"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "ELMRegistrationInternal"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "fail"

    const/16 v6, 0x12d

    const/16 v7, 0x320

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "fail"

    const/16 v6, 0x12d

    const/16 v7, 0x322

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x12d

    const/4 v13, 0x0

    const-string/jumbo v5, "fail"

    const/4 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception calling KLMSAgent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6ebcf3c4 -> :sswitch_2
        -0x4f3822a0 -> :sswitch_1
        0x4e6ca3c2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized deActivateKnoxLicense(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v5, p2

    move-object/from16 v14, p3

    const-string/jumbo v0, "deactivateKnoxLicense to "

    const-string/jumbo v2, "Package "

    monitor-enter p0

    :try_start_0
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "deActivateKnoxLicense()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    invoke-virtual {v1, v15, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPackageName(II)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v18, 0x0

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_5

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v5, v3, v9}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v0, "EnterpriseLicenseService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not authorized to deActivate license for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v5, v7, v8, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0xcc

    const/16 v3, 0x322

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    array-length v0, v9

    move/from16 v8, v18

    :goto_0
    if-ge v8, v0, :cond_2

    aget-object v5, v9, v8

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0xcc

    const/16 v3, 0x322

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v7, v6

    move-object/from16 v6, p2

    goto/16 :goto_4

    :cond_2
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    move-wide v8, v7

    move-object v7, v6

    move-object/from16 v6, p2

    goto :goto_2

    :cond_4
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_5
    :goto_1
    move-wide v8, v7

    move-object v7, v6

    :goto_2
    :try_start_7
    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->throttler:Lcom/android/server/enterprise/license/LicenseThrottler;

    invoke-virtual {v3, v6}, Lcom/android/server/enterprise/license/LicenseThrottler;->getTimeRemainingUntilNextLicenseRequest(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v3, v11, v8

    if-lez v3, :cond_6

    const-string v0, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blocked and will be able to perform a new request in : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v10, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "success"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v3, 0xd1

    move-object v5, v4

    const/16 v4, 0x322

    :try_start_8
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    move-exception v0

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-virtual {v1, v4, v13, v14, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    const-string v2, "EnterpriseLicenseService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with uuid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_UUID"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_REQUEST_PACKAGENAME"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_KEY"

    invoke-virtual {v0, v2, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v3, v1, v0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_c
    const-string v0, "EnterpriseLicenseService"

    const-string v2, "Invalid targetPackageName."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_3
    :try_start_d
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-object v5, v6

    goto :goto_5

    :goto_4
    :try_start_e
    const-string v2, "EnterpriseLicenseService"

    const-string/jumbo v3, "deActivateKnoxLicense() failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_3

    :goto_5
    if-nez v5, :cond_8

    :try_start_f
    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v2, v0

    if-lez v2, :cond_9

    array-length v8, v0

    move/from16 v9, v18

    :goto_6
    if-ge v9, v8, :cond_9

    aget-object v5, v0, v9

    move-object v6, v7

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0x12d

    const/16 v3, 0x322

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V

    add-int/lit8 v9, v9, 0x1

    move-object v7, v6

    goto :goto_6

    :cond_8
    move-object v6, v7

    new-instance v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    invoke-direct {v7, v1, v13, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V

    const/16 v2, 0x12d

    const/16 v3, 0x322

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :goto_7
    :try_start_10
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_8
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0
.end method

.method public final deleteAllApiCallData()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    :try_start_0
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "LICENSE_LOG"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "deleteAllApiCallData() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final deleteApiCallData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;)Z
    .locals 2

    const-string/jumbo p1, "pkgName"

    const-string p3, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "instanceId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LICENSE"

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p2

    if-nez p2, :cond_1

    const-string/jumbo p1, "deleteApiCallData(): result is null"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string/jumbo p1, "deleteApiCallData(): Record does not exist"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "LICENSE_LOG"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    const-string/jumbo p2, "deleteApiCallData() failed"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return p0
.end method

.method public final deleteApiCallDataByAdmin(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "pkgName"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "LICENSE_LOG"

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "deleteApiCallDataByAdmin() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return p0
.end method

.method public final deleteLicense(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "LICENSE"

    const-string/jumbo v1, "pkgName"

    const-string v2, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "instanceId"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p1, v5, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "deleteLicense(): result is null"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "deleteLicense(): pkgName is null, Record does not exist"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_2
    :try_start_2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v0, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_0
    :try_start_3
    const-string/jumbo v0, "deleteLicense() failed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final deleteLicenseByAdmin(Ljava/lang/String;)Z
    .locals 12

    const-string v0, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pkgName"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "LICENSE"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    const-string/jumbo v4, "isElmKey(True)"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v4, "deleteLicenseByAdmin(): notify ELM observers"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v7, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_DEACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Status;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    goto :goto_1

    :catch_0
    const-string/jumbo p0, "isElmKey(False)"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catch_1
    :try_start_3
    const-string/jumbo p0, "deleteLicenseByAdmin() failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_2
    return v3

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public final enforcePermission()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    sget v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, ",com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getAllLicenseActivationsInfos()Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-string/jumbo v3, "getAllActivations"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 11

    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Landroid/content/ContentValues;

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v10, v8, v9, v7}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/license/LicenseInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "getLicenseInfo() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public final getApiCallData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "instanceId"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    invoke-virtual {p1, v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "getApiCallData(): result is null, Record does not exist"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "getApiCallData(): pkgName is null, Record does not exist"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string/jumbo v0, "getApiCallData() failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final getApiCallDataByAdmin(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/server/enterprise/license/LicenseLog;->getLog(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo p1, "getApiCallDataByAdmin() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, ",com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getELMPermissions() failed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseLicenseService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string/jumbo v0, "instanceId"

    const-string/jumbo v1, "pkgName"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LICENSE"

    invoke-virtual {v3, v4, v2, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p0

    :catch_0
    const-string p1, "EnterpriseLicenseService"

    const-string/jumbo v0, "getInstanceId() failed"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final getLicenseActivationInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/ActivationInfo;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    const-string/jumbo v2, "getActivations"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->callLicenseAgent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/knox/license/ActivationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getLicenseInfo(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 9

    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v1, p1, v7, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string p1, "EnterpriseLicenseService"

    const-string/jumbo v0, "getLicenseInfo() failed"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final getLicenseInfoByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseInfo;
    .locals 8

    const-string/jumbo v0, "pkgVersion"

    const-string/jumbo v1, "instanceId"

    const-string/jumbo v2, "pkgName"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {v4, v5, v3, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/knox/license/LicenseInfo;

    invoke-direct {v2, p1, v1, v0}, Lcom/samsung/android/knox/license/LicenseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    const-string p1, "EnterpriseLicenseService"

    const-string/jumbo v0, "getLicenseInfoByAdmin() failed"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object p0
.end method

.method public final getPackageName(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    return-object p1
.end method

.method public final getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const-string v0, "EnterpriseLicenseService"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "pkgName"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "LICENSE"

    const-string/jumbo v5, "rightsObject"

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageSignatureMatchesWithActivationSignatures(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/license/RightsObject;

    const-string/jumbo p1, "getPermissions() - deserializeObject"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "ro is null!!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getPermissions() failed: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller "

    const-string v0, " is not SYSTEM_SERVICE OR SYSTEM APP"

    invoke-static {v1, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getRightsObject(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 5

    const-string v0, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "instanceId"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LICENSE"

    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo p0, "getRightsObject() - deserializeObject"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    const-string/jumbo v1, "getRightsObject() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final getRightsObjectByAdmin(Ljava/lang/String;)Lcom/samsung/android/knox/license/RightsObject;
    .locals 5

    const-string v0, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LICENSE"

    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo p0, "getRightsObjectByAdmin() - deserializeObject"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_0
    const-string/jumbo v1, "getRightsObjectByAdmin() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1

    :cond_1
    :goto_1
    return-object p0
.end method

.method public final declared-synchronized getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mUcmeService:Lcom/samsung/android/knox/ucm/core/IUcmService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final isActionAllowedForAnotherPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "EnterpriseLicenseService"

    if-eqz p1, :cond_0

    :try_start_1
    const-string/jumbo p0, "Request allowed from callerSharedPackages to targetPackageName"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    array-length p1, p3

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_2

    aget-object v4, p3, v3

    invoke-virtual {p0, p2, v4}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isCallerAllowedToPerformActionForAnotherPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo p0, "Request allowed by platform signature or license permission"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return v0
.end method

.method public final isCallerAllowedToPerformActionForAnotherPackage(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->samsungSpecialPackages:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v2, "android"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-interface {p0, v2, p2, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p0, :cond_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v0

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "com.samsung.android.knox.kpu"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPermissionGranted(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-interface {p0, v2, p2, p1}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-nez p0, :cond_3

    move p0, v3

    goto :goto_1

    :catch_2
    move-exception p0

    :try_start_5
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    move p0, v0

    :goto_1
    if-eqz p0, :cond_5

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_LICENSE_INTERNAL"

    invoke-interface {p0, v1, p2, p1}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-nez p0, :cond_4

    move p0, v3

    goto :goto_2

    :catch_3
    move-exception p0

    :try_start_7
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_4
    move p0, v0

    :goto_2
    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v0

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/utils/KpuHelper;->isKpuPlatformSigned(ILjava/lang/String;)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public final isEulaBypassAllowed(Ljava/lang/String;)Z
    .locals 9

    const-string/jumbo v0, "mamPackageName"

    const-string/jumbo v1, "isEulaBypassAllowed"

    const-string v2, "EnterpriseLicenseService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const/4 p0, 0x0

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    invoke-virtual {v3, p0, p0, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, p0

    :cond_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, p0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string/jumbo v0, "isEulaBypassAllowed() failed"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return p0
.end method

.method public final isPackageInstalled(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "isPackageInstalled() - "

    const-string/jumbo v1, "isPackageInstalled()"

    const-string v2, "EnterpriseLicenseService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, p1, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " found in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string v4, " not found in user "

    invoke-static {v0, p1, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, v3, v2}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return v4
.end method

.method public final isPackageSignatureMatchesWithActivationSignatures(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "EnterpriseLicenseService"

    const-string/jumbo v1, "activation signature "

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "pkgName"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    const-string/jumbo v6, "signatures"

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    :goto_0
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->getApplicationSignaturesSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not matches with current package signature "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isPackageSignatureMatchesWithActivationSignatures has Exception: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return v2
.end method

.method public final isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo v0, "isServiceAvailable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string/jumbo v1, "rightsObject"

    const-string v2, "LICENSE"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v4, "pkgName"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/license/RightsObject;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_2
    :goto_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :cond_3
    :goto_1
    if-ge v3, v2, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/enterprise/utils/Utils;->deserializeObject([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/license/RightsObject;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/samsung/android/knox/license/RightsObject;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string/jumbo p1, "check Service did not find permission"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    :goto_3
    const-string/jumbo p1, "serviceName is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZZ)V
    .locals 2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_2

    const/16 v0, 0x4e1f

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "apiName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "adminUid"

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "isGetterApi"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "isOldNamespace"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "profileUserId"

    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "parent"

    iget-boolean p3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "dalessCallerPackage"

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mDALessCallerUid:I

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/server/enterprise/license/LicenseLogService;->mHandler:Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "LicenseLogService"

    const-string/jumbo p2, "log() failed"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyContainerLicenseStatus(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v2, p1}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateContainerLicenseStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v2, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmElmChangeList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;

    invoke-interface {v4, p1, p2}, Lcom/android/server/enterprise/license/IActivationKlmElmObserver;->onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
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
    .locals 0

    return-void
.end method

.method public final onUserStarting(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    return-void
.end method

.method public final processKnoxLicenseResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/knox/license/Error;ILjava/lang/String;Lcom/samsung/android/knox/license/RightsObject;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move/from16 v3, p7

    const-string/jumbo v1, "pkgName"

    const-string v2, "LICENSE"

    const-string/jumbo v12, "processKnoxLicenseResponse: "

    const-string/jumbo v5, "klm activation record not found for "

    const-string/jumbo v8, "result setLicensePermissionForMDM("

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v13, "EnterpriseLicenseService"

    const-string/jumbo v9, "processKnoxLicenseResponse()"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/16 v16, 0x0

    if-eqz p9, :cond_2

    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v10, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v18, v14

    :try_start_1
    const-string/jumbo v14, "rightsObject"

    invoke-virtual {v11, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    move-object/from16 v9, p4

    invoke-static {v7, v9, v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updatePackagePermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)V

    sget-object v9, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    if-lez v9, :cond_0

    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v2, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    const-string/jumbo v9, "instanceId"

    const-string v10, "-1"

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "pkgVersion"

    move-object/from16 v10, p3

    invoke-virtual {v11, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v2, "processKnoxLicenseResponse(): License Table update."

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v6}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    sget-object v8, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v6}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget v8, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object v8, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v10, v2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v14

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-wide/from16 v18, v14

    goto/16 :goto_4

    :cond_2
    move-wide/from16 v18, v14

    const-string/jumbo v1, "processKnoxLicenseResponse().RO is null"

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v1, v16

    const/4 v10, 0x0

    :goto_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    :cond_3
    if-eqz v4, :cond_5

    const/16 v1, 0x321

    if-eq v3, v1, :cond_4

    iget-object v8, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    check-cast v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v1, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    iget-object v9, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eq v3, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and package "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v9, 0x0

    :goto_3
    new-instance v5, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v8

    move-object/from16 v17, v9

    invoke-static {v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v9

    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedKlm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object v14, v5

    move-object v7, v10

    move-object v8, v2

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v2

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v5, p2

    move-object/from16 v1, p5

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    move-object v7, v1

    move-object v6, v5

    invoke-virtual {v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v2

    invoke-interface {v1, v6, v7, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p6 .. p6}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v1

    const/16 v2, 0x1f5

    if-eq v1, v2, :cond_7

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v6, v14}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyKlmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v0, v7, v6}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x1

    return v0

    :goto_4
    :try_start_2
    const-string/jumbo v1, "processKnoxLicenseResponse() failed"

    invoke-static {v13, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :goto_5
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final declared-synchronized processLicenseActivationResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v2, p10

    const-string/jumbo v7, "processLicenseActivationResponse:finally"

    const-string/jumbo v3, "elm activation record not found for "

    const-string/jumbo v8, "processLicenseActivationResponse:finally"

    const-string/jumbo v6, "elm activation record not found for "

    const-string/jumbo v9, "processLicenseActivationResponse:finally"

    const-string/jumbo v0, "elm activation record not found for "

    const-string/jumbo v10, "processLicenseActivationResponse: "

    const-string/jumbo v11, "processLicenseActivationResponse(): ret = "

    const-string/jumbo v12, "processLicenseActivationResponse:finally"

    const-string/jumbo v13, "elm activation record not found for "

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v14, "EnterpriseLicenseService"

    const-string/jumbo v15, "processLicenseActivationResponse()"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    :cond_1
    :goto_0
    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_17

    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v19, 0x0

    move-object v14, v10

    const/16 v20, 0x1

    const/4 v10, 0x0

    if-nez p7, :cond_6

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v16, :cond_3

    :try_start_2
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_3
    if-eqz v4, :cond_5

    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    iget-object v3, v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    move-object/from16 v19, v3

    goto :goto_2

    :cond_4
    const-string v3, "EnterpriseLicenseService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_2
    :try_start_3
    new-instance v5, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v9, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object v13, v5

    move v3, v8

    move-object v8, v10

    const-string v5, "EnterpriseLicenseService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v7, p9

    move-object v9, v0

    move-object v6, v2

    move-object/from16 v2, p5

    :try_start_4
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v10, v1

    :try_start_5
    invoke-virtual {v10, v5, v13}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v10, v2, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v20

    :catchall_1
    move-exception v0

    :goto_3
    move-object v1, v10

    goto/16 :goto_17

    :catchall_2
    move-exception v0

    move-object v10, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v10, v1

    goto/16 :goto_17

    :cond_6
    move-object v2, v10

    move-object v10, v1

    move-object v1, v2

    move-object/from16 v2, p5

    move-object v12, v4

    :try_start_6
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v13, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v15

    const-string/jumbo v4, "rightsObject"

    invoke-virtual {v1, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v4, "instanceId"

    move-object/from16 v15, p6

    invoke-virtual {v1, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pkgVersion"

    move-object/from16 v15, p3

    invoke-virtual {v1, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-static {v2, v4, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updatePackagePermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)V

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE"

    invoke-virtual {v4, v15, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    if-lez v4, :cond_7

    :try_start_7
    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "LICENSE"

    invoke-virtual {v4, v15, v1, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :goto_4
    move v15, v1

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v14, v0

    const/4 v8, 0x0

    const/16 v13, 0x12d

    :goto_5
    const/4 v15, 0x0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    const/16 v13, 0x12d

    const/4 v15, 0x0

    :goto_6
    const/16 v20, 0x0

    goto/16 :goto_10

    :cond_7
    :try_start_8
    const-string/jumbo v4, "pkgName"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    invoke-virtual {v4, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-nez v15, :cond_8

    :try_start_9
    const-string v4, "EnterpriseLicenseService"

    const-string/jumbo v13, "check key field"

    invoke-static {v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "licenseKey"

    const-string/jumbo v13, "na"

    invoke-virtual {v1, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE"

    invoke-virtual {v4, v13, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v14, v0

    const/4 v8, 0x0

    :goto_7
    const/16 v13, 0x12d

    goto/16 :goto_14

    :catch_1
    move-exception v0

    const/16 v13, 0x12d

    goto :goto_6

    :cond_8
    :goto_8
    :try_start_a
    const-string v1, "EnterpriseLicenseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    if-eqz v15, :cond_9

    :try_start_b
    sget-object v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v5}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v5}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    sget v4, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    sget-object v4, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->startDeferredServicesIfNeeded()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v14, v0

    move-object v8, v1

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v20, v1

    const/16 v13, 0x12d

    goto/16 :goto_10

    :cond_9
    const/4 v1, 0x0

    :goto_9
    :try_start_d
    invoke-virtual {v10}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v4, :cond_a

    if-eqz v15, :cond_b

    :try_start_e
    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v11

    invoke-interface {v4, v5, v2, v11}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_a
    const/16 v13, 0x12d

    goto :goto_c

    :cond_b
    :try_start_f
    const-string/jumbo v11, "fail"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    const/16 v13, 0x12d

    :try_start_10
    invoke-interface {v4, v5, v11, v13}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_c

    :catchall_7
    move-exception v0

    :goto_a
    move-object v14, v0

    move-object v8, v1

    goto/16 :goto_14

    :catch_3
    move-exception v0

    :goto_b
    move-object/from16 v20, v1

    goto/16 :goto_10

    :catchall_8
    move-exception v0

    const/16 v13, 0x12d

    goto :goto_a

    :catch_4
    move-exception v0

    const/16 v13, 0x12d

    goto :goto_b

    :goto_c
    const-string v4, "EnterpriseLicenseService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    const/16 v11, 0x1f5

    if-eq v4, v11, :cond_c

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :cond_c
    :try_start_11
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_e

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    if-eqz v16, :cond_d

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    :cond_d
    move-object v7, v3

    move v3, v4

    goto :goto_d

    :cond_e
    const-string/jumbo v2, "fail"

    move-object v7, v3

    move v3, v13

    :goto_d
    if-eqz v12, :cond_10

    iget-object v4, v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v12}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v0, v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_e

    :cond_f
    const-string v4, "EnterpriseLicenseService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and package "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_e
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v4, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v5

    move-object v5, v1

    move-object/from16 v1, v21

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v1, "EnterpriseLicenseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p10

    move-object v8, v5

    move-object v9, v7

    move-object/from16 v5, p2

    move-object/from16 v7, p9

    :try_start_12
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-object v10, v1

    :try_start_13
    invoke-virtual {v10, v5, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v10, v2, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_13

    :catchall_9
    move-exception v0

    const/16 v13, 0x12d

    move-object v14, v0

    const/4 v8, 0x0

    goto/16 :goto_14

    :catchall_a
    move-exception v0

    const/16 v13, 0x12d

    move-object v14, v0

    const/4 v8, 0x0

    goto/16 :goto_5

    :goto_10
    :try_start_14
    const-string v1, "EnterpriseLicenseService"

    const-string/jumbo v4, "processLicenseActivationResponse() failed"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_12

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    if-eqz v16, :cond_11

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_11
    move-object v9, v0

    move v3, v4

    goto :goto_11

    :cond_12
    const-string/jumbo v1, "fail"

    move-object v9, v0

    move-object v2, v1

    move v3, v13

    :goto_11
    if-eqz v12, :cond_14

    iget-object v0, v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_12

    :cond_13
    const-string v0, "EnterpriseLicenseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_12
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    sget-object v4, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v5

    move-object/from16 v5, v20

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v1, "EnterpriseLicenseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p9

    move-object/from16 v6, p10

    move-object v8, v5

    move-object/from16 v5, p2

    :try_start_16
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    move-object v10, v1

    :try_start_17
    invoke-virtual {v10, v5, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v10, v2, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_f

    :goto_13
    monitor-exit p0

    return v15

    :catchall_b
    move-exception v0

    move-object/from16 v8, v20

    move-object v14, v0

    :goto_14
    :try_start_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_16

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v4

    if-eqz v16, :cond_15

    invoke-virtual {v10, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :cond_15
    move-object v9, v0

    goto :goto_15

    :cond_16
    const-string/jumbo v1, "fail"

    move-object v9, v0

    move-object v2, v1

    move v4, v13

    :goto_15
    if-eqz v12, :cond_18

    iget-object v0, v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v10, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    iget-object v0, v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_16

    :cond_17
    const-string v0, "EnterpriseLicenseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_16
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult;

    move v3, v4

    sget-object v4, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getMaskedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, v5

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    const-string v1, "EnterpriseLicenseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p8 .. p8}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p9

    move-object/from16 v6, p10

    move-object v8, v5

    move-object/from16 v5, p2

    :try_start_19
    invoke-virtual/range {v1 .. v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    invoke-virtual {v1, v5, v0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v1, v2, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v14

    :goto_17
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    throw v0
.end method

.method public final processLicenseValidationResult(Ljava/lang/String;Lcom/samsung/android/knox/license/RightsObject;Lcom/samsung/android/knox/license/Error;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    const-string v5, "LICENSE"

    const-string/jumbo v6, "fail"

    const-string/jumbo v7, "processLicenseValidationResult(): ret = "

    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    const-string v8, "EnterpriseLicenseService"

    const-string/jumbo v9, "processLicenseValidationResult()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const-string/jumbo v12, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    const-string/jumbo v13, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    const-string/jumbo v14, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    const-string/jumbo v15, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    const/16 v16, 0x1

    const-string/jumbo v11, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    move-wide/from16 v17, v9

    const-string/jumbo v9, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object v10, v7

    const/4 v7, 0x0

    if-nez p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/16 v2, 0x321

    invoke-virtual {v0, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v16

    :cond_0
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    move-object/from16 v20, v12

    :try_start_1
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v7, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v21, v13

    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/utils/Utils;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    const-string/jumbo v2, "rightsObject"

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v2, "pkgVersion"

    move-object/from16 v13, p6

    invoke-virtual {v12, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p7

    invoke-static {v4, v2, v12}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updatePackagePermissions(Ljava/lang/String;Ljava/util/List;Landroid/content/ContentValues;)V

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v5, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-lez v2, :cond_1

    :try_start_4
    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, v5, v12, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v12, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v10, v20

    move-object/from16 v5, v21

    const/4 v7, 0x0

    const/4 v12, 0x0

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v10, v20

    move-object/from16 v5, v21

    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_1
    const/4 v12, 0x0

    :goto_0
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_2

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v2, p4

    move-object/from16 v10, v20

    move-object/from16 v5, v21

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object/from16 v2, p4

    move-object/from16 v10, v20

    move-object/from16 v5, v21

    goto/16 :goto_f

    :cond_2
    :goto_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v12, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_3
    const/16 v5, 0x12d

    invoke-interface {v2, v3, v6, v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyLicenseStatus(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :goto_4
    :try_start_6
    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v2}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v5, 0x0

    :goto_5
    :try_start_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v10

    sget-object v13, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v13, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v13

    if-nez v13, :cond_6

    if-eqz v10, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processLicenseValidationResult():  u"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isLicenseLocked ? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v5, v16

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    :goto_7
    if-nez v5, :cond_8

    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v2, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isLicenseLocked(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v16, v5

    :cond_9
    :goto_8
    if-eqz v16, :cond_a

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyContainerLicenseStatus(Ljava/lang/String;)V

    :cond_a
    new-instance v7, Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, v3}, Landroid/content/pm/IPackageManager;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_b

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v2, p4

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v5, v21

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_9
    move-object/from16 v10, v20

    const/16 v2, 0x321

    goto :goto_a

    :cond_b
    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x12d

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object/from16 v2, p4

    :goto_b
    move-object/from16 v10, v20

    move-object/from16 v5, v21

    :goto_c
    const/16 v19, 0x0

    move/from16 v12, v19

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v2, p4

    :goto_d
    move-object/from16 v10, v20

    move-object/from16 v5, v21

    :goto_e
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_f

    :catchall_4
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object v5, v13

    move-object/from16 v10, v20

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v5, v13

    move-object/from16 v10, v20

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v10, v12

    move-object v5, v13

    goto :goto_c

    :catch_5
    move-exception v0

    move-object v10, v12

    move-object v5, v13

    goto :goto_e

    :goto_f
    :try_start_8
    const-string/jumbo v7, "processLicenseValidationResult() failed"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_c

    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v0, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_10
    const/16 v2, 0x321

    goto :goto_11

    :cond_c
    const/4 v7, 0x0

    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x12d

    invoke-virtual {v0, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_10

    :goto_11
    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :catchall_7
    move-exception v0

    goto/16 :goto_2

    :goto_12
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_d

    invoke-virtual {v8, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v6

    invoke-virtual {v8, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v5, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :goto_13
    const/16 v2, 0x321

    goto :goto_14

    :cond_d
    invoke-virtual {v8, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v5, 0x12d

    invoke-virtual {v8, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_13

    :goto_14
    invoke-virtual {v8, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v8, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v8, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/knox/license/Error;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->notifyElmObservers(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V

    invoke-virtual {v1, v4, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final registerLicenseResultRecord(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V
    .locals 9

    const-string v0, "DeathRecipient successfully linked to "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerLicenseResultRecord() for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EnterpriseLicenseService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;-><init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v3, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object p4, v8

    check-cast p4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final resetLicense(Ljava/lang/String;)Z
    .locals 6

    const-string/jumbo v0, "pkgName"

    const-string v1, "EnterpriseLicenseService"

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "instanceId"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE"

    invoke-virtual {p1, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-nez p1, :cond_1

    const-string/jumbo p1, "resetLicense(): result is null"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "resetLicense(): pkgName is null, Record does not exist"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_0
    :try_start_3
    const-string/jumbo v0, "resetLicense() failed"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final resetLicenseByAdmin(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->resetELMInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_0
    :try_start_1
    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo p1, "resetLicenseByAdmin() failed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final sendDeviceRegistrationIntentToKpmAgent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendDeviceRegistrationIntentToKpmAgent : status : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "success"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.DEVICE_REGISTRATION_INTERNAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p2, "com.samsung.android.knox.attestation"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v0, "com.samsung.android.knox.permission.KNOX_DEVICE_REGISTRATION_REQUEST_INTENT_INTERNAL"

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final sendElmErrorResult(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    const-string/jumbo v1, "fail"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    return-void
.end method

.method public final sendElmResult(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v11, p5

    move-object/from16 v12, p8

    const-string v13, "ELM result sent by callback to "

    const-string v14, "EnterpriseLicenseService"

    if-nez p9, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mElmPkgRecords:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v3, "ELM Record not found. Caller died or race condition for "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v15, v2

    goto :goto_1

    :cond_1
    move-object/from16 v15, p9

    :goto_1
    const/16 v2, 0x320

    if-eqz v15, :cond_2

    iget-object v0, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_2

    const/16 v16, 0x1

    move v3, v2

    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-static {v3}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromElmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v6

    iget-object v8, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p7

    move-wide/from16 v9, p10

    move v1, v3

    move-object/from16 v3, p4

    :try_start_1
    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;J)V

    iget-object v0, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move v1, v3

    move-object/from16 v3, p4

    goto :goto_2

    :catch_3
    move-exception v0

    move v1, v3

    move-object/from16 v3, p4

    goto :goto_3

    :goto_2
    const-string/jumbo v2, "RemoteException in sendElmResult"

    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :goto_3
    const-string v2, "DeadObjectException in sendElmResult"

    invoke-static {v14, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_2
    move-object/from16 v3, p4

    move v1, v2

    :goto_4
    const/16 v16, 0x0

    :goto_5
    if-eqz v15, :cond_3

    iget-object v0, v15, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_3

    if-eqz v16, :cond_6

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.action.LICENSE_STATUS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_STATUS"

    move-object/from16 v4, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_ERROR_CODE"

    move/from16 v5, p2

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_RESULT_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_PERM_GROUP"

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_LICENSE_DATA_TIME_REMAINING_UNTIL_NEXT_LICENSE_REQUEST"

    move-wide/from16 v9, p10

    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    move-object/from16 v7, p7

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-eqz v12, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "Permissions"

    invoke-virtual {v1, v2, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    const-string v1, "ELM result sent by Intent to "

    if-eqz v11, :cond_5

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_5
    move-object/from16 v2, p0

    :goto_6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v2, v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v1, v3, v14}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final sendKlmErrorResult(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)V
    .locals 12

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v10, 0x0

    const-string/jumbo v1, "fail"

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V

    return-void
.end method

.method public final sendKlmResult(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;J)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v0, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    const-string v14, "KLM result sent by callback to "

    const/16 v15, 0x321

    const-string v3, "EnterpriseLicenseService"

    if-nez p9, :cond_1

    if-eqz v0, :cond_1

    if-eq v2, v15, :cond_1

    iget-object v4, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;

    if-eqz v4, :cond_0

    iget-object v5, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mKlmPkgRecords:Ljava/util/Map;

    invoke-static {v0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v5, "KLM Record not found. Caller died or race condition for "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v4, p9

    :goto_0
    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_2

    if-eq v2, v15, :cond_2

    const/16 v16, 0x1

    move-object v5, v3

    :try_start_0
    new-instance v3, Lcom/samsung/android/knox/license/LicenseResult;

    invoke-static {v2}, Lcom/samsung/android/knox/license/LicenseResult$Type;->fromKlmStatus(I)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v7

    iget-object v9, v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v6, p2

    move-object/from16 v8, p7

    move-wide/from16 v10, p10

    move-object v1, v4

    move-object v15, v5

    move-object/from16 v5, p1

    move-object/from16 v4, p5

    :try_start_1
    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;J)V

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    invoke-interface {v0, v3}, Lcom/samsung/android/knox/license/ILicenseResultCallback;->onLicenseResult(Lcom/samsung/android/knox/license/LicenseResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v4

    move-object v15, v5

    move-object/from16 v4, p5

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v4

    move-object v15, v5

    move-object/from16 v4, p5

    goto :goto_2

    :goto_1
    const-string/jumbo v3, "RemoteException in sendKlmResult"

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :goto_2
    const-string v3, "DeadObjectException in sendKlmResult"

    invoke-static {v15, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_2
    move-object v15, v3

    move-object v1, v4

    move-object/from16 v4, p5

    :goto_3
    const/16 v16, 0x0

    :goto_4
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    if-eqz v0, :cond_3

    if-nez v16, :cond_3

    const/16 v1, 0x321

    if-ne v2, v1, :cond_6

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.action.KNOX_LICENSE_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_STATUS"

    move-object/from16 v5, p1

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_ERROR_CODE"

    move/from16 v6, p2

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_RESULT_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.EXTRA_LICENSE_DATA_TIME_REMAINING_UNTIL_NEXT_LICENSE_REQUEST"

    move-wide/from16 v10, p10

    invoke-virtual {v0, v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.LICENSE_GRANTED_PERMISSIONS"

    move-object/from16 v8, p7

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-eqz v13, :cond_4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "Permissions"

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.LICENSE_DATA_LICENSE_PERMISSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    const-string v1, "KLM result sent by intent to "

    if-eqz v12, :cond_5

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    move-object/from16 v5, p0

    :goto_5
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v5, v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v1, v4, v15}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method

.method public final updateAdminPermissions()V
    .locals 7

    const-string p0, "EnterpriseLicenseService"

    const-string/jumbo v0, "pkgName"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    sget v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->MY_PID:I

    if-ne v1, v2, :cond_2

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LICENSE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateAdminPermissions() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v5, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v4}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "updateAdminPermissions() failed"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not SYSTEM_PROCESS"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized validateLicenses$1()V
    .locals 6

    const-string/jumbo v0, "validateLicenses to "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "EnterpriseLicenseService"

    const-string/jumbo v4, "all packages"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.KNOX_LICENSE_DATA_PACKAGENAME"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/enterprise/license/EnterpriseLicenseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/os/Bundle;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
