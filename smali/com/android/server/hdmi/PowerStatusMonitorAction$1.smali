.class public final Lcom/android/server/hdmi/PowerStatusMonitorAction$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

.field public final synthetic val$logicalAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    iput p2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->this$0:Lcom/android/server/hdmi/PowerStatusMonitorAction;

    iget p0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;->val$logicalAddress:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    :cond_0
    return-void
.end method
