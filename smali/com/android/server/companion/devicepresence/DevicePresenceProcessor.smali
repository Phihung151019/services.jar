.class public final Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

.field public final mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

.field public final mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

.field public final mBtDisconnectedDevices:Ljava/util/Set;

.field public final mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

.field public final mConnectedBtDevices:Ljava/util/Set;

.field public final mConnectedSelfManagedDevices:Ljava/util/Set;

.field public final mConnectedUuidDevices:Ljava/util/Set;

.field public final mContext:Landroid/content/Context;

.field public final mNearbyBleDevices:Ljava/util/Set;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final mPendingDevicePresenceEvents:Landroid/util/SparseArray;

.field public final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public final mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

.field public final mSimulated:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Landroid/os/PowerManagerInternal;Lcom/android/server/companion/CompanionExemptionProcessor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;I)V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    new-instance v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;I)V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    iput-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iput-object p5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    iput-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    new-instance p1, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    invoke-direct {p1, p4, p5, p0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;-><init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    new-instance p1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-direct {p1, p4, p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;-><init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    iput-object p6, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iput-object p7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    return-void
.end method

.method public static enforceCallerShellOrRoot()V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither Shell nor Root"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final bindApplicationIfNeeded(ILjava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    const/4 v8, 0x1

    iget-object v2, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {v2, v1, v6}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v9, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    new-instance v10, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CDM_CompanionAppBinder"

    const-string v2, "Binding user=["

    const-string/jumbo v3, "], package=["

    const-string/jumbo v4, "], isSelfManaged=["

    invoke-static {v1, v2, v3, v6, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string/jumbo v13, "android.permission.BIND_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "CompanionDeviceService "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must require android.permission.BIND_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_CompanionAppBinder"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :try_start_0
    const-string/jumbo v3, "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v3, v4, v13, v1}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v3, v12

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v11, v12, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "CDM_CompanionAppBinder"

    const-string v2, "Can not bind companion applications u"

    const-string v3, "/"

    const-string v4, ": eligible CompanionDeviceService not found.\nA CompanionDeviceService should declare an intent-filter for \"android.companion.CompanionDeviceService\" action and require \"android.permission.BIND_COMPANION_DEVICE_SERVICE\" permission."

    invoke-static {v1, v2, v3, v6, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v9, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    monitor-enter v14

    :try_start_1
    iget-object v0, v9, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "CDM_CompanionAppBinder"

    const-string/jumbo v1, "The package is ALREADY bound."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_a

    :cond_5
    move v15, v12

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v15, v0, :cond_8

    if-nez v15, :cond_6

    move v5, v8

    goto :goto_4

    :cond_6
    move v5, v12

    :goto_4
    iget-object v4, v9, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/ComponentName;

    sget-object v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->sServiceThread:Lcom/android/server/ServiceThread;

    if-eqz v7, :cond_7

    const/high16 v0, 0x10000000

    :goto_5
    move v2, v0

    goto :goto_6

    :cond_7
    const/high16 v0, 0x10000

    goto :goto_5

    :goto_6
    new-instance v0, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;-><init>(IILandroid/content/ComponentName;Landroid/content/Context;Z)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v15, v8

    goto :goto_3

    :cond_8
    iget-object v0, v9, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->mBoundCompanionApplications:Ljava/util/Map;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v12

    :goto_7
    if-ge v1, v0, :cond_9

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v1, v8

    check-cast v2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    invoke-virtual {v2, v10}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;->setListener(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda0;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    if-ge v12, v0, :cond_a

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/2addr v12, v8

    check-cast v1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    invoke-virtual {v1}, Lcom/android/internal/infra/ServiceConnector$Impl;->connect()Lcom/android/internal/infra/AndroidFuture;

    goto :goto_8

    :cond_a
    :goto_9
    return-void

    :goto_a
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_b
    const-string v0, "CDM_DevicePresenceProcessor"

    const-string/jumbo v2, "UserId=["

    const-string/jumbo v3, "], packageName=["

    const-string/jumbo v4, "] is already bound."

    invoke-static {v1, v2, v3, v6, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final canStopBleScan()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    const-string p0, "CDM_DevicePresenceProcessor"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "The BLE scan cannot be stopped, device( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ) is not yet connected OR the BLE is not current present Or is pending to report BLE lost"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    monitor-exit v3

    return p0

    :cond_1
    monitor-exit v3

    goto :goto_0

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isDevicePresent(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "legacyNotifyDevicePresenceEvent() association=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "], isAppeared=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "Package is not bound."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance p2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(ILandroid/companion/AssociationInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void

    :cond_1
    new-instance p2, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(ILandroid/companion/AssociationInfo;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V
    .locals 3

    const-string/jumbo v0, "notifyCompanionDevicePresenceEvent userId=["

    const-string/jumbo v1, "], packageName=["

    const-string/jumbo v2, "], event=["

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->getPrimaryServiceConnector(ILjava/lang/String;)Lcom/android/server/companion/devicepresence/CompanionServiceConnector;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "Package is NOT bound."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p1, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/android/server/companion/devicepresence/CompanionServiceConnector$$ExternalSyntheticLambda2;-><init>(Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->post(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method

.method public final notifySelfManagedDevicePresenceEvent(IZ)V
    .locals 6

    const-string/jumbo v0, "notifySelfManagedDeviceAppeared() id="

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {p1, v0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v3, v2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/companion/AssociationInfo$Builder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    const/4 v3, 0x4

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    const/4 v3, 0x5

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    :goto_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Enable hint mode for device device profile: "

    invoke-static {v0, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 p1, 0x12

    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Association id=["

    const-string/jumbo v0, "] is not self-managed."

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 3

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBleCompanionDeviceFound(II)V
    .locals 3

    const-string v0, "CDM_DevicePresenceProcessor"

    const-string/jumbo v1, "onBleCompanionDeviceFound associationId( "

    const-string v2, " )"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->unScheduleDeviceDisappeared(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBluetoothCompanionDeviceConnected(II)V
    .locals 5

    const-string/jumbo v0, "onBluetoothCompanionDeviceConnected: associationId( "

    const-string v1, "Device ( "

    const-string v2, "CDM_DevicePresenceProcessor"

    const-string/jumbo v3, "onBluetoothCompanionDeviceConnected: associationId( "

    const-string v4, " )"

    invoke-static {p1, v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CDM_DevicePresenceProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ) is reconnected within 10s."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->unScheduleDeviceDisappeared(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "CDM_DevicePresenceProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->canStopBleScan()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-virtual {p0}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->stopScanIfNeeded()V

    :cond_2
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onBluetoothCompanionDeviceDisconnected(II)V
    .locals 3

    const-string v0, "CDM_DevicePresenceProcessor"

    const-string/jumbo v1, "onBluetoothCompanionDeviceDisconnected associationId( "

    const-string v2, " )"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-virtual {p2}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->startScan()V

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceDisappearedScheduler:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-string/jumbo p2, "scheduleBleDeviceDisappeared for Device: ( "

    const-string v0, " )."

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final onDeviceLocked(IIILandroid/os/ParcelUuid;)V
    .locals 2

    if-eqz p3, :cond_4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    const-string p0, "CDM_DevicePresenceProcessor"

    const-string p1, "Event: "

    const-string/jumbo p2, "is not supported"

    invoke-static {p3, p1, p2, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    new-instance p2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;

    const/4 p3, 0x1

    invoke-direct {p2, p4, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelUuid;II)V

    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    new-instance p2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p4, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$$ExternalSyntheticLambda1;-><init>(Landroid/os/ParcelUuid;II)V

    invoke-interface {p0, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    const-string v0, "CDM_DevicePresenceProcessor"

    const-string v1, "Current user is not in unlocking or unlocked stage yet. Notify the application when the phone is unlocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    new-instance v1, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v1, p1, p3, p4}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method

.method public final onDevicePresenceEvent(Ljava/util/Set;II)V
    .locals 10

    const-string v0, " ) is present, do not need to send the callback with event ( 0 )."

    const-string v1, "Device ( "

    const-string v2, "CDM_DevicePresenceProcessor"

    const-string/jumbo v3, "onDevicePresenceEvent() id=["

    const-string/jumbo v4, "], event=["

    const-string/jumbo v5, "]..."

    invoke-static {p2, p3, v3, v4, v5}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v2, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "CDM_DevicePresenceProcessor"

    const-string p1, "Association doesn\'t exist."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/companion/DevicePresenceEvent;

    const/4 v6, 0x0

    invoke-direct {v5, p2, p3, v6}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    const/4 v6, 0x1

    if-nez p3, :cond_2

    iget-object v7, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v8, Ljava/util/HashSet;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "CDM_DevicePresenceProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v7

    goto :goto_2

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    if-eqz p3, :cond_8

    if-eq p3, v6, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_8

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_8

    const/4 v0, 0x5

    if-eq p3, v0, :cond_3

    const-string p0, "CDM_DevicePresenceProcessor"

    const-string p1, "Event: "

    const-string p2, " is not supported."

    invoke-static {p3, p1, p2, p0}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p2, "CDM_DevicePresenceProcessor"

    const-string/jumbo p3, "The association is already NOT present."

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p2, v3, v4}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p0, "CDM_DevicePresenceProcessor"

    const-string/jumbo p1, "Package is not bound"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_6

    if-eqz p1, :cond_7

    :cond_6
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {p0, v2, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V

    :cond_7
    invoke-virtual {p0, v3, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    return-void

    :cond_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p2, "CDM_DevicePresenceProcessor"

    const-string/jumbo p3, "The association is already present."

    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {p2, v3, v4, v6}, Lcom/android/server/companion/CompanionExemptionProcessor;->exemptPackage(ILjava/lang/String;Z)V

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result p2

    if-nez p2, :cond_a

    if-eqz p1, :cond_b

    :cond_a
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {p0, v2, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->legacyNotifyDevicePresenceEvent(Landroid/companion/AssociationInfo;Z)V

    :cond_b
    return-void
.end method

.method public final onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDevicePresenceEventByUuid ObservableUuid=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "], event=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_DevicePresenceProcessor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    iget v3, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_0

    invoke-virtual {p0, v4, v3, p2, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    return-void

    :cond_0
    new-instance v2, Landroid/companion/DevicePresenceEvent;

    invoke-direct {v2, v4, p2, v0}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    const/4 v4, 0x2

    iget-object p1, p1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mPackageName:Ljava/lang/String;

    if-eq p2, v4, :cond_5

    const/4 v4, 0x3

    if-eq p2, v4, :cond_1

    const-string p0, "Event: "

    const-string p1, " is not supported"

    invoke-static {p2, p0, p1, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string/jumbo p0, "This device is already disconnected."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p2, v3, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->isCompanionApplicationBound(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo p0, "Package is not bound."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2, v3, p1}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string/jumbo p2, "This device is already connected."

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p2, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->bindApplicationIfNeeded(ILjava/lang/String;Z)V

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->notifyDevicePresenceEvent(ILjava/lang/String;Landroid/companion/DevicePresenceEvent;)V

    return-void
.end method

.method public final sendDevicePresenceEventOnUnlocked(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    iget-object v2, v0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/DevicePresenceEvent;

    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/devicepresence/ObservableUuid;

    iget-object v6, v5, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getEvent()I

    move-result v3

    invoke-virtual {v2}, Landroid/companion/DevicePresenceEvent;->getAssociationId()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v5, v2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_2
    return-void

    :cond_4
    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const-string v2, "CDM_DevicePresenceProcessor"

    const-string v4, "Event: "

    const-string/jumbo v5, "is not supported"

    invoke-static {v3, v4, v5, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBleCompanionDeviceFound(II)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mPendingDevicePresenceEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_8
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final shouldBindPackage(ILjava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->shouldBindWhenPresent()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :cond_3
    if-ge v1, p2, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/companion/devicepresence/ObservableUuid;

    iget-object v2, v2, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public final simulateDeviceEvent(II)V
    .locals 4

    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSchedulerHelper:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceDisconnected(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Event: "

    const-string/jumbo v0, "is not supported"

    invoke-static {p2, p1, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    return-void

    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Association with id "

    const-string v0, " does not exist."

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "CDM_DevicePresenceProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Start observing request=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "] for userId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "], package=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->isUuidBeingObserved(ILandroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "CDM_DevicePresenceProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "UUID=["

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p4, "], package=["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "], userId=["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "] is already being observed."

    invoke-static {p3, p2, p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_1
    new-instance p1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-direct {p1, p3, v0, p2, p4}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "CDM_ObservableUuidStore"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Writing uuid=["

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] to store..."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object p4

    new-instance v0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuid;)V

    invoke-interface {p4, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, p4}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p3, p4, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;ILjava/util/List;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getAssociationId()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p0, "CDM_DevicePresenceProcessor"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Associated device id=["

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "] is already being observed. No-op."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance p3, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {p3, p2}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p3, p2}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->isDevicePresent(I)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "CDM_DevicePresenceProcessor"

    const-string p3, "Device is already present. Triggering callback."

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedBtDevices:Ljava/util/Set;

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    :cond_6
    :goto_0
    const-string p0, "CDM_DevicePresenceProcessor"

    const-string/jumbo p1, "Registered device presence listener."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Stop observing request=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] for userId=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "], package=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "]..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CDM_DevicePresenceProcessor"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/android/server/companion/utils/PermissionsUtils;->enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->isUuidBeingObserved(ILandroid/os/ParcelUuid;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "UUID=["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "], userId=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] is already not being observed."

    invoke-static {p3, p1, v2, p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_1
    invoke-virtual {p1, p3, v0, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mConnectedUuidDevices:Ljava/util/Set;

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/companion/ObservingDevicePresenceRequest;->getAssociationId()I

    move-result p1

    iget-object p4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Associated device id=["

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "] is already not being observed. No-op."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v0, Landroid/companion/AssociationInfo$Builder;

    invoke-direct {v0, p1}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/companion/AssociationInfo$Builder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    :goto_0
    const-string/jumbo p1, "Unregistered device presence listener."

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p3, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->shouldBindPackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;->unbindCompanionApp(ILjava/lang/String;)V

    :cond_4
    return-void
.end method
