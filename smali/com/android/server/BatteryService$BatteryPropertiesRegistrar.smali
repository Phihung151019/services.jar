.class public final Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;
.super Landroid/os/IBatteryPropertiesRegistrar$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProperty(ILandroid/os/BatteryProperty;)I
    .locals 4

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[getProperty]id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryService_BatteryPropertiesRegistrar"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.BATTERY_STATS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[getProperty]prop.long:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/BatteryProperty;->getLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ,prop.string:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/BatteryProperty;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapper;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final scheduleUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapper;->scheduleUpdate()V

    return-void
.end method

.method public final semGetValueAsBoolean(I)Z
    .locals 3

    const/16 v0, 0x6a

    const-string v1, "BatteryService"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "[semGetValueAsBoolean]Not Matched id"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getIcAuthenticationResults()[Z

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    invoke-static {v2, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar$$ExternalSyntheticLambda1;-><init>([Z)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v2

    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "[semGetValueAsBoolean]id:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,result:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final semGetValuesAsLong(I)[J
    .locals 10

    const/4 v0, 0x2

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    const-string/jumbo v5, "[SS][BattInfo]BattInfoManager"

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iget-object v8, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object v8, v8, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v9, v8, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    if-nez v9, :cond_0

    const-string/jumbo v0, "[getBatteryCapacities]InitFinished False"

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v5, v8, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    if-ne v5, v4, :cond_1

    const-string v4, "/sys/class/power_supply/sbp-fg/soc"

    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v7, "/sys/class/power_supply/sbp-fg-2/soc"

    invoke-static {v7}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x3

    new-array v9, v9, [J

    aput-wide v1, v9, v6

    aput-wide v4, v9, v3

    aput-wide v7, v9, v0

    move-object v7, v9

    :cond_1
    :goto_0
    if-nez v7, :cond_2

    new-array v0, v3, [J

    move-object v7, v0

    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    int-to-long v0, p0

    aput-wide v0, v7, v6

    goto/16 :goto_3

    :pswitch_2
    const-string p0, "/sys/class/power_supply/battery/cisd_data_json"

    invoke-static {p0, v6}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "{"

    const-string/jumbo v4, "}"

    invoke-static {v0, p0, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->getValueFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo p0, "[SS]BattUtils"

    const-string/jumbo v0, "[getValueFromJsonAsLong]NumberFormatException"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-array v7, v3, [J

    aput-wide v1, v7, v6

    goto/16 :goto_3

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v3, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    if-nez v3, :cond_3

    const-string/jumbo p0, "[getBsohValues]InitFinished False"

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "/sys/class/power_supply/sbp-fg/battery_state_of_health"

    iget p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mBatteryType:I

    if-eq p0, v0, :cond_5

    if-eq p0, v4, :cond_4

    invoke-static {}, Lcom/android/server/battery/BattUtils;->readNodeAsDouble()D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "/sys/class/power_supply/sbp-fg-2/battery_state_of_health"

    invoke-static {p0}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v5}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/battery/batteryInfo/AsocData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v7

    goto :goto_3

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getAsocValue()[J

    move-result-object v7

    goto :goto_3

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getFullStatusUsage()[J

    move-result-object v7

    goto :goto_3

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BattInfoManager;->getDischargeLevel()[J

    move-result-object v7

    :goto_3
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo p0, "[semGetValuesAsLong]id:"

    const-string v0, " ,result:"

    invoke-static {p1, p0, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final semGetValuesAsString(I)[Ljava/lang/String;
    .locals 3

    const/16 v0, 0x65

    const-string/jumbo v1, "[SS][BattInfo]BattInfoManager"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    :goto_0
    move-object p0, v2

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    if-nez v0, :cond_1

    const-string/jumbo p0, "[getFirstUseDate]InitFinished False"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mFirstUseDateData:Lcom/android/server/battery/batteryInfo/FirstUseDateData;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mBattInfoManager:Lcom/android/server/battery/batteryInfo/BattInfoManager;

    iget-boolean v0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mInitFinished:Z

    if-nez v0, :cond_3

    const-string/jumbo p0, "[getQr]InitFinished False"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BattInfoManager;->mQrData:Lcom/android/server/battery/batteryInfo/QrData;

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string/jumbo v0, "[semGetValuesAsString]id:"

    const-string v1, " ,result:"

    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
