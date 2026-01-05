.class public final Lcom/android/server/hdmi/VolumeControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAvrAddress:I

.field public mIsVolumeUp:Z

.field public mLastAvrMute:Z

.field public mLastAvrVolume:I

.field public mLastKeyUpdateTime:J

.field public mSentKeyPressed:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 5

    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v2, 0x45

    iget v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    invoke-static {v0, v3, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-boolean v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    invoke-virtual {v3, v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(IZ)V

    iput v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    :cond_1
    return-void
.end method

.method public final handleTimerEvent(I)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long p1, v1, v3

    if-ltz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    check-cast p1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    const/16 p1, 0x12c

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iget v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    if-eqz v3, :cond_6

    const/16 v4, 0x7a

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    aget-byte v0, v0, v1

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result p1

    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v3

    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v4, v4, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v4, v4, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    check-cast v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    iget-object v5, v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    iget-boolean v7, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eqz v7, :cond_4

    iget-object v4, v4, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    if-ne v5, v4, :cond_5

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Force volume change[mute:%b, volume=%d]"

    invoke-static {v5, v4}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(IZ)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    iput-boolean v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrMute:Z

    :cond_5
    return v2

    :cond_6
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x44

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public final sendVolumeKeyPressed()V
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x41

    goto :goto_0

    :cond_0
    const/16 v2, 0x42

    :goto_0
    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    new-array v3, v0, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    const/16 v2, 0x44

    iget v4, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    invoke-static {v1, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    return-void
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method
