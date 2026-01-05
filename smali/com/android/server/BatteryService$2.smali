.class public final Lcom/android/server/BatteryService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/BatteryService$2;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/BatteryService;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/BatteryService$9$1;

    invoke-direct {p2, p0, v1}, Lcom/android/server/BatteryService$9$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/BatteryService;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/BatteryService$9$1;

    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$9$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_WIRELESS_POWER_SHARING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "enable"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, p2, Lcom/android/server/BatteryService;->mLastTxEventTxEnabled:Z

    if-eq v0, p1, :cond_2

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$6$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$2;ZC)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "com.samsung.systemui.power.action.WATER_POPUP_DISMISSED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/BatteryService$7$1;

    invoke-direct {p2, p0, v1}, Lcom/android/server/BatteryService$7$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    const-string/jumbo p2, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/BatteryService$7$1;

    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$7$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void

    :pswitch_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string/jumbo p1, "OTG_CHARGE_BLOCK"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$6$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$2;ZB)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :pswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$4$1;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->globalEventListener:Lcom/android/server/battery/GlobalEventListener;

    if-eqz p0, :cond_b

    iget p2, p0, Lcom/android/server/battery/GlobalEventListener;->registeredEvents:I

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/battery/GlobalEventListener;->onEvent(I)V

    goto/16 :goto_3

    :cond_6
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/BatteryService$4$1;

    invoke-direct {p2, p0, v0}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_7
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$4$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$4$1;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_8
    const-string/jumbo p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string/jumbo p1, "[SS][BattInfo]"

    const-string/jumbo p2, "shutdown event"

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget p2, p1, Lcom/android/server/BatteryService;->mLastBroadcastBatteryLevel:I

    int-to-long v2, p2

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    int-to-long v4, p1

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processDischargingLevel(JJZ)V

    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p1, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v1, p2, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    if-eqz v1, :cond_9

    iget-object p1, p1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    int-to-long v1, p1

    invoke-virtual {p2, v1, v2, v0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->processFullStatusUsage(JZ)V

    :cond_9
    iget-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p1, p1, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/battery/BattUtils;->getCurrentNetworkTimeMillis()J

    move-result-wide v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[saveShutdownTimeForLongestPowerOffDuration]shutdownTime:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "[SS]BattFunctions"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x16f5c788580L

    cmp-long p2, v0, v3

    if-gez p2, :cond_a

    const-string/jumbo p1, "[saveShutdownTimeForLongestPowerOffDuration]wrong shutdownTime"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-static {p1, v0, v1}, Lcom/android/server/battery/BattUtils;->saveSharedPreferencesAsLong(Landroid/content/Context;J)V

    :goto_2
    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz p0, :cond_b

    const-string/jumbo p0, "persist.sys.shutdown_received"

    const-string/jumbo p1, "true"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void

    :pswitch_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[mBootCompletedReceiver]action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v0, p2, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    iget v2, p2, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$30;

    invoke-direct {v1, v0, p0}, Lcom/android/server/BatteryService$30;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_c
    const-string p2, "Currently, Not Battery Adaptive Protect Mode"

    invoke-static {v1, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    const-wide/16 p0, 0x4e20

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_d
    return-void

    :pswitch_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_FAST_WIRELESS_CHARGING_CONTROL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string/jumbo p1, "write"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$6$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$6$1;-><init>(Lcom/android/server/BatteryService$2;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void

    :pswitch_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string/jumbo p1, "android.samsung.media.extra.AUDIO_MODE"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sget-object p2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "audio_mode : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BatteryService"

    invoke-static {v0, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p2, p2, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/BatteryService$33;

    invoke-direct {v0, p0, p1}, Lcom/android/server/BatteryService$33;-><init>(Lcom/android/server/BatteryService$2;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    return-void

    :pswitch_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[SleepChargingDismissReceiver_onReceive]action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mSleepChargingManager:Lcom/android/server/battery/sleepcharging/SleepChargingManager;

    if-eqz p0, :cond_10

    const-string/jumbo p1, "[SS]SleepChargingManager"

    const-string/jumbo p2, "[updateDismiss]"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingManager;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingManager$3;

    new-instance p2, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;

    invoke-direct {p2, p0}, Lcom/android/server/battery/sleepcharging/SleepChargingManager$2;-><init>(Lcom/android/server/battery/sleepcharging/SleepChargingManager;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
