.class public final Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    sget-object p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mRuglarUpdateCheckTime:Ljava/time/LocalTime;

    const-string/jumbo p1, "[SS]SleepChargingTimeController"

    const-string/jumbo v0, "[AlarmChangedObserver_onChange]onChange"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    iget-object p1, p1, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$AlarmChangedObserver;->this$0:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;

    iget-object p0, p0, Lcom/android/server/battery/sleepcharging/SleepChargingTimeController;->mHandler:Lcom/android/server/battery/sleepcharging/SleepChargingTimeController$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
