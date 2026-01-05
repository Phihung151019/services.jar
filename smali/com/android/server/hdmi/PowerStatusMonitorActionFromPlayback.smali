.class public final Lcom/android/server/hdmi/PowerStatusMonitorActionFromPlayback;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field protected static final MONITORING_INTERVAL_MS:I = 0xea60


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const p1, 0xea60

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v0

    const/16 v1, 0x8f

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "PowerStatusMonitorActionFromPlayback"

    const-string/jumbo v1, "TV reported it turned off, going to sleep."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return v0

    :cond_0
    return v2
.end method

.method public final start()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const v1, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method
