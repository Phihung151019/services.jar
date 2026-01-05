.class public final Lcom/android/server/hdmi/HdmiControlService$28;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$devices:Ljava/lang/Object;

.field public final synthetic val$standbyAction:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$standbyAction:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$standbyAction:I

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "On standby-action cleared:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    const-string v2, "HdmiControlService"

    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$devices:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$28;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$28;->val$standbyAction:I

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->onPendingActionsCleared(I)V

    :cond_0
    return-void
.end method
