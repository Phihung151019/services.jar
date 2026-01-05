.class public final Lcom/android/server/BatteryService$26;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$batteryWaterInConnector:Z

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(ILandroid/content/Intent;Z)V
    .locals 0

    iput p1, p0, Lcom/android/server/BatteryService$26;->$r8$classId:I

    iput-boolean p3, p0, Lcom/android/server/BatteryService$26;->val$batteryWaterInConnector:Z

    iput-object p2, p0, Lcom/android/server/BatteryService$26;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, -0x1

    const-string v2, "BatteryService"

    iget v3, p0, Lcom/android/server/BatteryService$26;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending ACTION_WIRELESS_POWER_SHARING_ENABLED. enabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/BatteryService$26;->val$batteryWaterInConnector:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$26;->val$intent:Landroid/content/Intent;

    invoke-static {p0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    invoke-static {v0, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sending ACTION_SEC_BATTERY_WATER_IN_CONNECTOR. water : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/BatteryService$26;->val$batteryWaterInConnector:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$26;->val$intent:Landroid/content/Intent;

    invoke-static {p0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    invoke-static {v0, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
