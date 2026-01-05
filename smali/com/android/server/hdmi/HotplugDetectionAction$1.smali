.class public final Lcom/android/server/hdmi/HotplugDetectionAction$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HotplugDetectionAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HotplugDetectionAction;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPollingFinished(Ljava/util/List;)V
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->-$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HotplugDetectionAction$1;->this$0:Lcom/android/server/hdmi/HotplugDetectionAction;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HotplugDetectionAction;->-$$Nest$mcheckHotplug(Lcom/android/server/hdmi/HotplugDetectionAction;Ljava/util/List;Z)V

    const-string p0, "HotPlugDetectionAction"

    const-string p1, "Finish poll all devices."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
