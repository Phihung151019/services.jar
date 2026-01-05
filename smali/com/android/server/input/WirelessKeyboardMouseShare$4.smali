.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$4;
.super Landroid/bluetooth/BluetoothHidDevice$Callback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidDevice$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppStatusChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onAppStatusChanged: pluggedDevice="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registered="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-object v2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v2, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 10

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnectionStateChanged: device="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p2, v3, :cond_6

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    iget-object v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v1

    :goto_1
    if-ge v8, v7, :cond_3

    :try_start_1
    iget-object v9, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v9, v9, v8

    if-nez v9, :cond_2

    monitor-exit v6

    move v7, v8

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    iput v7, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    invoke-static {v5, p1, v6}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I

    move-result v5

    if-nez v5, :cond_7

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p2, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    move v5, v4

    :cond_7
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput p2, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    const/4 v7, 0x6

    const/16 v8, 0xb

    if-ne p2, v3, :cond_a

    iget-object v2, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-object p1, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLatestConnectedName:Ljava/lang/String;

    const-string/jumbo v2, "WirelessKeyboardMouseShare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mPluggedDevice is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-object p1, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    iput-boolean v4, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v7, v4, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    if-ne v5, v3, :cond_9

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v1, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    :cond_9
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v4, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    :cond_a
    if-nez p2, :cond_f

    iget-boolean v5, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    if-nez v5, :cond_b

    iget-object v5, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    invoke-virtual {v5, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    invoke-virtual {v5, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    :cond_b
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-boolean v6, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    if-nez v6, :cond_e

    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_c

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v5}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    goto :goto_5

    :cond_c
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v1, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    iget-object v5, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v6, v6, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    :goto_5
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v4, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    iput-boolean v1, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    iput-object v2, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v5, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {v2, v7, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    :cond_f
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_10
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    if-eqz v0, :cond_13

    if-ne p2, v3, :cond_13

    move p2, v1

    :goto_7
    const/4 v0, 0x3

    if-gt p2, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    aget-object v0, v0, p2

    if-eqz v0, :cond_12

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_13
    return-void

    :goto_8
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final onGetReport(Landroid/bluetooth/BluetoothDevice;BBI)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 p4, 0x2

    if-ne p2, p4, :cond_4

    if-eq p3, v1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onGetReport(), output report for invalid id = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1, p4}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    if-nez p2, :cond_3

    const/16 p2, 0x8

    new-array v0, p2, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1, p4, p3, v0}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    invoke-virtual {p0, p1, p4, p3, p2}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    return-void

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onGetReport(), unsupported report type = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void
.end method

.method public final onInterruptData(Landroid/bluetooth/BluetoothDevice;B[B)V
    .locals 0

    const-string/jumbo p0, "intr data: reportId="

    const-string p1, " data="

    invoke-static {p2, p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSetProtocol(Landroid/bluetooth/BluetoothDevice;B)V
    .locals 1

    const-string/jumbo p1, "protocol set to "

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    invoke-static {p2, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSetReport(Landroid/bluetooth/BluetoothDevice;BB[B)V
    .locals 2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "onSetReport(), unsupported report type = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    :cond_0
    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eq p3, p2, :cond_2

    if-ne p3, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onVirtualCableUnplug(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$4;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo v0, "onVirtualCableUnplug mPluggedDevice is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
