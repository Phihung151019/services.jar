.class public final Lcom/android/server/hdmi/ActiveSourceAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDestination:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 0

    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final start()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget v5, v3, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_0

    int-to-byte v5, v0

    new-array v8, v1, [B

    aput-byte v5, v8, v0

    const/16 v0, 0x8e

    iget v5, p0, Lcom/android/server/hdmi/ActiveSourceAction;->mDestination:I

    invoke-static {v2, v5, v0, v8}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_0
    const-string v0, "ActiveSourceAction"

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->setActiveSource(IILjava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return-void
.end method
