.class public final Lcom/android/server/hdmi/HdmiControlService$32$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->toggleAndFollowTvPower()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    move-result v0

    const-string v1, "HdmiControlService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Not an audio system device. Won\'t set system audio mode on"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Audio System local device is not registered"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->checkSupportAndSetSystemAudioMode(Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo p0, "System Audio Mode is not supported."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x72

    const/16 v3, 0xf

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableCec(Z)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$32$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiControlService$32;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearCecLocalDevices()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
