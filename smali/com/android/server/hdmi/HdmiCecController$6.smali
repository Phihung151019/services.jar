.class public final Lcom/android/server/hdmi/HdmiCecController$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$runnable:Lcom/android/server/hdmi/HdmiControlService$32$1;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiControlService$32$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$runnable:Lcom/android/server/hdmi/HdmiControlService$32$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$6;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$6;->val$runnable:Lcom/android/server/hdmi/HdmiControlService$32$1;

    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
