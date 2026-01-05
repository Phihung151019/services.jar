.class public final Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final STATE_WAIT_FOR_ACTIVE_SOURCE_MESSAGE_AFTER_ROUTING_CHANGE:I = 0x4

.field private static final STATE_WAIT_FOR_ACTIVE_SOURCE_MESSAGE_AFTER_SET_STREAM_PATH:I = 0x5

.field static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1


# instance fields
.field public final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mIsCec20:Z

.field public mPowerStatusCounter:I

.field public final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    iput-object p2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p2

    const/16 p3, 0x8f

    invoke-static {p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-boolean p4, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mIsCec20:Z

    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    const-string p0, "DeviceSelectActionFromPlayback"

    const-string/jumbo p1, "Timer in a wrong state. Ignored."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 p1, 0x7d0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v3, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_3
    iget v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v2, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iget-object v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x82

    const/4 v1, 0x1

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    if-ne v3, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    return v1

    :cond_1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-ne v0, v1, :cond_9

    const/16 v0, 0x90

    if-ne v3, v0, :cond_9

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte p1, p1, v2

    if-eqz p1, :cond_8

    const/16 v0, 0x1388

    const/4 v3, 0x3

    if-eq p1, v1, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    const/4 v2, 0x4

    if-ge p1, v2, :cond_3

    iput v4, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    return v1

    :cond_4
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    if-ge p1, v4, :cond_5

    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    return v1

    :cond_6
    iget p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mPowerStatusCounter:I

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    iput v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->selectDevice()V

    return v1

    :cond_9
    :goto_0
    return v2
.end method

.method public final selectDevice()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final sendRoutingChange()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final start()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->sendRoutingChange()V

    iget-object v0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    iget-boolean v1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mIsCec20:Z

    const/16 v2, 0x7d0

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    iget-object v3, p0, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;->mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-ne v1, v3, :cond_2

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectActionFromPlayback$1;-><init>(Lcom/android/server/hdmi/DeviceSelectActionFromPlayback;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method
