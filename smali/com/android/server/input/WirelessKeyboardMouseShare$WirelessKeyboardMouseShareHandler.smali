.class public final Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const-string/jumbo v0, "registerApp()="

    const-string v1, "Get Report for Invalid report id = "

    const-string/jumbo v2, "retry connect "

    const-string/jumbo v3, "retry count : "

    const-string/jumbo v4, "will connect "

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "unregister by MESSAGE_NEED_HOST_ROLE message"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    const-string/jumbo v1, "startHIDDeviceByKey need to turn on bt."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v9, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    monitor-exit p1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    move-result v0

    if-ge v0, v7, :cond_3

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput-boolean v9, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    :cond_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    iget v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    if-ge v1, v7, :cond_5

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_5
    iget v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    if-le v0, v6, :cond_8

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iput v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    goto :goto_4

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    if-ge v0, v7, :cond_7

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_4

    :cond_7
    iput v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    :cond_8
    :goto_4
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendReadyToConnectIntent()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendWirelessKeyboardShareStatus()V

    return-void

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v9, :cond_9

    move v8, v9

    :cond_9
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v8}, Lcom/android/server/input/InputManagerService;->switchWirelessKeyboardShare(Z)V

    return-void

    :pswitch_7
    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "MESSAGE_NEED_TO_INITIALIZING"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-byte p1, p1

    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "MESSAGE_SET_REPORT_RECEIVED for id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    const-string/jumbo v0, "onSetReport(), sending successful handshake for set report"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p0, v8}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    return-void

    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-byte p1, p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v2, v2, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_a

    :try_start_3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    invoke-virtual {v1, p0, v9, p1, v0}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_a
    if-ne p1, v9, :cond_c

    const/16 v0, 0x8

    new-array v1, v0, [B

    const-string/jumbo v3, "WirelessKeyboardMouseShare"

    const-string/jumbo v4, "get_report id for keyboard"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    :goto_6
    if-ge v3, v0, :cond_b

    aput-byte v8, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, p1, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0, v9, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_8

    :cond_c
    if-ne p1, v6, :cond_e

    const/4 v0, 0x4

    new-array v1, v0, [B

    const-string/jumbo v3, "WirelessKeyboardMouseShare"

    const-string/jumbo v4, "get_report id for mouse"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v8

    :goto_7
    if-ge v3, v0, :cond_d

    aput-byte v8, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0, p1, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0, v9, p1, v1}, Landroid/bluetooth/BluetoothHidDevice;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    goto :goto_8

    :cond_e
    const-string/jumbo v0, "WirelessKeyboardMouseShare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p0, v6}, Landroid/bluetooth/BluetoothHidDevice;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    :goto_8
    monitor-exit v2

    return-void

    :goto_9
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :pswitch_a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    :pswitch_b
    new-instance v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    const-string/jumbo v2, "Samsung HID Device"

    const-string/jumbo v3, "Samsung HID Keyboard/Mouse"

    const-string/jumbo v4, "Samsung"

    sget-object v6, Lcom/android/server/input/HidConsts;->DESCRIPTOR:[B

    const/16 v5, -0x40

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B)V

    new-instance v2, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/4 v5, 0x2

    const/16 v6, 0xc8

    const/4 v3, 0x2

    const/16 v4, 0xc8

    const/16 v7, 0x2710

    const/16 v8, 0x2710

    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    new-instance v3, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    const/16 v6, 0x9

    const/16 v7, 0x384

    const/4 v4, 0x2

    const/16 v5, 0x384

    const/16 v9, 0x2710

    invoke-direct/range {v3 .. v9}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;-><init>(IIIIII)V

    :try_start_4
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothHidDevice;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothHidDevice$Callback;)Z

    move-result p0

    const-string/jumbo p1, "WirelessKeyboardMouseShare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "WirelessKeyboardMouseShare"

    const-string p1, "Can\'t registerApp"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
