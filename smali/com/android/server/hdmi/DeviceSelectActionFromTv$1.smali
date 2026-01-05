.class public final Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/DeviceSelectActionFromTv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;->this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/hdmi/DeviceSelectActionFromTv$1;->this$0:Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    :cond_0
    return-void
.end method
