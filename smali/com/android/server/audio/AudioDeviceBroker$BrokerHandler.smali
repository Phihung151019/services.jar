.class public final Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x16

    const/16 v3, 0x64

    if-eq v1, v2, :cond_1e

    const/16 v4, 0x17

    if-eq v1, v4, :cond_1d

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_1b

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_1a

    const/4 v4, 0x0

    const/16 v5, 0x2d

    const/4 v6, 0x2

    if-eq v1, v5, :cond_18

    const/16 v5, 0x2e

    const/4 v7, 0x3

    if-eq v1, v5, :cond_16

    const/16 v5, 0x31

    if-eq v1, v5, :cond_15

    const/16 v5, 0x34

    if-eq v1, v5, :cond_14

    const/16 v5, 0xacd

    const/4 v8, -0x1

    if-eq v1, v5, :cond_f

    const/16 v5, 0xa

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    const/16 v0, 0xac6

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$mhandleCustomMessage(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/Message;)V

    goto/16 :goto_e

    :cond_0
    const-string v0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeHearingAidDeviceUnavailableNow(Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/server/audio/AudioService;->onUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V

    goto/16 :goto_e

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onSynchronizeAdiDevicesInInventory(Lcom/android/server/audio/AdiDeviceState;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    throw p0

    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onUpdateLeAudioGroupAddresses(I)V

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_e

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object p0, v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v0, :cond_2

    goto :goto_3

    :cond_2
    move v0, v4

    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v2, v4, v0}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    :goto_4
    monitor-exit v1

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-static {v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto/16 :goto_e

    :catchall_6
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object p0, v0

    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    throw p0

    :goto_5
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw p0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->onPersistAudioDeviceSettings()V

    goto/16 :goto_e

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    goto/16 :goto_e

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_4

    goto :goto_6

    :cond_4
    const-string v5, "AS.AudioDeviceBroker"

    const-string v6, "Communication client died"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    iget-boolean v9, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    const-string/jumbo v10, "onCommunicationRouteClientDied"

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    :goto_6
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :catchall_9
    move-exception v0

    move-object p0, v0

    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    :try_start_15
    throw p0

    :goto_7
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    throw p0

    :pswitch_9
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    :try_start_17
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iput-object v6, v5, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget-object v5, v5, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iput-object v6, v5, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    goto :goto_8

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_9

    :cond_5
    :goto_8
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v7, v5, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v8, v7, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    iget v9, v5, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    if-eq v8, v9, :cond_6

    iput v4, v5, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    iput v4, v5, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    iput-object v6, v5, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    :cond_6
    iget v4, v7, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    if-eq v4, v0, :cond_7

    invoke-virtual {v5}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    const-string/jumbo v4, "setNewModeOwner"

    invoke-virtual {v5, v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    :cond_7
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->decrementAudioModeResetCount()V

    goto/16 :goto_e

    :catchall_b
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :goto_9
    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    :try_start_1a
    throw p0

    :goto_a
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw p0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mStreamStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_8

    iget v8, v0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    :cond_8
    invoke-virtual {v2, v4, v8, v7}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    goto :goto_b

    :catchall_c
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_9
    :goto_b
    monitor-exit v1

    goto/16 :goto_e

    :goto_c
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    throw p0

    :pswitch_b
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1c
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v8, 0x8000000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    goto :goto_d

    :cond_a
    move v0, v4

    :goto_d
    invoke-virtual {v5, v6, v7, v0}, Lcom/android/server/audio/BtHelper;->setHearingAidVolume(IIZ)V

    monitor-exit v1

    goto :goto_e

    :catchall_d
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    throw p0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->onReportNewRoutes()V

    monitor-exit v1

    goto :goto_e

    :catchall_e
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    throw p0

    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-static {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->-$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;I)V

    goto :goto_e

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    const-string/jumbo v6, "MSG_L_BLUETOOTH_DEVICE_CONFIG_CHANGE"

    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/android/server/audio/BtHelper;->getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1e
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/server/audio/AudioDeviceInventory;->onBluetoothDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;IZ)I

    move-result v0

    add-int/2addr v3, v0

    monitor-exit v2

    :cond_b
    :goto_e
    move v10, v3

    goto/16 :goto_1f

    :catchall_f
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    throw p0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1f
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeA2dpDeviceUnavailableNow(ILjava/lang/String;)V

    monitor-exit v1

    goto :goto_e

    :catchall_10
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    throw p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_20
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_11

    :try_start_21
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->resetBluetoothSco()V

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_12

    :try_start_22
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_11

    goto :goto_e

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :catchall_12
    move-exception v0

    move-object p0, v0

    :try_start_23
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    :try_start_24
    throw p0

    :goto_f
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    throw p0

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_25
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceInventory;->onToggleHdmi()V

    monitor-exit v1

    goto :goto_e

    :catchall_13
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    throw p0

    :pswitch_12
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_10

    :cond_c
    move v4, v5

    :goto_10
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v4, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;Z)V

    goto :goto_e

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;Z)V

    goto :goto_e

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_26
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v4, v0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    if-ne v2, v4, :cond_d

    goto :goto_11

    :cond_d
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v6, v0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Lcom/android/server/audio/BtHelper;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    iput v2, v0, Lcom/android/server/audio/BtHelper;->mScoConnectionState:I

    :goto_11
    monitor-exit v1

    goto/16 :goto_e

    :catchall_14
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_14

    throw p0

    :pswitch_15
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_27
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onSetWiredDeviceConnectionState(Lcom/android/server/audio/AudioDeviceInventory$WiredDeviceConnectionState;)V

    monitor-exit v1

    goto/16 :goto_e

    :catchall_15
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_15

    throw p0

    :pswitch_16
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_16

    :try_start_29
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceInventory;->onRestoreDevices()V

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_17

    :try_start_2a
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v7}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_18

    :try_start_2b
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_12

    :cond_e
    move v4, v5

    :goto_12
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v6, "MSG_RESTORE_DEVICES"

    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/audio/AudioDeviceBroker;->setForceUse_Async(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo v4, "MSG_RESTORE_DEVICES"

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_17

    :try_start_2c
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    goto/16 :goto_e

    :catchall_16
    move-exception v0

    move-object p0, v0

    goto :goto_14

    :catchall_17
    move-exception v0

    move-object p0, v0

    goto :goto_13

    :catchall_18
    move-exception v0

    move-object p0, v0

    :try_start_2d
    monitor-exit v6
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_18

    :try_start_2e
    throw p0

    :goto_13
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    :try_start_2f
    throw p0

    :goto_14
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_16

    throw p0

    :cond_f
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    iget v1, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v1, v6, :cond_10

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    invoke-virtual {v1, v5}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "msg: MSG_L_SET_BT_ACTIVE_DEVICE received with null profile proxy: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    invoke-virtual {v2, v4, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto/16 :goto_e

    :cond_10
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    iget-boolean v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    const-string/jumbo v7, "MSG_L_SET_BT_ACTIVE_DEVICE"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/server/audio/BtHelper;->getCodecWithFallback(Landroid/bluetooth/BluetoothDevice;IZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_30
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, v5, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1a

    :try_start_31
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-ne v7, v2, :cond_11

    iget-boolean v7, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mIsLeOutput:Z

    if-eqz v7, :cond_12

    goto :goto_15

    :catchall_19
    move-exception v0

    move-object p0, v0

    goto :goto_17

    :cond_11
    :goto_15
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v7, v7, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7}, Lcom/android/server/audio/AudioService;->getBluetoothContextualVolumeStream()I

    move-result v8

    :cond_12
    invoke-virtual {v6, v0, v1, v8}, Lcom/android/server/audio/AudioDeviceInventory;->onSetBtActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;II)V

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    if-eq v0, v2, :cond_13

    const/16 v1, 0x15

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_16

    :cond_13
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientsDevices()V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    const-string/jumbo v2, "setBluetoothActiveDevice"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    :goto_16
    monitor-exit v5
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_19

    :try_start_32
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1a

    goto/16 :goto_e

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_18

    :goto_17
    :try_start_33
    monitor-exit v5
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_19

    :try_start_34
    throw p0

    :goto_18
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1a

    throw p0

    :cond_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->notifyActiveDeviceChangeApplied(Landroid/bluetooth/BluetoothDevice;)I

    goto/16 :goto_e

    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_35
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/audio/AudioDeviceInventory;->onMakeLeAudioDeviceUnavailableNow(IILjava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_e

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1b

    throw p0

    :cond_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_36
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v4, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    iget v5, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    iget v6, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/audio/BtHelper;->setLeAudioVolume(III)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioDeviceBroker;->isDualModeActive()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    if-ne v2, v7, :cond_17

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    invoke-virtual {v2, v0}, Lcom/android/server/audio/BtHelper;->setAvrcpAbsoluteVolumeIndex(I)V

    goto :goto_19

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_1a

    :cond_17
    :goto_19
    monitor-exit v1

    goto/16 :goto_e

    :goto_1a
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1c

    throw p0

    :cond_18
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_19

    goto/16 :goto_e

    :cond_19
    sget-object v2, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "msg: MSG_L_BT_ACTIVE_DEVICE_CHANGE_EXT "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v7, "AS.AudioDeviceBroker"

    invoke-virtual {v5, v4, v7}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_37
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v4, v1}, Lcom/android/server/audio/AudioDeviceInventory;->setBluetoothActiveDevice(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;)V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1d

    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mProfile:I

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_b

    iget v1, v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;->mState:I

    if-ne v1, v6, :cond_b

    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_e

    :catchall_1d
    move-exception v0

    move-object p0, v0

    :try_start_38
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1d

    throw p0

    :cond_1a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_39
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    :try_start_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->attributionSource:Landroid/content/AttributionSource;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;->eventSource:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1f

    :try_start_3b
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    goto/16 :goto_e

    :catchall_1e
    move-exception v0

    move-object p0, v0

    goto :goto_1b

    :catchall_1f
    move-exception v0

    move-object p0, v0

    :try_start_3c
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_1f

    :try_start_3d
    throw p0

    :goto_1b
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1e

    throw p0

    :cond_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3e
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v4, v4, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_21

    :try_start_3f
    iget-object v5, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v5, v1}, Lcom/android/server/audio/AudioDeviceBroker;->onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_22

    :try_start_40
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_21

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_41
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget v4, v2, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    if-lez v4, :cond_1c

    sub-int/2addr v4, v0

    iput v4, v2, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    goto :goto_1c

    :cond_1c
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "mCommunicationDeviceUpdateCount already 0 in MSG_L_SET_COMMUNICATION_DEVICE_FOR_CLIENT"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto/16 :goto_e

    :catchall_20
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_20

    throw p0

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_1d

    :catchall_22
    move-exception v0

    move-object p0, v0

    :try_start_42
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_22

    :try_start_43
    throw p0

    :goto_1d
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_21

    throw p0

    :cond_1d
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_44
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_23

    :try_start_45
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/audio/BtHelper;->onBtProfileConnected(ILandroid/bluetooth/BluetoothProfile;)V

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_24

    :try_start_46
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_23

    goto/16 :goto_e

    :catchall_23
    move-exception v0

    move-object p0, v0

    goto :goto_1e

    :catchall_24
    move-exception v0

    move-object p0, v0

    :try_start_47
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_24

    :try_start_48
    throw p0

    :goto_1e
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_23

    throw p0

    :cond_1e
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_49
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_25

    :try_start_4a
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/audio/BtHelper;->onBtProfileDisconnected(I)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioDeviceInventory;->onBtProfileDisconnected(I)V

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_26

    :try_start_4b
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_25

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->resetBtScoOnByApp()V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->disconnectA2dpProfile()V

    goto/16 :goto_e

    :goto_1f
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v5, 0x23

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    :cond_1f
    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/16 v2, 0xacb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    :cond_20
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p1

    if-eqz p1, :cond_21

    :try_start_4c
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "AS.AudioDeviceBroker"

    const-string v0, "Exception releasing wakelock"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    goto :goto_20

    :catchall_26
    move-exception v0

    move-object p0, v0

    :try_start_4d
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_26

    :try_start_4e
    throw p0

    :goto_20
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_25

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_8
        :pswitch_7
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x36
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_0
    .end packed-switch
.end method
