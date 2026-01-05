.class public final Lcom/android/server/audio/AudioService$AudioHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_40

    if-eq v0, v1, :cond_3f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3d

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3c

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3b

    const/4 v5, 0x0

    const/4 v6, 0x7

    if-eq v0, v6, :cond_38

    const/16 v7, 0x8

    if-eq v0, v7, :cond_37

    const/16 v7, 0xa

    if-eq v0, v7, :cond_36

    const/16 v7, 0x44d

    if-eq v0, v7, :cond_32

    const/16 v7, 0xf

    if-eq v0, v7, :cond_31

    const/16 v8, 0x10

    if-eq v0, v8, :cond_30

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    const/16 v9, 0xac6

    if-le v0, v9, :cond_3a

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_1a

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->setMultiSoundOn(Z)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    const-string/jumbo v6, "setStreamMute with LeBroadcast"

    invoke-virtual {v3, v6, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p0

    const-string/jumbo v0, "setStreamMute with LeBroadcast"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Ljava/lang/String;Z)Z

    monitor-exit p1

    goto/16 :goto_1a

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1, v5}, Lcom/android/server/audio/AudioService;->onSetAppDevice(IIZ)V

    goto/16 :goto_1a

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2

    const-string/jumbo p1, "true"

    goto :goto_2

    :cond_2
    const-string/jumbo p1, "false"

    :goto_2
    new-instance v1, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v1}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string/jumbo v2, "l_support_absolute_volume"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo v1, "address"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_3
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_RECORDING_POPUP:Z

    if-eqz v0, :cond_3a

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "AS.AudioService"

    const-string/jumbo v2, "[RECORDING POPUP] showRecordingPopup uid="

    const-string v4, ", type="

    invoke-static {v0, p1, v2, v4, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    :try_start_3
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[RECORDING POPUP] getAppName can\'t find the name of "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.RecordingPopupHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_3

    const v0, 0x10401d1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const v0, 0x104000e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/16 v1, 0x16

    const v2, 0x1040ce0

    if-eq p1, v1, :cond_7

    if-ne p1, v3, :cond_4

    goto :goto_4

    :cond_4
    if-ne p1, v6, :cond_5

    const p1, 0x1040cdf

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_5
    if-ne p1, v7, :cond_6

    const p1, 0x1040cde

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    const p1, 0x1040cdd

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_7
    :goto_4
    const p1, 0x1040655

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1a

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.android.soundassistant"

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/utils/AudioUtils;->getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x2710

    if-ge p1, v1, :cond_8

    goto/16 :goto_1a

    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.soundassistant.SOUNDASSIST_INTENT_SERVICE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.soundassistant.services.SoundAssistIntentService"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "type"

    const/16 v1, 0x3eb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_4
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1a

    :pswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_3a

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSensorThread:Lcom/samsung/android/server/audio/SensorHandleThread;

    iget-boolean p0, p0, Lcom/samsung/android/server/audio/SensorHandleThread;->mIsClosed:Z

    if-eqz p0, :cond_3a

    const-string/jumbo p0, "l_hw_proximity_sensor_state=1"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_1a

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSensorThread:Lcom/samsung/android/server/audio/SensorHandleThread;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->stopSensor()V

    goto/16 :goto_1a

    :cond_9
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSensorThread:Lcom/samsung/android/server/audio/SensorHandleThread;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SensorHandleThread;->startSensor()V

    goto/16 :goto_1a

    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_1a

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    if-eqz v0, :cond_3a

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "move from default to "

    const-string/jumbo v6, "setDevice, "

    const-string v7, " to 2"

    const-string/jumbo v9, "force change device "

    if-nez v3, :cond_a

    const-string/jumbo v0, "MediaFocusControl"

    const-string/jumbo v1, "incorrect parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_a
    sget-object v10, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v10

    const v11, 0x400400d

    and-int/2addr v11, v3

    if-eqz v11, :cond_b

    :try_start_5
    const-string/jumbo v11, "MediaFocusControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b

    :cond_b
    sget-object v7, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_c
    const/16 v3, 0x80

    :cond_d
    :goto_6
    iget v7, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne v7, v3, :cond_e

    const-string/jumbo v0, "MediaFocusControl"

    const-string/jumbo v1, "setDevice, device doesn\'t change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    goto/16 :goto_a

    :cond_e
    const-string/jumbo v9, "MediaFocusControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v6, v5}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    const-string/jumbo v6, "MediaFocusControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v4, v7}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/FocusRequester;

    iget v11, v9, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v0, v11}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v11

    iput v11, v9, Lcom/android/server/audio/FocusRequester;->mDevice:I

    if-ne v11, v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_10
    const-string/jumbo v4, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "move from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to default"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v4, v3}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/FocusRequester;

    iget v6, v6, Lcom/android/server/audio/FocusRequester;->mCallingUid:I

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v5

    :cond_11
    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/android/server/audio/FocusRequester;

    goto :goto_8

    :cond_12
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v0, v1, v8, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    :cond_13
    :goto_8
    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    iget-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v6, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_14
    if-eqz v8, :cond_16

    iget v4, v8, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    if-eq v4, v2, :cond_15

    invoke-virtual {v0, v4, v8, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    :cond_15
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    iput v3, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_a
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    if-eqz v0, :cond_3a

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->updateMultiSoundInfo(IZ)V

    goto/16 :goto_1a

    :goto_b
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :pswitch_9
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_17

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo p1, "mode_ringer_time_on"

    invoke-static {p0, p1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1a

    :cond_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "mode_ringer_time"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v0, 0xea60

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    if-eqz p1, :cond_3a

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "com.sec.media.action.mute_interval"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const/high16 v1, 0xc000000

    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteIntervalMs:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/audio/AudioService;->mMuteTime:J

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v5, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1a

    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 p1, 0x3ed

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_1a

    :cond_18
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    goto/16 :goto_1a

    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/audio/AudioService;->onSetAppDevice(IIZ)V

    goto/16 :goto_1a

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_19

    move v2, v1

    goto :goto_c

    :cond_19
    move v2, v5

    :goto_c
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_1a

    move p1, v1

    goto :goto_d

    :cond_1a
    move p1, v5

    :goto_d
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MULTISOUND_STATE_CHANGE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "AS.AudioService"

    const-string/jumbo v7, "MSG_SET_MULTI_DEVICE_SOUND_ON "

    invoke-static {v7, v6, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "multisound_state"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "AS.MultiSoundManager"

    const-string/jumbo v2, "shouldEnable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    goto :goto_f

    :cond_1b
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-boolean v0, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v0, :cond_1c

    goto :goto_e

    :cond_1c
    const-string v0, "AS.MultiSoundManager"

    const-string/jumbo v5, "enable"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    if-eqz v2, :cond_1d

    iget-object p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p1, p1, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->showNotification()V

    :cond_1d
    :goto_e
    invoke-static {v3}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    move-result v0

    if-ne v0, p1, :cond_20

    if-eqz v2, :cond_20

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->showHeadUpNotification(II)V

    goto :goto_f

    :cond_1e
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-boolean v0, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_1f

    goto :goto_f

    :cond_1f
    const-string v0, "AS.MultiSoundManager"

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    iget-object p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/android/server/audio/AudioService$11;

    iget-object p1, p1, Lcom/android/server/audio/AudioService$11;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mMultiSoundManager:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget-object p1, p1, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v0, 0x3ec

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_20
    :goto_f
    iget-boolean p1, p0, Lcom/android/server/audio/AudioService;->mIsLeBroadCasting:Z

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mScreenSharingHelper:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    iget-boolean v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsSupportDisplayVolumeControl:Z

    if-nez v0, :cond_21

    iget-boolean v0, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsDLNAEnabled:Z

    if-eqz v0, :cond_22

    :cond_21
    iget-boolean p1, p1, Lcom/samsung/android/server/audio/ScreenSharingHelper;->mIsAppCasting:Z

    if-eqz p1, :cond_23

    :cond_22
    invoke-virtual {p0, v4, v8}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_23
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMediaSessionServiceInternal:Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;

    if-eqz p1, :cond_3a

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isMultiSoundOn()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/media/MediaSessionService$MediaSessionServiceInternal;->updateMultiSoundInfo(IZ)V

    goto/16 :goto_1a

    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExt:Lcom/android/server/audio/AudioServiceExt;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/server/audio/AudioServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioServiceExt;Landroid/content/Context;I)V

    invoke-static {v1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1a

    :pswitch_e
    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsVibrate:Z

    goto/16 :goto_1a

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->callVibrateMsg(ILjava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_10
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-string v0, "AS.AudioService"

    if-ne p1, v3, :cond_24

    const-string/jumbo p0, "playSilentModeSound: skipping playSilentModeSound"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_24
    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_25

    const-string/jumbo p0, "playSilentModeSound: skipping while inband ringtone is playing"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_25
    const/16 p1, 0x65

    invoke-static {p1}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    goto/16 :goto_1a

    :pswitch_11
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSoundDoseHelper:Lcom/android/server/audio/SoundDoseHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundDoseHelper;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_12
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/AudioDeviceAttributes;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mInputDeviceVolumeHelper:Lcom/android/server/audio/InputDeviceVolumeHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/AudioDeviceAttributes;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/media/AudioDeviceInfo;->convertDeviceTypeToInternalInputDevice(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0, p1}, Lcom/android/server/audio/InputDeviceVolumeHelper;->getInputGainIndex(Landroid/media/AudioDeviceAttributes;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/server/audio/InputDeviceVolumeHelper;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x2

    invoke-static {v1, v0, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :pswitch_13
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroid/media/AudioDeviceAttributes;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x6a

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void

    :pswitch_14
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v0, Lcom/android/server/audio/InputDeviceVolumeHelper;

    iget-object v1, p1, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v2, p1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/InputDeviceVolumeHelper;-><init>(Lcom/android/server/audio/SettingsAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p1, Lcom/android/server/audio/AudioService;->mInputDeviceVolumeHelper:Lcom/android/server/audio/InputDeviceVolumeHelper;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :pswitch_15
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->onInitAdiDeviceStates()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :pswitch_16
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    iget-boolean v1, p1, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SpatializerHelper;->init(Z)V

    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    iget-boolean p1, p1, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    invoke-virtual {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->setFeatureEnabled(Z)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :pswitch_17
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monInitStreamsAndVolumes(Lcom/android/server/audio/AudioService;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :pswitch_18
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_26

    goto :goto_10

    :cond_26
    move v1, v5

    :goto_10
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->disableAudioForUid(IZ)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :pswitch_19
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBtCommDeviceActive:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v0, p1, :cond_3a

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->updateIndexFactors()V

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService;->getVssForStreamOrDefault(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    return-void

    :pswitch_1a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    sget p1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onUpdateContextualVolumes()V

    return-void

    :pswitch_1b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_27

    goto :goto_11

    :cond_27
    move v1, v5

    :goto_11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x34000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_7
    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :pswitch_1c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$monConfigurationChanged(Lcom/android/server/audio/AudioService;)V

    return-void

    :pswitch_1d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const-string/jumbo v3, "audio_attributes"

    const-class v4, Landroid/media/AudioAttributes;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioAttributes;

    const-string/jumbo v4, "audio_mixer_attributes"

    const-class v6, Landroid/media/AudioMixerAttributes;

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/media/AudioMixerAttributes;

    :goto_12
    if-ge v5, v2, :cond_28

    :try_start_8
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/media/IPreferredMixerAttributesDispatcher;

    invoke-interface {v0, v3, p1, v4}, Landroid/media/IPreferredMixerAttributesDispatcher;->dispatchPrefMixerAttributesChanged(Landroid/media/AudioAttributes;ILandroid/media/AudioMixerAttributes;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can\'t call dispatchPrefMixerAttributesChanged() IPreferredMixerAttributesDispatcher "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/media/IPreferredMixerAttributesDispatcher;

    invoke-interface {v7}, Landroid/media/IPreferredMixerAttributesDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.AudioService"

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    add-int/2addr v5, v1

    goto :goto_12

    :cond_28
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mPrefMixerAttrDispatcher:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_1a

    :pswitch_1e
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->ignorePlayerIId(I)V

    return-void

    :pswitch_1f
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService;->mHasSpatializerEffect:Z

    invoke-virtual {p1, p0}, Lcom/android/server/audio/SpatializerHelper;->reset(Z)V

    return-void

    :pswitch_20
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    :pswitch_21
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)V

    return-void

    :pswitch_22
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioDeviceAttributes;

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->dispatchDeviceVolumeBehavior(ILandroid/media/AudioDeviceAttributes;)V

    return-void

    :pswitch_23
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    sget p1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->updateActiveAssistantServiceUids()V

    return-void

    :pswitch_24
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monRemoveAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    return-void

    :pswitch_25
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAddAssistantServiceUids(Lcom/android/server/audio/AudioService;[I)V

    return-void

    :pswitch_26
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSpatializerHelper:Lcom/android/server/audio/SpatializerHelper;

    invoke-virtual {p0}, Lcom/android/server/audio/SpatializerHelper;->onInitSensors()V

    return-void

    :pswitch_27
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onRoutingUpdatedFromAudioThread()V

    return-void

    :pswitch_28
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_14
    if-ge v5, v0, :cond_29

    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/IAudioModeDispatcher;

    invoke-interface {v2, p1}, Landroid/media/IAudioModeDispatcher;->dispatchAudioModeChanged(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    add-int/2addr v5, v1

    goto :goto_14

    :cond_29
    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mModeDispatchers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_1a

    :pswitch_29
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->queueOnBluetoothActiveDeviceChanged(Lcom/android/server/audio/AudioDeviceBroker$BtDeviceChangedData;)V

    return-void

    :pswitch_2a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0, v8, p1}, Lcom/android/server/audio/AudioService;->updateAudioModeHandlers(Ljava/util/List;Ljava/util/List;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {p0, v8, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateCommunicationRouteClientsActivity(Ljava/util/List;Ljava/util/List;)V

    return-void

    :pswitch_2b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v2, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v8, v0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    iget v9, v0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    iget-object v7, v0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0x27

    if-ne p0, p1, :cond_2a

    move v11, v1

    goto :goto_15

    :cond_2a
    move v11, v5

    :goto_15
    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(Ljava/lang/String;IIZZ)V

    monitor-exit v2

    return-void

    :catchall_4
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw p0

    :pswitch_2c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateAccessibilityServiceUids(Lcom/android/server/audio/AudioService;)V

    return-void

    :pswitch_2d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget v0, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->onReinitVolumes(Ljava/lang/String;)V

    return-void

    :pswitch_2e
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateVolumeStatesForAudioDevice(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    return-void

    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v3, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MIC_MODE_FOR_QUICK_PANEL_UI:Z

    if-eqz v0, :cond_3a

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMicModeManager:Lcom/samsung/android/server/audio/MicModeManager;

    if-eqz p0, :cond_3a

    const-string/jumbo v0, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/server/audio/MicModeManager;->AVAILABLE_STREAM_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/audio/MicModeManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_1a

    :cond_2b
    const-string/jumbo v0, "android.media.EXTRA_PREV_VOLUME_STREAM_DEVICES"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/audio/MicModeManager;->mCurCallDevice:I

    const-string/jumbo v1, "streamDevicesChanged() prevDevice="

    const-string v2, ", curDevice="

    const-string/jumbo v3, "MicModeManager"

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MicModeManager;->updateAudioDevice()V

    return-void

    :pswitch_30
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    iget-object v1, v0, Lcom/android/server/audio/AudioDeviceBroker;->mSetModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mDeviceBroker:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioDeviceBroker;->checkAndResetBtSco()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_2c

    monitor-exit v1

    return-void

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_16

    :cond_2c
    check-cast p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2d

    monitor-exit v1

    return-void

    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPlaybackActive:Z

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mUid:I

    iget-object v2, v2, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v2, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->isRecordingActiveForUid(I)Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mRecordingActive:Z

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->isActive()Z

    move-result p1

    if-eq v0, p1, :cond_2e

    iget-object v2, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->onUpdateAudioMode(Ljava/lang/String;IIZZ)V

    :cond_2e
    monitor-exit v1

    return-void

    :goto_16
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw p0

    :pswitch_31
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mSystemServer:Lcom/android/server/audio/SystemServerAdapter;

    iget-object p0, p0, Lcom/android/server/audio/SystemServerAdapter;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_32
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monPlaybackConfigChange(Lcom/android/server/audio/AudioService;Ljava/util/List;)V

    return-void

    :pswitch_33
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monCheckVolumeCecOnHdmiConnection(Lcom/android/server/audio/AudioService;I)V

    return-void

    :pswitch_34
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monObserveDevicesForAllStreams(Lcom/android/server/audio/AudioService;I)V

    return-void

    :pswitch_35
    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monSetVolumeIndexOnDevice(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;)V

    const-string/jumbo v0, "muteMediaStreamOfSpeaker"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;

    iget-object v1, v1, Lcom/android/server/audio/AudioService$DeviceVolumeUpdate;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    const/4 v6, 0x2

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIIII)V

    return-void

    :pswitch_36
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$monUpdateRingerModeServiceInt(Lcom/android/server/audio/AudioService;)V

    return-void

    :pswitch_37
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monEnableSurroundFormats(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V

    return-void

    :pswitch_38
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_2f

    goto :goto_17

    :cond_2f
    move v1, v5

    :goto_17
    invoke-static {p0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$monDispatchAudioServerStateChange(Lcom/android/server/audio/AudioService;Z)V

    return-void

    :pswitch_39
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    iget p1, p1, Landroid/os/Message;->arg1:I

    :try_start_c
    invoke-interface {p0, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyVolumeAdjust(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :catch_3
    return-void

    :pswitch_3a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monAccessoryPlugMediaUnmute(Lcom/android/server/audio/AudioService;I)V

    return-void

    :pswitch_3b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    return-void

    :pswitch_3c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p0, v0}, Lcom/android/server/audio/AudioService;->-$$Nest$monDynPolicyMixStateUpdate(ILcom/android/server/audio/AudioService;Ljava/lang/String;)V

    return-void

    :pswitch_3d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$monUnmuteStreamOnSingleVolDevice(Lcom/android/server/audio/AudioService;II)V

    return-void

    :cond_30
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onSystemReady()V

    return-void

    :cond_31
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;I)V

    return-void

    :cond_32
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mMusicFxHelper:Lcom/android/server/audio/MusicFxHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v7, :cond_33

    const-string p0, "AS.MusicFxHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Unexpected msg to handle in MusicFxHelper: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_33
    const-string v0, "AS.MusicFxHelper"

    const-string v2, " handle MSG_EFFECT_CLIENT_GONE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v0, "UID "

    const-string/jumbo v2, "handle MSG_EFFECT_CLIENT_GONE uid: "

    iget-object v3, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_d
    const-string v4, "AS.MusicFxHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mapSize: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    if-eqz v2, :cond_35

    const-string v4, "AS.MusicFxHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " gone, closing all sessions"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_18
    if-ge v5, v4, :cond_34

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v5, v1

    check-cast v6, Ljava/lang/Integer;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "android.media.extra.PACKAGE_NAME"

    iget-object v9, v2, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v6, 0x20

    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "com.android.musicfx"

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_18

    :catchall_6
    move-exception v0

    move-object p0, v0

    goto :goto_19

    :cond_34
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->remove(I)V

    :cond_35
    monitor-exit v3

    return-void

    :goto_19
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    :cond_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    return-void

    :cond_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    new-instance v2, Landroid/media/MediaMetrics$Item;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "audio.forceUse."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/media/AudioSystem;->forceUseUsageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v4, "setForceUse"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->FORCE_USE_DUE_TO:Landroid/media/MediaMetrics$Key;

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    sget-object v3, Landroid/media/MediaMetrics$Property;->FORCE_USE_MODE:Landroid/media/MediaMetrics$Key;

    invoke-static {p1}, Landroid/media/AudioSystem;->forceUseConfigToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaMetrics$Item;->record()Z

    sget-object v2, Lcom/android/server/audio/AudioService;->sForceUseLogger:Lcom/android/server/utils/EventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v3, v1, p1, v0}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)V

    return-void

    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, p1

    check-cast v10, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSystemReady(Lcom/android/server/audio/AudioService;)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;I)V

    return-void

    :cond_39
    const-string p0, "AS.AudioService"

    const-string/jumbo p1, "[schedule]loadSoundEffects() called before boot complete"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3a

    invoke-virtual {v10, v5}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->run(Z)V

    :catch_4
    :cond_3a
    :goto_1a
    return-void

    :cond_3b
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSfxHelper:Lcom/android/server/audio/SoundEffectsHelper;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;I)V

    return-void

    :cond_3c
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onAudioServerDied()V

    return-void

    :cond_3d
    iget-object p1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistRingerMode(I)V

    return-void

    :cond_3e
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->-$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V

    return-void

    :cond_3f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void

    :cond_40
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_2b
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x36
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3e9
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xac7
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final persistRingerMode(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "mode_ringer"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final persistVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result v1

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-ne v3, v2, :cond_5

    sget-object v2, Lcom/samsung/android/server/audio/utils/AudioUtils;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    const-string/jumbo v2, "persist.audio.sysvolume"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/server/audio/utils/AudioUtils;->isWiredDeviceType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    if-ne p2, v2, :cond_4

    const-string/jumbo v2, "persist.audio.headsetsysvolume"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    if-ne p2, v2, :cond_5

    const-string/jumbo v2, "persist.audio.hphonesysvolume"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    new-instance v1, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AudioHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$AudioHandler;Lcom/android/server/audio/AudioService$VolumeStreamState;)V

    invoke-static {v0, p2, v3, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$mapplyDeviceAlias(Lcom/android/server/audio/AudioService;IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V

    iget-object p0, v0, Lcom/android/server/audio/AudioService;->mSettings:Lcom/android/server/audio/SettingsAdapter;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x2

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_6
    return-void
.end method

.method public final setAllVolumes(Lcom/android/server/audio/AudioService$VolumeStreamState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/audio/AudioService$AudioHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService;->getVssForStream(I)Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p1, Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I

    if-eq v0, v2, :cond_0

    sget-object v3, Lcom/android/server/audio/AudioService;->sStreamVolumeAlias:Landroid/util/SparseIntArray;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
