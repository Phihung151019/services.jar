.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mIsActiveSourceLostPopupLaunched:Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startHdmiCecActiveSourceLostActivity()V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    new-instance v1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v2

    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;

    invoke-direct {v3, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;)V

    invoke-direct {v1, v2, v3}, Lcom/android/server/hdmi/RequestActiveSourceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
