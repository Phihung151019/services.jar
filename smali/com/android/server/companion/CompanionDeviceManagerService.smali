.class public Lcom/android/server/companion/CompanionDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

.field public final mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

.field public final mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public static -$$Nest$monPackageRemoveOrDataClearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Package removed or data cleared for user=["

    const-string/jumbo v2, "], package=["

    const-string/jumbo v3, "]. Cleaning up CDM data..."

    invoke-static {p1, v1, v2, p2, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CDM_CompanionDeviceManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    const-string/jumbo v2, "pkg-data-cleared"

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->getObservableUuidsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/companion/devicepresence/ObservableUuid;

    iget-object v3, v3, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->removeObservableUuid(ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService$1;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    iput-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-class v2, Landroid/os/PowerExemptionManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/os/PowerExemptionManager;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/app/AppOpsManager;

    const-class v2, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/app/ActivityManagerInternal;

    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/pm/PackageManagerInternal;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/os/UserManager;

    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/os/PowerManagerInternal;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/app/NotificationManager;

    new-instance v2, Lcom/android/server/companion/association/AssociationDiskStore;

    invoke-direct {v2}, Lcom/android/server/companion/association/AssociationDiskStore;-><init>()V

    new-instance v5, Lcom/android/server/companion/association/AssociationStore;

    invoke-direct {v5, v3, v13, v2}, Lcom/android/server/companion/association/AssociationStore;-><init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationDiskStore;)V

    iput-object v5, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    new-instance v4, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    invoke-direct {v4}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;-><init>()V

    iput-object v4, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    new-instance v7, Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    invoke-direct {v7}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;-><init>()V

    iput-object v7, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    new-instance v8, Lcom/android/server/companion/association/AssociationRequestsProcessor;

    invoke-direct {v8, v3, v6, v5}, Lcom/android/server/companion/association/AssociationRequestsProcessor;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V

    iput-object v8, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    move-object/from16 v16, v7

    move-object v7, v4

    move-object v4, v6

    move-object v6, v2

    new-instance v2, Lcom/android/server/companion/BackupRestoreProcessor;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/companion/BackupRestoreProcessor;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;)V

    move-object/from16 v17, v7

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    new-instance v2, Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    invoke-direct {v2, v3}, Lcom/android/server/companion/devicepresence/CompanionAppBinder;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionAppBinder:Lcom/android/server/companion/devicepresence/CompanionAppBinder;

    move-object v8, v2

    new-instance v2, Lcom/android/server/companion/CompanionExemptionProcessor;

    move-object v6, v4

    move-object v4, v9

    move-object v7, v11

    move-object v9, v5

    move-object v5, v10

    move-object v10, v8

    move-object v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/server/companion/CompanionExemptionProcessor;-><init>(Landroid/content/Context;Landroid/os/PowerExemptionManager;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Lcom/android/server/companion/association/AssociationStore;)V

    move-object v11, v6

    move-object v5, v9

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    new-instance v7, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    move-object v9, v2

    move-object v6, v5

    move-object v2, v7

    move-object v4, v10

    move-object v5, v13

    move-object v8, v14

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v9}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;-><init>(Landroid/content/Context;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Landroid/os/UserManager;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Landroid/os/PowerManagerInternal;Lcom/android/server/companion/CompanionExemptionProcessor;)V

    move-object v8, v4

    move-object v5, v6

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    new-instance v10, Lcom/android/server/companion/transport/CompanionTransportManager;

    invoke-direct {v10, v3, v5}, Lcom/android/server/companion/transport/CompanionTransportManager;-><init>(Landroid/content/Context;Lcom/android/server/companion/association/AssociationStore;)V

    iput-object v10, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    move-object v7, v2

    new-instance v2, Lcom/android/server/companion/association/DisassociationProcessor;

    move-object v4, v0

    move-object v6, v11

    move-object v11, v15

    move-object/from16 v9, v17

    invoke-direct/range {v2 .. v11}, Lcom/android/server/companion/association/DisassociationProcessor;-><init>(Landroid/content/Context;Landroid/app/ActivityManager;Lcom/android/server/companion/association/AssociationStore;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/devicepresence/CompanionAppBinder;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;Landroid/app/NotificationManager;)V

    move-object v4, v6

    move-object v7, v9

    iput-object v2, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    new-instance v0, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    iput-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v10}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;-><init>(Landroid/content/Context;Lcom/android/server/companion/transport/CompanionTransportManager;)V

    iput-object v0, v1, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void

    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    const-string v3, "CDM_DevicePresenceProcessor"

    if-nez v1, :cond_1

    const-string p1, "BluetoothManager is not available."

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p1, "BluetoothAdapter is NOT available."

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBluetoothDeviceProcessor:Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v4, v3}, Landroid/bluetooth/BluetoothAdapter;->registerBluetoothConnectionCallback(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;)Z

    iget-object v4, v3, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    iget-object v3, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBleDeviceProcessor:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    iget-object v4, v3, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_4

    iput-object v1, v3, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->checkBleState()V

    new-instance v1, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;

    invoke-direct {v1, v3}, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$1;-><init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v5, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v3, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, v3}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    iget-object v0, p1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->registerLocalListener(Lcom/android/server/companion/association/AssociationStore$OnChangeListener;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;->$r8$clinit:I

    const-string v0, "CDM_InactiveAssociationsRemovalService"

    const-string/jumbo v1, "Scheduling the Association Removal job"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    const-string/jumbo v1, "companion"

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->forNamespace(Ljava/lang/String;)Landroid/app/job/JobScheduler;

    move-result-object v0

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    sget-wide v1, Lcom/android/server/companion/association/InactiveAssociationsRemovalService;->ONE_DAY_INTERVAL:J

    invoke-virtual {p1, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCrossDeviceSyncController:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceConfig;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mPhoneAccountManager:Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;

    iget-object p1, p1, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController$PhoneAccountManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->clearPhoneAccounts()V

    iget-object p1, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "tel"

    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->mCallFacilitators:Ljava/util/List;

    new-instance v0, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1, v1}, Lcom/android/server/companion/datatransfer/contextsync/CallMetadataSyncData$CallFacilitator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "BleDeviceProcessor is already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    return-void
.end method

.method public final onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    iget-object v2, v1, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    const-string/jumbo v1, "companiondevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    const-class p0, Lcom/android/server/companion/CompanionDeviceManagerService$LocalService;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onUserUnlocked() user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDM_CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    const-string v0, "CDM_CompanionDeviceManagerService"

    const-string/jumbo v1, "onUserUnlocking..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService;->mCompanionExemptionProcessor:Lcom/android/server/companion/CompanionExemptionProcessor;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/CompanionExemptionProcessor;->updateAtm(ILjava/util/List;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionExemptionProcessor;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
