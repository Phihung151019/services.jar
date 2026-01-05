.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object p1

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    move-result p0

    const/16 v1, 0xf

    const-string/jumbo v2, "RequestActiveSourceAction#RESULT_TIMEOUT"

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startHdmiCecActiveSourceLostActivity()V

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;->this$1:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
