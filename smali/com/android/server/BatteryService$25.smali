.class public final Lcom/android/server/BatteryService$25;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public final synthetic val$pogoIntent:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Intent;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/BatteryService$25;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iput-object p2, p0, Lcom/android/server/BatteryService$25;->val$pogoIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, -0x1

    const-string v1, "BatteryService"

    const-string v2, ", pogo_plugged:"

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/BatteryService$25;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sending ACTION_SEC_BATTERY_EVENT: misc_event:0x"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    const-string v6, ", sec_plug_type:"

    invoke-static {v5, v4, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget v5, v5, Lcom/android/server/BatteryService;->mSecPlugTypeSummary:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", online:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", charge_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", ps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget-boolean v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hvc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v5, v5, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", charger_type:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, v3, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v3, v3, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget v2, v2, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current_event:0x"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    iget v2, v2, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    const-string v3, ", wc_tx_id:"

    invoke-static {v2, v4, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget v2, v2, Lcom/android/server/BatteryService;->mWcTxId:I

    invoke-static {v4, v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BatteryService$25;->val$pogoIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sending ACTION_DOCK_EVENT. dock_state:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget v5, v5, Lcom/android/server/BatteryService;->mPogoDockState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BatteryService$25;->this$0:Lcom/android/server/BatteryService;

    iget v2, v2, Lcom/android/server/BatteryService;->mPogoCondition:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$25;->val$pogoIntent:Landroid/content/Intent;

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    invoke-static {v3, v2}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
