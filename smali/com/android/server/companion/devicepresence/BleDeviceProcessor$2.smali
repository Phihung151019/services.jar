.class public final Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/BleDeviceProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanFailed(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mScanning:Z

    return-void
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 5

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Unexpected callback "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_0

    const-string/jumbo p2, "Unknown"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "MATCH_LOST"

    goto :goto_0

    :cond_1
    const-string p2, "FIRST_MATCH"

    goto :goto_0

    :cond_2
    const-string p2, "ALL_MATCHES"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CDM_BleDeviceProcessor"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onBleCompanionDeviceLost associationId( "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDM_DevicePresenceProcessor"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    goto :goto_1

    :cond_4
    iget-object p2, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor$2;->this$0:Lcom/android/server/companion/devicepresence/BleDeviceProcessor;

    iget-object p1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/AssociationInfo;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p2

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/BleDeviceProcessor;->mCallback:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onBleCompanionDeviceFound(II)V

    goto :goto_2

    :cond_6
    return-void
.end method
