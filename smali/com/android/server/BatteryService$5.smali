.class public final Lcom/android/server/BatteryService$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "com.sec.intent.action.BATT_SLATE_MODE_CHANGE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "state"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "/sys/class/power_supply/battery/batt_slate_mode"

    int-to-long v0, p0

    invoke-static {v0, v1, p1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_0
    return-void
.end method
