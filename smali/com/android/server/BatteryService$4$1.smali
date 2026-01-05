.class public final Lcom/android/server/BatteryService$4$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/BatteryService$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$2;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$4$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/BatteryService$4$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "ACTION_USER_SWITCHED: Led Charging: "

    iget-object v3, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v3, v3, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v4, v4, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v5, v5, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, -0x2

    invoke-static {v3, v6, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v1, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    iput-boolean v6, v5, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    iget-object v5, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v5, v5, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v6, "led_indicator_low_battery"

    invoke-static {v3, v6, v1, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v1, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    iput-boolean v6, v5, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    iget-object v5, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v5, v5, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v6, "show_wireless_charger_menu"

    invoke-static {v3, v6, v0, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, v5, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLedChargingSettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Led Low Battery:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLedLowBatterySettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wfc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mWasUsedWirelessFastChargerPreviously:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v1}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_AFC:Z

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {p0, v3}, Lcom/android/server/BatteryService;->updateAdaptiveFastChargingSetting(Landroid/content/ContentResolver;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v1, v1, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mScreenOn:Z

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    if-eqz v0, :cond_4

    const-string v0, "/sys/class/power_supply/battery/lcd"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    monitor-exit v2

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v0, v0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object v2, v2, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v1, v2, Lcom/android/server/BatteryService;->mScreenOn:Z

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_BATTERY_NOTIFY_SCREEN_STATE:Z

    if-eqz v1, :cond_5

    const-string v1, "/sys/class/power_supply/battery/lcd"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/android/server/BatteryService$4$1;->this$1:Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
