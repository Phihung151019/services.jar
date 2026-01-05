.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    const-string v0, "Failed to complete One Touch Play. result="

    const-string v1, "HdmiCecLocalDeviceSource"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/4 p1, 0x0

    const/16 v0, 0x6b

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "HdmiCecLocalDeviceSource"

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "TV power toggle: TV power status unknown"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    const/16 p1, 0x6b

    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_3
    const-string/jumbo p1, "TV power toggle: turning on TV"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string/jumbo p1, "TV power toggle: turning off TV"

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->sendStandby(I)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
