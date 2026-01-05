.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$routingForBootup:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->val$routingForBootup:Z

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 7

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->val$routingForBootup:Z

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    move-result v0

    invoke-virtual {p1, v0, p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void

    :cond_0
    iget-object p0, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    iget-object v0, v0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :cond_1
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/hdmi/HdmiCecMessage;

    iget v5, v5, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    const/16 v6, 0x82

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    invoke-direct {v1, v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    const-string p0, "HdmiCecLocalDeviceTv#launchRoutingControl()"

    invoke-virtual {p1, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
