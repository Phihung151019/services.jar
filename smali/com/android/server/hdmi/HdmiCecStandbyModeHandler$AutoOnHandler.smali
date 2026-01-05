.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterIncorrectMode:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    goto :goto_0

    :goto_1
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
