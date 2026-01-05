.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService;
.super Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CONSTRAINED_DELIMITER:[B

.field public static final lock:Ljava/lang/Object;

.field public static sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# instance fields
.field public final mCachedConstrainedData:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public final mReceiver:Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    return-void

    nop

    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;-><init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V

    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mReceiver:Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;

    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;-><init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static split([B[B)Ljava/util/List;
    .locals 7

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    move v4, v1

    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_2

    add-int v5, v2, v4

    array-length v6, p1

    if-lt v5, v6, :cond_0

    goto :goto_2

    :cond_0
    aget-byte v6, p0, v4

    aget-byte v5, p1, v5

    if-eq v6, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    array-length v3, p0

    add-int/2addr v2, v3

    move v3, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    array-length p0, p1

    invoke-static {p1, v3, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final checkConstrainedState()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final cleanUpConstrainedState(I)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BIND_DEVICE_ADMIN"

    const-string/jumbo v2, "Only system or itself can remove an EDM admin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "status"

    const-string/jumbo v3, "adminUid"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "ConstrainedStateTable"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    const-string p0, "ConstrainedMode"

    const-string/jumbo p1, "constrained state will go on"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final disableConstrainedState(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 19

    move-object/from16 v1, p0

    const-string v7, "ConstrainedMode"

    invoke-virtual {v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove! "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const-string v3, "/efs/constrained"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v13, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v17, "ConstrainedStateTable"

    const-string/jumbo v18, "status"

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v14, p1

    invoke-virtual/range {v13 .. v18}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v11

    goto :goto_2

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v0, v12

    :goto_2
    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    const-string/jumbo v2, "setScreenCapture enabled due to disableConstrainedState"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->isRestrictedByConstrainedState(I)Z

    move-result v2

    iget-object v1, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BLUETOOTH"

    const-string/jumbo v4, "bluetoothEnabled"

    invoke-virtual {v1, v12, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v12

    :cond_3
    if-ge v4, v3, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v12

    goto :goto_3

    :cond_4
    move v1, v11

    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    const-class v5, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    sget-object v6, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v11, v12

    :goto_4
    check-cast v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    invoke-virtual {v5, v12, v11}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v1, "No data"

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :goto_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_8

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict Camera : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x1

    const-string/jumbo v5, "false"

    const-string/jumbo v6, "true"

    if-lez v4, :cond_1

    move-object v4, v6

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict MTP : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x4

    if-lez v4, :cond_2

    move-object v4, v6

    goto :goto_2

    :cond_2
    move-object v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict Bluetooth : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_3

    move-object v4, v6

    goto :goto_3

    :cond_3
    move-object v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict SDCard : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x2

    if-lez v4, :cond_4

    move-object v4, v6

    goto :goto_4

    :cond_4
    move-object v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict Tethering : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x10

    if-lez v4, :cond_5

    move-object v4, v6

    goto :goto_5

    :cond_5
    move-object v4, v5

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict USB Debugging : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v4, v2, 0x20

    if-lez v4, :cond_6

    move-object v4, v6

    goto :goto_6

    :cond_6
    move-object v4, v5

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Restrict Screen Capture : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_7

    move-object v5, v6

    :cond_7
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    const/4 v3, 0x1

    const-string v4, "/efs/constrained"

    const/4 v5, 0x0

    if-gtz v2, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v6, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v8, p1

    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v10}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v7, "ConstrainedMode"

    const-string/jumbo v10, "already existing values // update"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/4 v15, 0x0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v9, 0x7fffffff

    and-int/2addr v7, v9

    new-instance v9, Ljava/io/File;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/2addr v7, v3

    new-instance v9, Ljava/io/File;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_7

    :cond_4
    shr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    shr-int/lit8 v10, v2, 0x8

    int-to-byte v10, v10

    int-to-byte v2, v2

    const/4 v11, 0x4

    new-array v11, v11, [B

    aput-byte v4, v11, v5

    aput-byte v7, v11, v3

    const/4 v4, 0x2

    aput-byte v10, v11, v4

    const/4 v4, 0x3

    aput-byte v2, v11, v4

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_5

    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    const-string/jumbo v4, "normalv3"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v15, v2

    goto/16 :goto_7

    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    const-string/jumbo v4, "normalv2"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "normal"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    sget-object v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    :try_start_3
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_7
    const-string v1, "DEFAULT"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v11}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    if-eqz p5, :cond_8

    new-instance v1, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_6

    :cond_8
    iget-object v1, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x40

    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v1

    move v7, v5

    :goto_4
    if-ge v7, v6, :cond_a

    aget-object v10, v1, v7

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    add-int/2addr v7, v3

    goto :goto_4

    :cond_a
    move-object v1, v15

    :goto_5
    if-eqz v1, :cond_b

    new-instance v6, Landroid/content/pm/Signature;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/content/pm/Signature;-><init>([B)V

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    :cond_b
    :goto_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v7, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ConstrainedStateTable"

    const-string/jumbo v12, "status"

    move-object v1, v9

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_c
    :try_start_5
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_7
    if-eqz v15, :cond_d

    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_8
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_9
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_a
    return v5

    :goto_b
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getConstrainedState()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final getConstrainedStateAll()Ljava/util/List;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    const/4 p0, 0x0

    return-object p0

    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final isRestrictedByConstrainedState(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    move-result v3

    and-int/2addr v3, p1

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const-string/jumbo v0, "_ConstrainedNoti"

    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    const-string p0, "ConstrainedMode"

    const-string p1, "Failed to get NotificationManager"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "CONSTRAINED_MODE"

    const/4 v4, 0x4

    invoke-direct {v2, v3, p1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/16 v2, 0x11ce

    if-eqz p5, :cond_4

    new-instance p5, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    invoke-direct {p5, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    invoke-virtual {p5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v3, 0x108078c

    invoke-virtual {p5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    const v4, 0x104040b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    const v3, 0x1040476

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_0
    const/4 p2, 0x2

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 p2, 0x1

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    new-instance p2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "pkg"

    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "url"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    const-string/jumbo p1, "targetPkgName"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/high16 p3, 0x4000000

    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_4
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final updateConstrainedStateData(Z)V
    .locals 31

    move-object/from16 v1, p0

    const-string/jumbo v0, "status"

    const-string/jumbo v7, "adminUid"

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    filled-new-array {v7, v0}, [Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "ConstrainedStateTable"

    invoke-virtual {v3, v4, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/constrained"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-string v12, "ConstrainedMode"

    if-eqz v11, :cond_15

    :try_start_1
    array-length v13, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/4 v14, 0x0

    move-object v2, v8

    move v15, v14

    :goto_0
    if-ge v15, v13, :cond_14

    :try_start_2
    aget-object v3, v11, v15

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v4, v4, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v2, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v30, v0

    move-object v2, v5

    :goto_1
    move-object/from16 v20, v10

    move-object/from16 v29, v11

    move/from16 v10, p1

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object v8, v5

    goto/16 :goto_17

    :catch_0
    move-exception v0

    move-object v8, v5

    goto/16 :goto_16

    :cond_0
    :try_start_5
    sget-object v2, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    invoke-static {v2, v4}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->split([B[B)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_1

    :try_start_6
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, [B

    array-length v8, v8

    invoke-direct {v4, v6, v14, v8}, Ljava/lang/String;-><init>([BII)V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_2

    const-string/jumbo v2, "something\'s wrong // type is null"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    move-object/from16 v30, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    move-object/from16 v29, v11

    move/from16 v10, p1

    goto/16 :goto_12

    :cond_2
    :try_start_7
    const-string/jumbo v6, "normal"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string/jumbo v8, "normalv2"

    const-string/jumbo v14, "normalv3"

    if-nez v6, :cond_4

    :try_start_8
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    :cond_3
    const-string/jumbo v2, "type is not normal"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_4
    :goto_4
    const/4 v6, 0x1

    :try_start_9
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_5

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v6, v17

    check-cast v6, [B

    array-length v6, v6

    if-lez v6, :cond_5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v17, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v18
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v19, v5

    :try_start_a
    move-object/from16 v5, v18

    check-cast v5, [B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v3, v20

    check-cast v3, [B

    array-length v3, v3

    move-object/from16 v20, v10

    const/4 v10, 0x0

    invoke-direct {v6, v5, v10, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_5
    move-object/from16 v8, v19

    goto/16 :goto_17

    :catch_1
    move-exception v0

    :goto_6
    move-object/from16 v8, v19

    goto/16 :goto_16

    :catchall_2
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v19, v5

    goto :goto_6

    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v10

    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_12

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v3

    move-object/from16 v3, v21

    check-cast v3, [B

    array-length v3, v3

    move-object/from16 v29, v11

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11, v3}, Ljava/lang/String;-><init>([BII)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    if-eqz v10, :cond_6

    move/from16 v21, v3

    aget-byte v3, v10, v11

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    const/16 v18, 0x1

    aget-byte v11, v10, v18

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v3, v11

    aget-byte v11, v10, v22

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v3, v11

    aget-byte v10, v10, v21

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v3, v10

    move/from16 v24, v3

    goto :goto_8

    :cond_6
    const/16 v24, 0x0

    :goto_8
    if-gtz v24, :cond_7

    const-string/jumbo v2, "something\'s wrong"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v10, p1

    move-object/from16 v30, v0

    goto/16 :goto_12

    :cond_7
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_9

    :cond_8
    const/16 v25, 0x0

    const/16 v27, 0x0

    goto :goto_b

    :cond_9
    :goto_9
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    const/4 v11, 0x0

    invoke-direct {v8, v10, v11, v3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_a

    :cond_a
    const/4 v8, 0x0

    :goto_a
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object/from16 v27, v3

    move-object/from16 v25, v8

    :goto_b
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    const/4 v11, 0x0

    invoke-direct {v3, v8, v11, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v28, v3

    goto :goto_c

    :cond_b
    const/4 v11, 0x0

    const/16 v28, 0x0

    :goto_c
    new-instance v21, Lcom/samsung/android/knox/EnrollData;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    iget-object v2, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v10, v20

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-lez v3, :cond_e

    :try_start_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v11

    :goto_d
    if-ge v4, v3, :cond_e

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v4, v4, 0x1

    check-cast v8, Landroid/content/ContentValues;

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v30, v0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sds.mobile.mdm.client.MDMService"

    move/from16 v22, v3

    const-string/jumbo v3, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3e8

    if-ne v14, v1, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "Constrained mode is off - sds mdm was activated"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_6

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Constrained mode is off"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    move/from16 v26, v8

    :goto_f
    move-object/from16 v23, v5

    move-object/from16 v22, v6

    goto :goto_10

    :cond_d
    const/4 v11, 0x0

    move-object/from16 v1, p0

    move/from16 v3, v22

    move-object/from16 v0, v30

    goto :goto_d

    :cond_e
    move-object/from16 v30, v0

    const/16 v26, 0x0

    goto :goto_f

    :goto_10
    invoke-virtual/range {v21 .. v28}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v25

    move/from16 v8, v26

    move-object/from16 v5, v28

    move/from16 v10, p1

    const/4 v1, 0x1

    if-ne v10, v1, :cond_f

    if-nez v8, :cond_10

    const/4 v6, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_f
    move-object/from16 v1, p0

    goto :goto_11

    :cond_10
    const/4 v6, 0x0

    move-object/from16 v1, p0

    :try_start_c
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_11
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_11
    move/from16 v10, p1

    move-object/from16 v30, v0

    move-object/from16 v29, v11

    const-string/jumbo v0, "comment is null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_12
    move/from16 v10, p1

    move-object/from16 v30, v0

    move-object/from16 v29, v11

    const-string/jumbo v0, "package name is null"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const/4 v2, 0x0

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto :goto_17

    :catch_4
    move-exception v0

    move-object v8, v2

    goto :goto_16

    :cond_13
    move-object/from16 v30, v0

    goto/16 :goto_1

    :goto_13
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v20

    move-object/from16 v11, v29

    move-object/from16 v0, v30

    const/4 v8, 0x0

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_14
    move-object v8, v2

    goto :goto_14

    :catchall_4
    move-exception v0

    const/4 v8, 0x0

    goto :goto_17

    :catch_5
    move-exception v0

    const/4 v8, 0x0

    goto :goto_16

    :cond_15
    const/4 v8, 0x0

    :goto_14
    :try_start_d
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "Data is null"

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_15

    :catchall_5
    move-exception v0

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    :cond_16
    iget-object v0, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_15
    if-eqz v8, :cond_18

    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    return-void

    :goto_16
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_17
    if-eqz v8, :cond_18

    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :catch_7
    :cond_18
    return-void

    :goto_17
    if-eqz v8, :cond_19

    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :catch_8
    :cond_19
    throw v0
.end method
