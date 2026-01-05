.class public final Lcom/android/server/hdmi/HdmiCecLocalDevice$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final synthetic val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    return-void
.end method


# virtual methods
.method public final onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    const/4 v1, 0x1

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method
