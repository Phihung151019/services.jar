.class public final Lcom/android/server/BatteryService$33;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$intent:Ljava/lang/Object;

.field public final synthetic val$wirelessPowerSharingTxEvent:I


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BatteryService$33;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/BatteryService$33;->val$wirelessPowerSharingTxEvent:I

    iput-object p2, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/BatteryService$2;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService$33;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/BatteryService$33;->val$wirelessPowerSharingTxEvent:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/BatteryService$33;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/android/server/BatteryService$33;->val$wirelessPowerSharingTxEvent:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mCallHandler:Lcom/android/server/BatteryService$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "tx_event:0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/BatteryService$33;->val$wirelessPowerSharingTxEvent:I

    invoke-static {v1, v2}, Landroid/hardware/audio/common/V2_0/AudioChannelMask$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "BatteryService"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/android/server/BatteryService$33;->val$intent:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    sget-object v2, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    invoke-static {v0, v1}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
