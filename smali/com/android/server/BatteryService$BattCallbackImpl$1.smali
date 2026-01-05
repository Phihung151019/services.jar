.class public final Lcom/android/server/BatteryService$BattCallbackImpl$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/android/server/BatteryService$BattCallbackImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService$BattCallbackImpl;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "[SS][BattInfo]BattInfoManager"

    const-string/jumbo v2, "[reset]reset"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/battery/batteryInfo/BattInfoManager$1;-><init>(Lcom/android/server/battery/batteryInfo/BattInfoManager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    const-string v0, "/efs/FactoryApp/longest_power_off_duration"

    invoke-static {v0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v2, Lcom/android/server/battery/BattHqmManager;->mBattCallback:Lcom/android/server/BatteryService$BattCallbackImpl;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "longest_power_off_duration"

    invoke-static {v1, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/efs/FactoryApp/batt_beginning_date"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "batt_first_use_date"

    invoke-static {v2, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    iget-object v0, v0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mSupportsFullStatusUsage:Z

    if-eqz v0, :cond_0

    const-string v0, "/efs/FactoryApp/batt_full_status_usage"

    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "batt_full_status_usage"

    invoke-static {v2, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    iget-object v0, v0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget v0, v0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryCount:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "/efs/FactoryApp/batt_full_status_usage_2nd"

    invoke-static {v0, v1}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "batt_full_status_usage_2nd"

    invoke-static {v1, v0}, Lcom/android/server/battery/BattHqmManager;->updateMap(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    const-string/jumbo v1, "[onHqmEventOccured]IS_SHIP_BUILD:true"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl$1;->this$1:Lcom/android/server/BatteryService$BattCallbackImpl;

    iget-object p0, p0, Lcom/android/server/BatteryService$BattCallbackImpl;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v0, ""

    const-string/jumbo v1, "[SS]BattHqmManager"

    const-string/jumbo v2, "[uploadToHqm]customDataset:"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    sget-object v4, Lcom/android/server/battery/BattHqmManager;->mMapForBSHL:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HqmManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/os/SemHqmManager;

    if-nez v5, :cond_1

    const-string/jumbo p0, "[uploadToHqm]fail - semHqmManager null"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string v7, "Battery"

    const-string v8, "BSHL"

    const-string/jumbo v9, "ph"

    const-string v10, "0.0"

    const-string/jumbo v11, "sec"

    const-string v12, ""

    const-string v14, ""

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v14}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string/jumbo v0, "[uploadToHqm]Exception"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
