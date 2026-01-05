.class public final Lcom/android/server/hdmi/HdmiCecController$7$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$7;

.field public final synthetic val$finalError:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :cond_0
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$7;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecController$7$1;->val$finalError:I

    invoke-interface {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    :cond_1
    return-void
.end method
