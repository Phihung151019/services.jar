.class public final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final LOOP_COUNTER_MAX:I = 0xa

.field static final STATE_CHECK_STANDBY_PROCESS_STARTED:I = 0x2

.field static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1


# instance fields
.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    iput-boolean p4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo p1, "OneTouchPlayAction"

    const-string v0, "Action was not removed, start the action."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->startAction()V

    return-void

    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    const/16 v2, 0xa

    if-ge p1, v2, :cond_4

    rem-int/lit8 v1, v1, 0x3

    iget p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    if-nez v1, :cond_3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Retry sending <Text View On> in case the TV missed the message."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v1, 0x8f

    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iget v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    if-eq v3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x90

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    if-ne v4, v0, :cond_2

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte p1, p1, v1

    if-nez p1, :cond_1

    const-string/jumbo p1, "TV\'s power status is on. Action finished successfully"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {p1, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iput-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "OneTouchPlayAction"

    const-string/jumbo v1, "PowerManager is not interactive. Delay the action to check if standby started!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->startAction()V

    :goto_0
    return-void
.end method

.method public final startAction()V
    .locals 12

    const-string/jumbo v0, "OneTouchPlayAction"

    const-string/jumbo v1, "Start action."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    const/4 v0, -0x1

    iget-boolean v4, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mIsCec20:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v7, v7, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v7, v7, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v7, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_0
    if-nez v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v9, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v9

    const-string/jumbo v10, "OneTouchPlayAction#broadcastActiveSource()"

    invoke-virtual {v8, v2, v9, v10}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSourceFromOneDeviceType(IILjava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    :cond_2
    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {v8, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setRoutingPort(I)V

    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {v8, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setLocalActivePort(I)V

    iget-object v8, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v8

    const-string/jumbo v9, "power_control_mode"

    invoke-virtual {v8, v9}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "to_tv_and_audio_system"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "broadcast"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v9}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object v9

    const/4 v10, 0x5

    const/16 v11, 0x70

    invoke-static {v8, v10, v11, v9}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v8

    invoke-virtual {v1, v8, v3}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_5
    :goto_2
    const/16 v1, 0x8f

    if-nez v4, :cond_6

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v3, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v3

    goto :goto_3

    :cond_7
    move v3, v0

    :goto_3
    if-ne v3, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_4

    :cond_8
    if-nez v3, :cond_a

    if-nez v7, :cond_9

    iget-object v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->maySendActiveSource(I)V

    :cond_9
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    :cond_a
    :goto_4
    iput v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, v6, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method
