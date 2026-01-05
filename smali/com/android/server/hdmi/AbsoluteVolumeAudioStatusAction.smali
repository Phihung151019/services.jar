.class public final Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mInitialAudioStatusRetriesLeft:I

.field public mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    iput p2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mInitialAudioStatusRetriesLeft:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    const/16 v3, 0x7a

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v2, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    if-ne v2, v3, :cond_f

    iget-object v2, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v3, v2

    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v3, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    aget-byte v2, v2, v4

    const/16 v3, 0x80

    and-int/2addr v2, v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    return v5

    :cond_3
    new-instance v3, Lcom/android/server/hdmi/AudioStatus;

    invoke-direct {v3, v1, v2}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    iget v1, v3, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    iget-boolean v2, v3, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    iget v6, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v7, 0x64

    const/4 v8, 0x3

    const/4 v9, 0x2

    iget-object v10, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    if-ne v6, v5, :cond_7

    iget-object v6, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->isPlaybackDevice()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v10

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v10

    :goto_1
    invoke-virtual {v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    move-result v11

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object v12, v6, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v12, v11}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v11

    new-instance v12, Landroid/media/VolumeInfo$Builder;

    invoke-direct {v12, v8}, Landroid/media/VolumeInfo$Builder;-><init>(I)V

    invoke-virtual {v12, v2}, Landroid/media/VolumeInfo$Builder;->setMuted(Z)Landroid/media/VolumeInfo$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/media/VolumeInfo$Builder;->setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/media/VolumeInfo$Builder;->setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/media/VolumeInfo$Builder;->setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/VolumeInfo$Builder;->build()Landroid/media/VolumeInfo;

    move-result-object v14

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    invoke-direct {v1, v6, v10, v11}, Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    iput-object v1, v6, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    invoke-virtual {v6, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbMuteChange(Z)V

    invoke-virtual {v11}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/hdmi/DeviceFeatures;->getSetAudioVolumeLevelSupport()I

    move-result v1

    const-string v2, "HdmiControlService"

    if-ne v1, v5, :cond_5

    const-string v1, "Enabling absolute volume behavior"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/media/AudioDeviceAttributes;

    iget-object v2, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    iget-object v4, v6, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    check-cast v2, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    iget-object v12, v2, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    const/4 v15, 0x1

    iget-object v2, v6, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "Enabling adjust-only absolute volume behavior"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/media/AudioDeviceAttributes;

    iget-object v2, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioDeviceVolumeManager:Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapper;

    iget-object v4, v6, Lcom/android/server/hdmi/HdmiControlService;->mAbsoluteVolumeChangedListener:Lcom/android/server/hdmi/HdmiControlService$AbsoluteVolumeChangedListener;

    check-cast v2, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;

    iget-object v12, v2, Lcom/android/server/hdmi/DefaultAudioDeviceVolumeManagerWrapper;->mAudioDeviceVolumeManager:Landroid/media/AudioDeviceVolumeManager;

    const/4 v15, 0x1

    iget-object v2, v6, Lcom/android/server/hdmi/HdmiControlService;->mServiceThreadExecutor:Lcom/android/server/hdmi/HdmiControlService$1;

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v12 .. v17}, Landroid/media/AudioDeviceVolumeManager;->setDeviceAbsoluteVolumeAdjustOnlyBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;ZLjava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;)V

    goto :goto_3

    :cond_6
    iput v9, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    goto :goto_6

    :cond_7
    if-ne v6, v9, :cond_e

    iget-object v6, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    iget v6, v6, Lcom/android/server/hdmi/AudioStatus;->mVolume:I

    if-eq v1, v6, :cond_8

    move v4, v5

    :cond_8
    if-eqz v4, :cond_c

    iget-object v6, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    iget-object v9, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    sget-object v11, Lcom/android/server/hdmi/HdmiControlService;->STREAM_MUSIC_ATTRIBUTES:Landroid/media/AudioAttributes;

    check-cast v9, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    iget-object v9, v9, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9, v11}, Landroid/media/AudioManager;->getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->getAvbCapableAudioOutputDevices()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x2001

    goto :goto_4

    :cond_b
    const/16 v9, 0x2000

    :goto_4
    iget-object v11, v6, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    iget v6, v6, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    mul-int/2addr v1, v6

    div-int/2addr v1, v7

    check-cast v11, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    iget-object v6, v11, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v8, v1, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_c
    :goto_5
    iget-object v1, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    iget-boolean v1, v1, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    if-ne v2, v1, :cond_d

    if-nez v4, :cond_d

    iget-object v1, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    iget-object v1, v10, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAvbMuteChange(Z)V

    :cond_e
    :goto_6
    iput-object v3, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    return v5

    :cond_f
    :goto_7
    return v4
.end method

.method public final sendGiveAudioStatus()V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v1, 0x71

    iget v2, p0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mTargetAddress:I

    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final start()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->sendGiveAudioStatus()V

    return-void
.end method
