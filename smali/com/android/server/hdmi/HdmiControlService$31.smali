.class public final Lcom/android/server/hdmi/HdmiControlService$31;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$31;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$31;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$36;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabledInHal(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearEarcLocalDevice()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    sget-object v0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$32;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$32;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableCecLocalDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
