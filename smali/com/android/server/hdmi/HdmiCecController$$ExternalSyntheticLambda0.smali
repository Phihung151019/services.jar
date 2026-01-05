.class public final synthetic Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$4:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field public final synthetic f$5:Ljava/util/ArrayList;

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiCecController;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    iput-wide p6, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$4:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$5:Ljava/util/ArrayList;

    iget-wide v5, p0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;->f$6:J

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    return-void
.end method
