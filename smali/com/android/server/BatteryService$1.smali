.class public final Lcom/android/server/BatteryService$1;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Looper;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/BatteryService$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService$1;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string p1, "BatteryService"

    const-string/jumbo v0, "SkipActionBatteryChangedHandler : MSG_RECOVER_SEND_ACTION_BATTERY_CHANGED"

    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mSkipActionBatteryChangedHandler:Lcom/android/server/BatteryService$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, p1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, p1, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked(Z)V

    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mIsSkipActionBatteryChanged:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v3

    :goto_1
    return-void

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_3

    goto :goto_3

    :cond_2
    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    goto :goto_3

    :cond_3
    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$msetCallWirelessPowerSharingExternelEvent(Lcom/android/server/BatteryService;Z)V

    :goto_3
    return-void

    :pswitch_1
    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[bs_handleMessage]msg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    iget v4, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const-string/jumbo p0, "[bs_handleMessage]Currently, Not Battery Adaptive Protect Mode"

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v2, :cond_8

    const-string v5, ""

    if-eq v4, v0, :cond_6

    const/4 v0, 0x3

    if-eq v4, v0, :cond_5

    move-object p1, v5

    goto :goto_5

    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    const-string/jumbo p1, "update"

    :goto_4
    move-object v7, v5

    move-object v5, p1

    move-object p1, v7

    goto :goto_5

    :cond_6
    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_7

    move v1, v2

    :cond_7
    const-string/jumbo p1, "off"

    goto :goto_4

    :cond_8
    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$msetSleepCharging(Lcom/android/server/BatteryService;Z)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    const-string/jumbo p1, "on"

    goto :goto_4

    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "sleep_charging_event"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "sleep_charging_finish_time"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "is_sleep_charging_complete_success"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "[bs_handleMessage]extraEvent:"

    const-string v4, " ,extraSleepChargingFinishTime:"

    const-string v6, " ,isSleepChargingCompleteSuccess:"

    invoke-static {v2, v5, v4, p1, v6}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui"

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
