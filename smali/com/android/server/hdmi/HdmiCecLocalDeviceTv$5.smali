.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$28;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Lcom/android/server/hdmi/HdmiControlService$28;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$28;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$28;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method
