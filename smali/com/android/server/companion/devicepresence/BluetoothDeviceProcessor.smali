.class public final Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;
.super Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/companion/association/AssociationStore$OnChangeListener;


# instance fields
.field public final mAllConnectedDevices:Ljava/util/Map;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/ObservableUuidStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V
    .locals 1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    iput-object p2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    iput-object p3, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    return-void
.end method


# virtual methods
.method public final onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    :cond_0
    return-void
.end method

.method public final onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method

.method public final onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v3

    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceConnected(II)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBluetoothCompanionDeviceDisconnected(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mObservableUuidStore:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    iget-object v2, v1, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidsFromCache(I)Ljava/util/List;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/devicepresence/ObservableUuid;

    iget-object v2, v1, Lcom/android/server/companion/devicepresence/ObservableUuid;->mUuid:Landroid/os/ParcelUuid;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    if-eqz p2, :cond_5

    const/4 v3, 0x2

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    :goto_3
    invoke-virtual {v2, v1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    goto :goto_2

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->mAllConnectedDevices:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/devicepresence/BluetoothDeviceProcessor;->onDeviceConnectivityChanged(Landroid/bluetooth/BluetoothDevice;Z)V

    return-void
.end method
