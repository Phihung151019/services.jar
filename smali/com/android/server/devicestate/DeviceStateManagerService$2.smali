.class public final Lcom/android/server/devicestate/DeviceStateManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$2;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$2;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    const-string/jumbo v0, "tx_event"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p1, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsWirelessPowerSharing:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "update mIsWirelessPowerSharing="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$2;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-boolean p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsWirelessPowerSharing:Z

    const-string p2, "DeviceStateManagerService"

    invoke-static {p2, p1, p0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method
