.class public final Lcom/android/server/audio/AudioDeviceBroker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final MESSAGES_MUTE_MUSIC:Ljava/util/Set;

.field public static final MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

.field public static final VALID_COMMUNICATION_DEVICE_TYPES:[I

.field public static sLastDeviceConnectMsgTime:J

.field public static final sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;


# instance fields
.field public mAccessibilityStrategyId:I

.field public mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

.field public mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

.field public final mAudioService:Lcom/android/server/audio/AudioService;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public final mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mBluetoothA2dpSuspendedApplied:Z

.field public mBluetoothA2dpSuspendedExt:Z

.field public mBluetoothA2dpSuspendedInt:Z

.field public final mBluetoothAudioStateLock:Ljava/lang/Object;

.field public mBluetoothLeSuspendedApplied:Z

.field public mBluetoothLeSuspendedExt:Z

.field public mBluetoothLeSuspendedInt:Z

.field public mBluetoothScoOn:Z

.field public mBluetoothScoOnApplied:Z

.field public final mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

.field public final mBtHelper:Lcom/android/server/audio/BtHelper;

.field public final mCommDevDispatchers:Landroid/os/RemoteCallbackList;

.field public final mCommunicationDeviceLock:Ljava/lang/Object;

.field public mCommunicationDeviceUpdateCount:I

.field public final mCommunicationRouteClients:Ljava/util/LinkedList;

.field public mCommunicationStrategyId:I

.field public final mContext:Landroid/content/Context;

.field public mCurCommunicationPortId:I

.field public mCurRCVBackOffState:Z

.field public mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

.field public final mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

.field public final mDeviceStateLock:Ljava/lang/Object;

.field public mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

.field public final mDuplexCommunicationDevices:Ljava/util/HashMap;

.field public mModeRequesterPackage:Ljava/lang/String;

.field public final mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

.field public mReceiverSupported:Ljava/lang/Boolean;

.field public mRequestScoCount:I

.field public mRequestScoUid:I

.field public mSarBackoffParam:Z

.field public mScoCb:Landroid/os/IBinder;

.field public final mSetModeLock:Ljava/lang/Object;

.field public final mSystemServer:Lcom/android/server/audio/SystemServerAdapter;


# direct methods
.method public static -$$Nest$mhandleCustomMessage(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/Message;)V
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const-string p0, "AS.AudioDeviceBroker"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid message "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v1, v1, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v2, "MSG_CHECK_ABNORMAL_SCO skipped to remove SCO client mode 0 uid = "

    const-string v4, " mAudioModeOwner  = "

    invoke-static {p1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p0, "AS.AudioDeviceBroker"

    invoke-virtual {v1, v3, p0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    iget-object v7, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v5, 0x1

    iget-object v8, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v8}, Landroid/content/AttributionSource;->getUid()I

    move-result v8

    if-ne p1, v8, :cond_2

    invoke-virtual {v6}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    sget-object v7, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MSG_CHECK_ABNORMAL_SCO removed SCO client uid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "AS.AudioDeviceBroker"

    invoke-virtual {v8, v3, v6}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v7, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_a

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p1}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    monitor-enter p1

    :try_start_1
    iget v1, p1, Lcom/android/server/audio/BtHelper;->mScoAudioState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    monitor-exit p1

    if-eqz v0, :cond_a

    sget-object p1, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v1, "MSG_CHECK_ABNORMAL_SCO stopScoUsingVirtualVoiceCall()"

    invoke-direct {v0, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "AS.AudioDeviceBroker"

    invoke-virtual {v0, v3, v1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p1, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget-object p1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    :goto_2
    const/4 p1, 0x5

    iput p1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isInCommunication()Z

    move-result p1

    const-string v1, "AS.AudioDeviceBroker"

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    if-eqz p1, :cond_8

    :cond_7
    const-string/jumbo p1, "l_device_current_output"

    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    const-string/jumbo p1, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    :goto_4
    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v3

    :goto_5
    iget-boolean p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    if-ne p1, v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v2, "android.samsung.media.action.receiver_sar"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.samsung.media.extra.receiver"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    sget-object v4, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v2, p1, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    const-string/jumbo p0, "Send receiver_sar state "

    invoke-static {p0, v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_a
    :goto_6
    return-void

    :catchall_2
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->onSetDeviceConnectionStateForceByUser(Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;)V

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :pswitch_5
    new-instance p1, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v3, v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xac7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static -$$Nest$monReceiveBtEvent(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Intent;)V
    .locals 6

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    const-string/jumbo v0, "SCO volume set to index "

    const-string/jumbo v1, "onReceiveBtEvent ACTION_ACTIVE_DEVICE_CHANGED received with null profile proxy for device: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    const-class v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/server/audio/BtHelper;->isProfilePoxyConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string p1, "AS.BtHelper"

    invoke-virtual {v2, v5, p1}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v0, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    new-instance p1, Lcom/android/server/audio/BtHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/audio/BtHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/BtHelper;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :cond_1
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "android.bluetooth.profile.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/BtHelper;->onScoAudioStateChanged(I)V

    const/16 v2, 0xc

    if-ne v1, v2, :cond_6

    const-string/jumbo v1, "com.samsung.bt.hfp.intent.extra.HEADSET_SCO_VOLUME"

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    const/16 v2, 0x404

    if-eq v1, v2, :cond_3

    const/16 v2, 0x408

    if-eq v1, v2, :cond_3

    const/16 v2, 0x420

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x40

    goto :goto_1

    :cond_3
    const/16 v1, 0x20

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v1, 0x10

    :goto_1
    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string v3, "BtHelper.receiveBtEvent"

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, v5, p1, v1, v3}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    const-string v2, "AS.BtHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " device = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " by BT intent"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE_TYPE"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    if-eq v1, v4, :cond_6

    const-string/jumbo v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/BtHelper;->onSetBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static -$$Nest$monSendBecomingNoisyIntent(Lcom/android/server/audio/AudioDeviceBroker;I)V
    .locals 9

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isMultiSoundOnInternal()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getPinDevice()I

    move-result v1

    if-eq v1, p1, :cond_6

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "AS.MultiSoundManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendBecomingNoisyIntentToUnpinApps, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "0"

    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x8000

    invoke-static {v3, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    if-eq p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isRemoteSubmixAppExist()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object v6, v6, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v6, v5}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice(Z)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :cond_2
    if-ge v6, v5, :cond_3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v6, v0

    check-cast v7, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    iget v8, v7, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-ne v8, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget v4, v7, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object v1, v1, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v4}, Lcom/android/server/audio/AudioService;->getPackageName(I)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    const-string/jumbo p1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance p1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v0, "broadcast ACTION_AUDIO_BECOMING_NOISY to unppin apps"

    invoke-direct {p1, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    invoke-virtual {p1, v2, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    sget-object v1, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v4, "broadcast ACTION_AUDIO_BECOMING_NOISY"

    invoke-direct {v3, v4}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "AS.AudioDeviceBroker"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v1, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object v2, v1, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    const/high16 v4, 0x4000000

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_4
    iget-object v1, v1, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_4
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string/jumbo p1, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_8
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object p1, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    if-nez p1, :cond_9

    return-void

    :cond_9
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_5
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_3
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x4

    const/16 v3, 0xb

    const/4 v4, 0x5

    const/16 v5, 0xe

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    sput-object v5, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_SAR_RCV_CONTROL:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x7
        0x3
        0x16
        0x1
        0x4
        0x17
        0x1a
        0xb
        0x1b
        0x5
        0x9
        0x13
        0x15
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioSystemAdapter;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-direct {v2, v3, v3, v3}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;-><init>(III)V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v2, -0x7ffffff0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v2, 0x4000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/high16 v2, -0x7e000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v2, -0x7ffffff8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v11, v9

    move-object v13, v9

    invoke-static/range {v4 .. v13}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurRCVBackOffState:Z

    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSarBackoffParam:Z

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mModeRequesterPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    new-instance v2, Lcom/android/server/audio/BtHelper;

    invoke-direct {v2, p0, p1}, Lcom/android/server/audio/BtHelper;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioDeviceInventory;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    new-instance v2, Lcom/android/server/audio/SystemServerAdapter;

    invoke-direct {v2, p1}, Lcom/android/server/audio/SystemServerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    move-object/from16 v2, p3

    iput-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string/jumbo v4, "handleAudioDeviceEvent"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;-><init>(Lcom/android/server/audio/AudioDeviceBroker;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, "AS.AudioDeviceBroker"

    const-string v2, "Interruption while waiting on BrokerHandler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    iput-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->reapplyAudioHalBluetoothState()V

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->initRoutingStrategyIds()V

    iput-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/audio/SystemServerAdapter$1;

    invoke-direct {v2, v0}, Lcom/android/server/audio/SystemServerAdapter$1;-><init>(Lcom/android/server/audio/SystemServerAdapter;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v0, 0xac7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v1, "audio.device.queueOnBluetoothActiveDeviceChanged"

    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object v0, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object p2, p2, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {p2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p1

    sget-object p2, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {p1, p2, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public static createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v0}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->isLeOutput()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/audio/BtHelper;->getTypeFromProfile(IZ)I

    move-result v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;-><init>(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;II)V

    return-object v1
.end method

.method public static getAvailableCommunicationDevices()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;
    .locals 2

    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    return-object p0
.end method

.method public static isMessageHandledUnderWakelock(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x23

    if-eq p0, v0, :cond_0

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/16 v0, 0xacd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 4

    const-string/jumbo v0, "device must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    move v2, v1

    :goto_0
    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    if-ne p0, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)V

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {v2, v0, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p1, p0, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    iget-object p1, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1, p0}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result p2

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    :cond_0
    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "CommunicationRouteClient could not link to "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " binder death"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioDeviceBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    return-object p0
.end method

.method public final checkAndResetBtSco()V
    .locals 6

    iget v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/audio/AudioService;->sScoPreventionLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkAndResetBtSco remove SCO client of uid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    invoke-virtual {v3, v1, v0}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_0
    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    :cond_1
    return-void
.end method

.method public final checkCommunicationRouteClientsDevices()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/high16 v4, 0x1000000

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/media/AudioSystem;->isBluetoothScoOutDevice(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    sget-object v4, Landroid/media/AudioSystem;->DEVICE_IN_ALL_SCO_SET:Ljava/util/Set;

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    move-object v4, v6

    goto :goto_1

    :cond_3
    move-object v2, v4

    move-object v4, v5

    :goto_1
    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v6, v2}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v7, v5

    goto :goto_2

    :cond_4
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    iget v8, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v9, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v6, v4}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    new-instance v5, Landroid/media/AudioDeviceAttributes;

    iget v6, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object v8, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-direct {v5, v6, v8, v2}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v7, :cond_8

    if-eqz v4, :cond_7

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iput-object v7, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    iget-boolean v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-boolean v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    if-nez v2, :cond_0

    iput-boolean v3, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final checkDeviceConnected(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory;->checkDeviceConnected(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final checkMessagesMuteMusic(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object v0, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioDeviceBroker;->messageMutesMusic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mMusicMuted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setMusicMute(Z)V

    :cond_2
    return-void
.end method

.method public final clearA2dpSuspended(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final clearLeAudioSuspended(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final connectA2dpDevice(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    mul-int/lit8 v3, v3, 0xa

    :cond_0
    iget-object v5, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x3

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Lcom/android/server/audio/AudioService;->getVolumeForDeviceIgnoreMute(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    monitor-enter v6

    :try_start_0
    iget-object v7, v6, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v7, :cond_1

    monitor-exit v6

    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    move-object v6, v7

    :goto_0
    iget-object v7, v0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v8, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService;->isSafeMediaVolumeStateActive()Z

    move-result v8

    const-string/jumbo v9, "Set the stored AvrcpAbsoluteVolumeSupported addr="

    const-string/jumbo v10, "Save vol:"

    const-string/jumbo v11, "Set safe media volume  : "

    const-string/jumbo v12, "Restore vol:"

    const-string/jumbo v13, "connect :"

    iget-object v14, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v14

    :try_start_2
    iget-object v15, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v4, Lcom/android/server/utils/EventLogger$StringEvent;

    move/from16 p3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",active:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/samsung/android/audio/AudioManagerHelper;->getAddressForLog(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",state:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v8, "AS.DualA2dpManager"

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v8}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v15, v4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    if-ne v2, v8, :cond_8

    const/4 v15, -0x1

    if-ne v3, v15, :cond_4

    iget-object v3, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    move/from16 v16, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v1, v15}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    iget-object v3, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "_addr=\'"

    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v15, "_addr"

    const-string/jumbo v13, "_index"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v15, "device_addr"

    const/4 v0, -0x1

    invoke-virtual {v3, v15, v13, v8, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    :goto_1
    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v8, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",default:"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v12, "AS.DualA2dpManager"

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v12}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/4 v15, -0x1

    if-eq v3, v15, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :cond_4
    :goto_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SAFE_MEDIA_VOLUME:Z

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR_PHASE_3:Z

    if-nez v5, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/16 v0, 0x96

    goto :goto_4

    :cond_6
    :goto_3
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0xa

    :goto_4
    if-le v3, v0, :cond_7

    const-string v3, "AS.DualA2dpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :cond_7
    invoke-virtual {v7, v3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result v3

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v8, "AS.DualA2dpManager"

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v8}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v0, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7, v3, v4}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->postSaveVolumeDB(ILjava/lang/String;)V

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mStoredAbsVolSupported:Landroid/util/ArrayMap;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "AS.DualA2dpManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " supported="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v7, v4, v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_8
    if-nez v2, :cond_9

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mAbsVolSupported:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_5
    invoke-virtual {v7, v3}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_a

    const/4 v0, 0x2

    if-ne v2, v0, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/audio/AudioDeviceBroker;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    :goto_6
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    return-void

    :goto_7
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    if-eqz v0, :cond_0

    const-string v0, "  Message handler (watch for unhandled messages):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "    "

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "Message handler is null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "\n  BECOMING_NOISY_INTENT_DEVICES_SET="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->BECOMING_NOISY_INTENT_DEVICES_SET:Ljava/util/Set;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const-string v1, "\n  Preferred devices for strategy:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  Non-default devices for strategy:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mNonDefaultDevices:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  Connected devices:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  APM Connected device (A2DP sink only):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n  mBluetoothDualModeEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mBluetoothDualModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "\n  Preferred devices for capture preset:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mPreferredDevicesForCapturePreset:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  Applied devices roles for strategies (from API):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRoles:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  Applied devices roles for strategies (internal):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedStrategyRolesInt:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  Applied devices roles for presets (from API):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRoles:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x6

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\n  Applied devices roles for presets (internal:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mAppliedPresetRolesInt:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p1}, Lcom/android/server/audio/AudioDeviceInventory$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    const-string v1, "\ndevices:\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "\n  Communication route clients:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  Computed Preferred communication device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  Applied Preferred communication device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Active communication device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-nez v1, :cond_2

    const-string/jumbo v1, "None"

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/media/AudioDeviceAttributes;

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mCommunicationStrategyId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    const-string v2, "  mAccessibilityStrategyId: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    const-string v2, "\n  mAudioModeOwner: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "\n  mScoManagedByAudio: false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  Bluetooth SCO on, requested: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string v2, "\n  Bluetooth A2DP suspended, requested ext: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requested int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    const-string v2, "\n  Bluetooth LE Audio suspended, requested ext: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", requested int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  mBluetoothHeadset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBluetoothHeadsetDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mBluetoothHeadsetDevice.DeviceClass: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "0x%04x"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :sswitch_0
    const-string v0, "AUDIO_VIDEO_VIDEO_GAMING_TOY"

    goto :goto_3

    :sswitch_1
    const-string v0, "AUDIO_VIDEO_RESERVED_0x0444"

    goto :goto_3

    :sswitch_2
    const-string v0, "AUDIO_VIDEO_VIDEO_CONFERENCING"

    goto :goto_3

    :sswitch_3
    const-string v0, "AUDIO_VIDEO_VIDEO_DISPLAY_AND_LOUDSPEAKER"

    goto :goto_3

    :sswitch_4
    const-string v0, "AUDIO_VIDEO_VIDEO_MONITOR"

    goto :goto_3

    :sswitch_5
    const-string v0, "AUDIO_VIDEO_CAMCORDER"

    goto :goto_3

    :sswitch_6
    const-string v0, "AUDIO_VIDEO_VIDEO_CAMERA"

    goto :goto_3

    :sswitch_7
    const-string v0, "AUDIO_VIDEO_VCR"

    goto :goto_3

    :sswitch_8
    const-string v0, "AUDIO_VIDEO_HIFI_AUDIO"

    goto :goto_3

    :sswitch_9
    const-string v0, "AUDIO_VIDEO_SET_TOP_BOX"

    goto :goto_3

    :sswitch_a
    const-string v0, "AUDIO_VIDEO_CAR_AUDIO"

    goto :goto_3

    :sswitch_b
    const-string v0, "AUDIO_VIDEO_PORTABLE_AUDIO"

    goto :goto_3

    :sswitch_c
    const-string v0, "AUDIO_VIDEO_HEADPHONES"

    goto :goto_3

    :sswitch_d
    const-string v0, "AUDIO_VIDEO_LOUDSPEAKER"

    goto :goto_3

    :sswitch_e
    const-string v0, "AUDIO_VIDEO_MICROPHONE"

    goto :goto_3

    :sswitch_f
    const-string v0, "AUDIO_VIDEO_RESERVED_0x040C"

    goto :goto_3

    :sswitch_10
    const-string v0, "AUDIO_VIDEO_HANDSFREE"

    goto :goto_3

    :sswitch_11
    const-string v0, "AUDIO_VIDEO_WEARABLE_HEADSET"

    goto :goto_3

    :sswitch_12
    const-string v0, "AUDIO_VIDEO_UNCATEGORIZED"

    :goto_3
    invoke-static {v1, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mScoAudioState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioState:I

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const-string/jumbo v2, "SCO_STATE_("

    const-string v3, ")"

    invoke-static {v1, v2, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const-string/jumbo v1, "SCO_STATE_DEACTIVATING"

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "SCO_STATE_ACTIVE_INTERNAL"

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "SCO_STATE_ACTIVE_EXTERNAL"

    goto :goto_4

    :cond_7
    const-string/jumbo v1, "SCO_STATE_ACTIVATE_REQ"

    goto :goto_4

    :cond_8
    const-string/jumbo v1, "SCO_STATE_INACTIVE"

    :goto_4
    const-string v2, "  mScoAudioMode: "

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/audio/BtHelper;->mScoAudioMode:I

    invoke-static {v1}, Lcom/android/server/audio/BtHelper;->scoAudioModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  mHearingAid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n  mLeAudio: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mA2dp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mAvrcpAbsVolSupported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void

    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_12
        0x404 -> :sswitch_11
        0x408 -> :sswitch_10
        0x40c -> :sswitch_f
        0x410 -> :sswitch_e
        0x414 -> :sswitch_d
        0x418 -> :sswitch_c
        0x41c -> :sswitch_b
        0x420 -> :sswitch_a
        0x424 -> :sswitch_9
        0x428 -> :sswitch_8
        0x42c -> :sswitch_7
        0x430 -> :sswitch_6
        0x434 -> :sswitch_5
        0x438 -> :sswitch_4
        0x43c -> :sswitch_3
        0x440 -> :sswitch_2
        0x444 -> :sswitch_1
        0x448 -> :sswitch_0
    .end sparse-switch
.end method

.method public final getA2dp()Landroid/bluetooth/BluetoothA2dp;
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final getA2dpDeviceVolume(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCommunicationDevice()Landroid/media/AudioDeviceInfo;
    .locals 8

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    :cond_0
    iget v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v5, :cond_1

    const-wide/16 v5, 0xbb8

    :try_start_1
    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    sub-long v3, v5, v3

    invoke-virtual {v7, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v3, "AS.AudioDeviceBroker"

    const-string v4, "Interrupted while waiting for communication device update."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    const-string v1, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "Timeout waiting for communication device update."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->isValidCommunicationDevice(Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    invoke-static {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/android/server/audio/AudioDeviceBroker;->getAvailableCommunicationDevices()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioDeviceInfo;

    :cond_3
    return-object p0
.end method

.method public final getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v1, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mMode:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x8000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceInventory;->getFirstConnectedDeviceOfTypes(Ljava/util/Set;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Landroid/media/AudioDeviceAttributes;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    invoke-direct {v0, v2, p0, v1}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    return-object v3
.end method

.method public final getImmutableDeviceInventory()Ljava/util/Collection;
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLeAudioGroupAddresses(I)Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getActiveDevices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/audio/BtHelper;->mLeAudio:Landroid/bluetooth/BluetoothLeAudio;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothLeAudio;->getGroupId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, p1, :cond_1

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getIdentityAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getPriorityDevice(I)I
    .locals 9

    const/16 v0, 0xb

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget-object v7, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    iget v7, v7, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    const/high16 v8, -0x80000000

    and-int/2addr v8, v7

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr v6, v7

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    if-ge v5, v0, :cond_4

    aget p0, v2, v5

    if-ne p1, p0, :cond_2

    goto :goto_2

    :cond_2
    and-int v4, v6, p0

    if-eqz v4, :cond_3

    move v1, p0

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    monitor-exit v3

    return v1

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :array_0
    .array-data 4
        0x8000
        0x80
        0x8
        0x4
        0x4000000
        0x2000
        0x4000
        0x1000
        0x400
        0x800
        0x2
    .end array-data
.end method

.method public final handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZLandroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, p3}, Lcom/android/server/audio/AudioDeviceInventory;->handleDeviceConnection(Landroid/media/AudioDeviceAttributes;ZZLandroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p3

    sget-object v1, Lcom/android/server/audio/AudioDeviceBroker;->VALID_COMMUNICATION_DEVICE_TYPES:[I

    move v3, v2

    :goto_0
    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    aget v4, v1, v3

    if-ne p3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDuplexCommunicationDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->checkCommunicationRouteClientsDevices()V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object p1

    const-string/jumbo p3, "handleDeviceConnection"

    invoke-virtual {p0, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V

    :cond_3
    monitor-exit v0

    return p2

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleFmRadioDeviceConnection()V
    .locals 5

    const-string/jumbo v0, "dummy"

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/media/AudioDeviceAttributes;

    const-string v3, ""

    const v4, -0x7fffe000

    invoke-direct {v2, v4, v0, v3}, Landroid/media/AudioDeviceAttributes;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final initRoutingStrategyIds()V
    .locals 4

    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioProductStrategies()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    iput v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/AudioProductStrategy;

    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    if-ne v3, v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    :cond_1
    iget v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    if-ne v3, v1, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/media/audiopolicy/AudioProductStrategy;->getId()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final isBluetoothScoRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDeviceActiveForCommunication(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isDeviceConnected(Landroid/media/AudioDeviceAttributes;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final isDeviceOnForCommunication(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isDualModeActive()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/BtHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final isInCommunication()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final isRemoteVolumeControlSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getVolumeControlSupport()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_2
    monitor-exit p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v1

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final messageMutesMusic(I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x7

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    const/16 v2, 0xb

    const/4 v3, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_3

    :cond_1
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/audio/AudioDeviceInventory;->DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG_SET:Ljava/util/Set;

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object v4

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v0

    :cond_3
    if-ne p1, v2, :cond_6

    sget-object p1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->getDeviceSetForStream(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final muteRingtoneDuringVibration()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-ne p0, v1, :cond_0

    const-string p0, "AS.AudioService"

    const-string/jumbo v0, "SPK ringtone volume set to 0 !!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    const/4 v0, 0x2

    invoke-static {v0, p0, v1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(IIZI)I

    :cond_0
    return-void
.end method

.method public final onPersistAudioDeviceSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventoryLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v2, 0x27

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceInventory;->mDeviceInventory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "|"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AdiDeviceState;

    invoke-virtual {v2}, Lcom/android/server/audio/AdiDeviceState;->toPersistableString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->readDeviceSettings()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    const-string p0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "No settings adapter when saving AdiDeviceState: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "audio_device_inventory"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "AS.AudioDeviceBroker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error saving AdiDeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v1, "AS.AudioDeviceBroker"

    const-string/jumbo v2, "error saving AdiDeviceState: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSetCommunicationDeviceForClient(Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;)V
    .locals 8

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v7, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void
.end method

.method public final onSetForceUse(IILjava/lang/String;Z)V
    .locals 7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p4, :cond_0

    const/16 p4, 0x24

    :goto_0
    move v1, p4

    goto :goto_1

    :cond_0
    const/16 p4, 0xd

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    goto :goto_2

    :cond_1
    move-object v0, p0

    :goto_2
    sget-object p0, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    new-instance p0, Landroid/media/MediaMetrics$Item;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "audio.forceUse."

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p4, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v1, "onSetForceUse"

    invoke-virtual {p0, p4, v1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p4, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    invoke-virtual {p0, p4, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p3, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    invoke-static {p2}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object p0, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)V

    return-void
.end method

.method public final onUpdateCommunicationRouteClient(Landroid/content/AttributionSource;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    :cond_0
    iget-object v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    if-eqz v3, :cond_6

    iget-object p1, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result p1

    const/4 v5, 0x7

    if-ne p1, v5, :cond_4

    iget-object p1, v4, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/audio/BtHelper;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, v5}, Lcom/samsung/android/server/audio/utils/BtUtils;->isSamsungWatch(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadset;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v4, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x206

    int-to-byte v4, v4

    int-to-byte v5, v1

    :try_start_0
    new-array v6, v1, [B

    aput-byte v4, v6, v0

    aput-byte v5, v6, v2

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v4

    const/16 v6, 0x207

    int-to-byte v6, v6

    new-array v1, v1, [B

    aput-byte v6, v1, v0

    aput-byte v5, v1, v2

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p1

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    aget-byte v1, v4, v0

    if-eq v1, v2, :cond_4

    aget-byte p1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p1, v2, :cond_4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "failed to get buds wearing status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.BtUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/media/AudioDeviceAttributes;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onUpdateCommunicationRouteClient return mCurrentCallDevice = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AS.AudioDeviceBroker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v2, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    move-object p1, v3

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object v4, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    iget-boolean v6, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    const/4 v5, -0x1

    move-object v1, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V

    return-void

    :cond_6
    move-object v1, p0

    move-object v7, p2

    if-eqz p1, :cond_7

    move v0, v2

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result p0

    if-nez p0, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v4, v7}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v1, v7}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public final postApplyVolumeOnDevice(IILjava/lang/String;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    new-instance v5, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-direct {v5, p1, p2, p3}, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final postPersistAudioDeviceSettings()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x36

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3e8

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final postSetLeAudioVolumeIndex(III)V
    .locals 1

    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;-><init>(III)V

    const/16 p1, 0x2e

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    return-void
.end method

.method public final postSetVolumeIndexForA2dpDevice(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getMainVolume()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    const/4 v2, 0x3

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v1}, Landroid/media/AudioSystem;->setStreamVolumeIndexAS(IIZI)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/audio/AudioService;->postSetVolumeIndexOnDevice(IIILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "update volume "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioDeviceBroker"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final postUpdatedAdiDeviceState(Lcom/android/server/audio/AdiDeviceState;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/16 v1, 0x3b

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    invoke-virtual {v0}, Lcom/android/server/audio/BtHelper;->isBluetoothScoOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iget-object v2, v0, Lcom/android/server/audio/BtHelper;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcom/android/server/audio/BtHelper;->mResolvedScoAudioDevices:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lcom/android/server/audio/BtHelper;->btHeadsetDeviceToAudioDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    return-object p0

    :cond_6
    :goto_3
    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 7

    const-string/jumbo v0, "l_ble_headset_nrec="

    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v1}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string/jumbo v3, "audio.device.queueOnBluetoothActiveDeviceChanged_update"

    invoke-direct {v1, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v1, v3, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    sget-object v1, Landroid/media/MediaMetrics$Property;->STATUS:Landroid/media/MediaMetrics$Key;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v3, "queueOnBluetoothActiveDeviceChanged A2DP config change"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0, v2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2, v0}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object p1, Lcom/android/server/audio/AudioService;->mBtDeviceChangedData:Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v3}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v3

    const/16 v4, 0x16

    const/16 v5, 0x2d

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_1

    iget-object v6, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v3, "connected"

    invoke-static {v0, v3, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v3, "queueOnBluetoothActiveDeviceChanged BLE STATE_CONNECTED_IMPLICIT"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v3, 0x63

    invoke-static {p1, v0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    invoke-virtual {p0, v5, v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_2

    const-string/jumbo v6, "disconnected"

    invoke-static {v3, v6, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mPreviousDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x0

    invoke-static {p1, v3, v6}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v3

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    :cond_2
    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_4

    const-string/jumbo v6, "connected"

    invoke-static {v3, v6, p1}, Lcom/android/server/audio/AudioDeviceBroker;->btMediaMetricRecord(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object v3

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    iget-object v2, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mInfo:Landroid/media/BluetoothProfileConnectionInfo;

    invoke-virtual {v2}, Landroid/media/BluetoothProfileConnectionInfo;->getProfile()I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v2, "AS.AudioDeviceBroker"

    const-string/jumbo v3, "queueOnBluetoothActiveDeviceChanged BLE STATE_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isSsLeAudioBuds()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "off"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "on"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    :cond_4
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final readDeviceSettings()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getSettings()Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "audio_device_inventory"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/Exception;

    const-string/jumbo v0, "readDeviceSettings_NPE"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "No settings adapter or content resolver to read device settings"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0
.end method

.method public final reapplyAudioHalBluetoothState()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "reapplyAudioHalBluetoothState() mBluetoothScoOnApplied: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothA2dpSuspendedApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBluetoothLeSuspendedApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string/jumbo v1, "LeAudioSuspended=true"

    const-string v2, "A2dpSuspended=true"

    if-eqz v0, :cond_0

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const-string v0, "BT_SCO=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    return-void

    :cond_0
    const-string v0, "BT_SCO=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_1

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    iget-boolean p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eqz p0, :cond_2

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo p0, "LeAudioSuspended=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mCb:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->unregisterDeathRecipient()V

    iget-object p1, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v2, 0x38

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final requestedCommunicationDevice()Landroid/media/AudioDeviceAttributes;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestedCommunicationDevice: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mAudioModeOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final resetBtScoOnByApp()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoOnByApp:Z

    const-string p0, "AS.AudioService"

    const-string/jumbo v0, "resetBtScoOnByApp"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final sendIILMsg(IIIILjava/lang/Object;I)V
    .locals 4

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/server/audio/AudioDeviceBroker;->isMessageHandledUnderWakelock(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerEventWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {p2, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string v2, "AS.AudioDeviceBroker"

    const-string v3, "Exception acquiring wakelock"

    invoke-static {v2, v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_2
    :goto_3
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->MESSAGES_MUTE_MUSIC:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p2, Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->checkMessagesMuteMusic(I)V

    :cond_3
    sget-object p2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectionMsgTimeLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    const/4 p6, 0x2

    if-eq p1, p6, :cond_4

    const/4 p6, 0x7

    if-eq p1, p6, :cond_4

    const/16 p6, 0x31

    if-eq p1, p6, :cond_4

    const/16 p6, 0x3d

    if-eq p1, p6, :cond_4

    const/16 p6, 0xac8

    if-eq p1, p6, :cond_4

    const/16 p6, 0xacd

    if-eq p1, p6, :cond_4

    const/16 p6, 0xa

    if-eq p1, p6, :cond_4

    const/16 p6, 0xb

    if-eq p1, p6, :cond_4

    goto :goto_4

    :cond_4
    sget-wide v2, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    cmp-long p6, v2, v0

    if-ltz p6, :cond_5

    const-wide/16 v0, 0x1e

    add-long/2addr v0, v2

    :cond_5
    sput-wide v0, Lcom/android/server/audio/AudioDeviceBroker;->sLastDeviceConnectMsgTime:J

    :goto_4
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    monitor-exit p2

    :goto_5
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final sendLMsg(IILjava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    move-object v0, p0

    move v1, p1

    move v6, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final sendLMsgNoDelay(IILjava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final setA2dpSuspended(Ljava/lang/String;ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_0

    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAvrcpAbsoluteVolumeSupported()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    const-string/jumbo v3, "setActiveBluetoothDevice"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setAvrcpAbsoluteVolumeSupported(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iput-boolean p1, p2, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeSupported supported="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AS.BtHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->setAvrcpAbsoluteVolumeSupported(Z)V

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setBluetoothA2dpOnInt(Ljava/lang/String;ZZ)V
    .locals 2

    const-string/jumbo v0, "setBluetoothA2dpOn("

    const-string v1, ") from u/pid:"

    invoke-static {v0, v1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " src:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/audio/AudioDeviceBroker;->onSetForceUse(IILjava/lang/String;Z)V

    return-void
.end method

.method public final setBluetoothScoOn(Ljava/lang/String;Z)V
    .locals 5

    const-string/jumbo v0, "setBluetoothScoOn: "

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    const-string v3, "AS.AudioDeviceBroker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mBluetoothScoOn: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", btScoRequesterUId: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", from: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    new-instance p2, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;

    invoke-direct {p2, v2, p1}, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;-><init>(Landroid/content/AttributionSource;Ljava/lang/String;)V

    const/16 p1, 0x2b

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->resetBtScoOnByApp()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCommunicationDevice(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceInfo;ZLjava/lang/String;)Z
    .locals 13

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_USB_HEADSET_CALL_SUPPORT:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_0

    invoke-static {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceOfType(I)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p3

    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v4

    if-nez v4, :cond_1

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationDeviceUpdateCount:I

    if-eqz v0, :cond_3

    new-instance v4, Landroid/media/AudioDeviceAttributes;

    invoke-direct {v4, v0}, Landroid/media/AudioDeviceAttributes;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_3
    move-object v8, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :goto_4
    new-instance v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    if-eqz v0, :cond_4

    move v9, v1

    goto :goto_5

    :cond_4
    move v9, v2

    :goto_5
    const/4 v10, -0x1

    move-object v6, p1

    move-object v7, p2

    move/from16 v12, p4

    move-object/from16 v11, p5

    invoke-direct/range {v5 .. v12}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;-><init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V

    const/16 p1, 0x2a

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    monitor-exit v3

    return v1

    :goto_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final setCommunicationRouteForClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;IZLjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v7, p6

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v6, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setCommunicationRouteForClient for uid: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " device: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " isPrivileged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " from API: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v8, "AS.AudioDeviceBroker"

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v5, v6}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    iget-object v12, v10, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    iget-boolean v10, v10, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mIsPrivileged:Z

    goto :goto_0

    :cond_0
    move v10, v9

    move-object v12, v11

    :goto_0
    const/4 v13, 0x7

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v14

    if-ne v14, v13, :cond_1

    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v15, 0xacc

    invoke-virtual {v14, v15}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v14, "MSG_CHECK_ABNORMAL_SCO removeMessages when creating Sco client."

    invoke-static {v8, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "setCommunicationRouteForClient: could not add client for uid: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " and device: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v4

    :cond_3
    :goto_1
    if-nez v4, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    if-ne v3, v13, :cond_7

    const-string/jumbo v3, "receiveBtEvent"

    invoke-virtual {v7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    iget v11, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    if-eqz v11, :cond_5

    if-eq v11, v3, :cond_6

    :cond_5
    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    iput v9, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    iput-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    :cond_6
    iget v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoUid:I

    iput v3, v0, Lcom/android/server/audio/AudioDeviceBroker;->mRequestScoCount:I

    iput-object v11, v0, Lcom/android/server/audio/AudioDeviceBroker;->mScoCb:Landroid/os/IBinder;

    :goto_2
    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->bluetoothScoRequestOwnerAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_3

    :cond_8
    move v3, v9

    :goto_3
    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move v4, v9

    :goto_4
    iget-object v6, v0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    if-eqz v3, :cond_c

    if-eqz v4, :cond_a

    invoke-virtual {v0, v13}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_a
    monitor-enter v6

    :try_start_0
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    invoke-direct {v3, v7}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    const/16 v3, 0xc

    move/from16 v4, p4

    invoke-virtual {v6, v3, v4}, Lcom/android/server/audio/BtHelper;->requestScoState(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setCommunicationRouteForClient: failure to start BT SCO for uid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_b

    invoke-virtual {v0, v1, v2, v12, v10}, Lcom/android/server/audio/AudioDeviceBroker;->addCommunicationRouteClient(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;Z)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioDeviceBroker;->removeCommunicationRouteClient(Landroid/os/IBinder;)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    :goto_5
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, v9

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_c
    if-nez v3, :cond_d

    if-eqz v4, :cond_d

    invoke-virtual {v6, v7}, Lcom/android/server/audio/BtHelper;->stopBluetoothSco(Ljava/lang/String;)V

    :cond_d
    :goto_6
    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const-string v13, "AS.AudioService"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v9, 0x38

    const/4 v10, 0x0

    const/16 v14, 0x1f4

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRoute(Ljava/lang/String;)V

    return-void
.end method

.method public final setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setDualA2dpMode(Landroid/bluetooth/BluetoothDevice;Z)V

    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result p2

    if-ne p2, v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result p1

    if-ne p1, v4, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/samsung/android/server/audio/utils/BtUtils;->setBtVolumeMonitor(Z)V

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo p1, "setDualA2dpMode"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioDeviceBroker;->postSetVolumeIndexForA2dpDevice(Ljava/lang/String;Z)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iput-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    :cond_0
    if-eqz p3, :cond_1

    iput-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    :cond_1
    iget-object p2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {p2}, Landroid/content/AttributionSource;->getUid()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result p1

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1, p3}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/16 v0, 0x1770

    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    invoke-virtual {p0, v1, p2, p1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public final setForceUse_Async(IILjava/lang/String;)V
    .locals 7

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final setLeAudioSuspended(Ljava/lang/String;ZZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothAudioStateLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_0

    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean p2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->updateAudioHalBluetoothState()V

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final topCommunicationRouteClient()Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v3, v3, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, v1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDisabled:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v0, v0, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateActiveCommunicationDevice()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/audiopolicy/AudioProductStrategy;->getAudioAttributesForStrategyWithLegacyStreamType(I)Landroid/media/AudioAttributes;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget v0, v0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "AS.AudioDeviceBroker"

    const-string/jumbo v1, "updateActiveCommunicationDevice(): no device for phone strategy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/media/AudioManager;->getDeviceInfoFromTypeAndAddress(ILjava/lang/String;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    return-void
.end method

.method public final updateAudioHalBluetoothState()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    const-string/jumbo v2, "LeAudioSuspended=true"

    const-string v3, "A2dpSuspended=true"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    :cond_1
    new-instance v0, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v0, "BT_SCO=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOn:Z

    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothScoOnApplied:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedExt:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v4

    :goto_2
    iget-boolean v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eq v5, v6, :cond_9

    iget-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedInt:Z

    if-nez v0, :cond_7

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v4

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothA2dpSuspendedApplied:Z

    if-eqz v0, :cond_8

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_9
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedExt:Z

    if-nez v0, :cond_b

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v4

    :goto_7
    iget-boolean v5, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eq v3, v5, :cond_f

    iget-boolean v3, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedInt:Z

    if-nez v0, :cond_d

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v4, v1

    :cond_d
    :goto_8
    iput-boolean v4, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBluetoothLeSuspendedApplied:Z

    if-eqz v4, :cond_e

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_e
    const-string/jumbo p0, "LeAudioSuspended=false"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public final updateAvrcpAbsoluteVolumeSupported()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->isAvrcpAbsoluteVolumeSupportedForActiveDevice()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBtHelper:Lcom/android/server/audio/BtHelper;

    iput-boolean v0, v1, Lcom/android/server/audio/BtHelper;->mAvrcpAbsVolSupported:Z

    const-string/jumbo v1, "setAvrcpAbsoluteVolumeSupported supported="

    const-string v2, "AS.BtHelper"

    invoke-static {v1, v2, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "a2dp AVC : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method public final updateBluetoothA2dpDeviceConfigChange(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;->mNewDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x2

    invoke-static {p1, v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->createBtDeviceInfo(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;Landroid/bluetooth/BluetoothDevice;I)Lcom/android/server/audio/AudioDeviceBroker$BtDeviceInfo;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateCommunicationRoute(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->preferredCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v0

    const-string/jumbo v2, "updateCommunicationRoute, preferredCommunicationDevice: "

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v3, " eventSource: "

    sget-object v4, Lcom/android/server/audio/AudioService;->sDeviceLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mReceiverSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "updateCommunicationRoute set default Device = "

    const-string v8, "AS.AudioDeviceBroker"

    iget-object v4, v1, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    const/4 v9, 0x7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v5, v12, [Landroid/media/AudioDeviceAttributes;

    aput-object v2, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v3, v12, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {v4, v2, v12}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IZ)I

    :goto_0
    iget-object v2, v4, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    iput-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateCommunicationRoute return already mCurrentCallDevice = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCurrentCallDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v3, v12, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v3, v11

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v2, v12, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    goto/16 :goto_3

    :cond_2
    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getDefaultCommunicationDevice()Landroid/media/AudioDeviceAttributes;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->isBluetoothScoRequested()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v5, v12, [Landroid/media/AudioDeviceAttributes;

    aput-object v2, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v3, v12, v5}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    iget v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array v5, v12, [Landroid/media/AudioDeviceAttributes;

    aput-object v2, v5, v11

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v3, v12, v2}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    goto :goto_1

    :cond_3
    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    invoke-virtual {v4, v2, v12}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IZ)I

    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    invoke-virtual {v4, v2, v12}, Lcom/android/server/audio/AudioDeviceInventory;->clearDevicesRoleForStrategy(IZ)I

    :goto_1
    iget-object v2, v4, Lcom/android/server/audio/AudioDeviceInventory;->mDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceInventory;->applyConnectedDevicesRoles_l()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Lcom/android/server/audio/AudioDeviceInventory;->reapplyExternalDevicesRoles()V

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_4
    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v2, v2, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mUid:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_6

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    if-ne v2, v10, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v2

    if-ne v2, v9, :cond_6

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    iget-object v6, v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v6}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v6

    if-ne v6, v10, :cond_5

    iget-object v6, v5, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v6}, Landroid/content/AttributionSource;->getUid()I

    move-result v6

    if-ne v6, v3, :cond_5

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v2, "updateCommunicationRoute removed SPK client"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationStrategyId:I

    new-array v3, v12, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v3, v11

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v2, v12, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    iget v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAccessibilityStrategyId:I

    new-array v3, v12, [Landroid/media/AudioDeviceAttributes;

    aput-object v0, v3, v11

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v2, v12, v3}, Lcom/android/server/audio/AudioDeviceInventory;->setDevicesRoleForStrategy(IZLjava/util/List;)I

    :goto_2
    const/4 v6, 0x0

    const/16 v7, 0x1f4

    const/16 v2, 0xacb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioDeviceBroker;->sendIILMsg(IIIILjava/lang/Object;I)V

    :goto_3
    invoke-virtual {v1, v10}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v2

    iput-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->updateActiveCommunicationDevice()V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    iget-object v3, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mPreferredCommunicationDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    iput v0, v4, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCommunicationDevice() deviceType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "MicModeManager"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    goto :goto_4

    :cond_7
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mActiveCommunicationDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    iput v0, v4, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "setCommunicationDevice() deviceType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "MicModeManager"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    :cond_8
    :goto_4
    invoke-virtual {v1, v10}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v0

    if-eq v2, v0, :cond_b

    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.SPEAKERPHONE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mAudioModeOwner:Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;

    iget v2, v2, Lcom/android/server/audio/AudioDeviceBroker$AudioModeInfo;->mPid:I

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mModeRequesterPackage:Ljava/lang/String;

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService;->getAudioModeOwnerHandler()Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPackage:Ljava/lang/String;

    goto :goto_5

    :cond_a
    const-string v2, ""

    :goto_5
    const-string/jumbo v4, "modeOwner"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "failed to broadcast ACTION_SPEAKERPHONE_STATE_CHANGED: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    invoke-virtual {v1}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationDeviceInt()Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    move v2, v0

    goto :goto_7

    :cond_c
    move v2, v11

    :goto_7
    iget v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    if-ne v2, v0, :cond_d

    goto :goto_c

    :cond_d
    iput v2, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCurCommunicationPortId:I

    invoke-virtual {v1, v9}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v15, v12

    goto :goto_9

    :cond_e
    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_8
    move v15, v10

    goto :goto_9

    :cond_f
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->isDeviceActiveForCommunication(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v10, 0x4

    goto :goto_8

    :cond_10
    move v15, v11

    :goto_9
    iget-object v12, v3, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/16 v13, 0x39

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    :goto_a
    if-ge v11, v4, :cond_11

    :try_start_5
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v11}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/ICommunicationDeviceDispatcher;

    invoke-interface {v0, v2}, Landroid/media/ICommunicationDeviceDispatcher;->dispatchCommunicationDeviceChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    const-string/jumbo v5, "dispatchCommunicationDevice error"

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_11
    iget-object v0, v1, Lcom/android/server/audio/AudioDeviceBroker;->mCommDevDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :goto_c
    iget-object v4, v3, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x19

    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    iget-object v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v0}, Landroid/content/AttributionSource;->getUid()I

    move-result v0

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    invoke-virtual {p1}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v0

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;

    const-string/jumbo v0, "updateCommunicationRouteClientState"

    invoke-direct {p2, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker$UpdateCommRouteClientInfo;-><init>(Landroid/content/AttributionSource;Ljava/lang/String;)V

    const/16 p1, 0x2b

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->sendLMsgNoDelay(IILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker;->mCommunicationRouteClients:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    invoke-virtual {v3}, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->isActive()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    iput-boolean v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v9

    iget-object v10, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v10}, Landroid/content/AttributionSource;->getUid()I

    move-result v10

    if-ne v9, v10, :cond_1

    invoke-virtual {v8}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v6, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mPlaybackActive:Z

    move v7, v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    move v7, v5

    :goto_1
    if-eqz p2, :cond_4

    iput-boolean v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v10

    iget-object v11, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v11}, Landroid/content/AttributionSource;->getUid()I

    move-result v11

    if-ne v10, v11, :cond_3

    invoke-virtual {v9}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v9

    if-nez v9, :cond_3

    iput-boolean v6, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mRecordingActive:Z

    move v7, v6

    :cond_4
    if-eqz v7, :cond_6

    iget-object v5, v3, Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioDeviceBroker;->getCommunicationRouteClientForUid(I)Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/audio/AudioDeviceBroker;->mBrokerHandler:Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    const/16 v7, 0x38

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientState(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;Z)V

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_0

    if-eqz p1, :cond_7

    move v4, v6

    goto :goto_2

    :cond_7
    move v4, v5

    :goto_2
    if-eqz p2, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/audio/AudioDeviceBroker;->setForceCommunicationClientStateAndDelayedCheck(Lcom/android/server/audio/AudioDeviceBroker$CommunicationRouteClient;ZZ)V

    goto/16 :goto_0

    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final updateDeviceQuickConnection(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDeviceInventory:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v3, p1

    move-object v6, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceInventory;->mConnectedDevices:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateIndividualA2dpVolumes(I)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker;->mDualA2dpManager:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string/jumbo v2, "updateVolume:"

    const-string v3, ",main:"

    invoke-static {p1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mDualModeEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->updateMainVolume(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    sub-int/2addr p1, v1

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    iget v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    iput v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->MAX_VOLUME:I

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/2addr v5, p1

    iget-object v6, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->setVolume(Landroid/bluetooth/BluetoothDevice;I)Z

    iget v6, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    if-ge v6, v5, :cond_4

    iput v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    :cond_4
    iget v6, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    if-le v6, v5, :cond_5

    iput v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    :cond_5
    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMainVolume:I

    iget v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->getValidIndex(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mMinVolume:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-eq v3, p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mConnectedDevicesVolume:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-eq v4, p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->needVolumeChangedIntent:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLeAudioVolume(I)V
    .locals 10

    const/high16 v0, -0x80000000

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p0

    sget-object v0, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService;->getVssForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v4

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I

    const/4 v7, 0x1

    const/4 v6, 0x1

    const-string v2, "AS.AudioService"

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(Ljava/lang/String;IIIZZ)V

    const/4 p1, 0x1

    const-string v0, "AS.AudioService"

    invoke-virtual {v1, v0, p1}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(Ljava/lang/String;Z)V

    iget-object p1, v1, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v5}, Landroid/media/AudioSystem;->isLeAudioDeviceType(I)Z

    move-result v2

    const-string v6, " streamType="

    const-string v7, " maxIndex="

    const-string v8, ", index="

    const-string v9, ", mode="

    if-nez v2, :cond_0

    const-string/jumbo v1, "setLeAudioVolumeOnModeUpdate ignoring invalid device="

    invoke-static {v5, p1, v1, v9, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v4, p0, v7, v6, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p1, v3, v0}, Lcom/android/server/audio/AudioDeviceBroker$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "setLeAudioVolumeOnModeUpdate postSetLeAudioVolumeIndex device="

    invoke-static {v5, p1, v2, v9, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {v4, p0, v7, v6, p1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-static {p1, v3, v0}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p1, v4, p0, v3}, Lcom/android/server/audio/AudioDeviceBroker;->postSetLeAudioVolumeIndex(III)V

    iget-object p0, v1, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    const-string/jumbo p1, "setLeAudioVolumeOnModeUpdate"

    invoke-virtual {p0, v3, v5, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postApplyVolumeOnDevice(IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
