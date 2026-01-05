.class public final Lcom/android/server/hdmi/HdmiControlService$23;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public final synthetic val$command:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/hdmi/ResendCecCommandAction;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$23;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {p1, v1, p0, v0}, Lcom/android/server/hdmi/ResendCecCommandAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_1
    return-void
.end method
