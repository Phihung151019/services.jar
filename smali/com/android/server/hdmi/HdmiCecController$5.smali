.class public final Lcom/android/server/hdmi/HdmiCecController$5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$allocated:Ljava/util/List;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field public final synthetic val$candidate:Ljava/lang/Integer;

.field public final synthetic val$candidates:Ljava/util/List;

.field public final synthetic val$pollingMessageInterval:J

.field public final synthetic val$sourceAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;Ljava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    iput-wide p7, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$pollingMessageInterval:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecController$5$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$5;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
