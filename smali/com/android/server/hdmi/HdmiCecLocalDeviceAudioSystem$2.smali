.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
.implements Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

.field public final synthetic val$callback:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setSystemAudioMode(Z)V

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p1

    const/16 v1, 0x72

    const/16 v2, 0xf

    invoke-static {p1, v2, v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    const/4 p1, 0x0

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void

    :cond_0
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public onSendCompleted(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$28;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method
