.class public final Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    :pswitch_0
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mSimulated:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    :cond_0
    return-void

    :pswitch_0
    const-string v0, " ) is likely BLE out of range, sending callback with event ( 1 )"

    const-string v1, "Device ( "

    iget p1, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v2, v2, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v3, v3, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v4, v4, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    const-string v3, "CDM_DevicePresenceProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v1, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mNearbyBleDevices:Ljava/util/Set;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEvent(Ljava/util/Set;II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public unScheduleDeviceDisappeared(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CDM_DevicePresenceProcessor"

    const-string/jumbo v1, "unScheduleDeviceDisappeared for Device( "

    const-string v2, " )"

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v0, v0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v1, v1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$BleDeviceDisappearedScheduler;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    iget-object v1, v1, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->mBtDisconnectedDevicesBlePresence:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
