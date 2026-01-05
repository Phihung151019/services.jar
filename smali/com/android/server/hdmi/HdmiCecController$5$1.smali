.class public final Lcom/android/server/hdmi/HdmiCecController$5$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiCecController$5;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$5$1;->this$1:Lcom/android/server/hdmi/HdmiCecController$5;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    iget-wide v5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$pollingMessageInterval:J

    sget-object p0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    return-void
.end method
