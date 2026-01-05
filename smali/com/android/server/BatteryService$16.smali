.class public final Lcom/android/server/BatteryService$16;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/BatteryService$16;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$BatteryService$35()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-wide v2, v1, Lcom/android/server/BatteryService;->mBatteryMaxCurrent:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    const-string v4, "/efs/FactoryApp/max_current"

    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_0

    const-wide/16 v8, -0x1

    invoke-static {v8, v9, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_0
    iput-wide v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    :cond_1
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_2

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxCurrent:J

    const-string p0, "/efs/FactoryApp/max_current"

    invoke-static {v2, v3, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private final run$com$android$server$BatteryService$36()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v1}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mLifeExtender:Z

    const-wide/32 v4, 0xf4240

    if-eqz p0, :cond_1

    cmp-long p0, v2, v4

    if-gez p0, :cond_2

    add-long/2addr v4, v2

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string p0, "BatteryService"

    const-string v1, "!@ + 10000 cycle"

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    sub-long v4, v2, v4

    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string p0, "BatteryService"

    const-string v1, "!@ - 10000 cycle"

    invoke-static {p0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-wide v4, v2

    :goto_0
    cmp-long p0, v2, v4

    if-eqz p0, :cond_3

    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    invoke-static {v4, v5, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    const-string p0, "/efs/FactoryApp/batt_discharge_level"

    const/16 v1, 0x3ef

    const/16 v2, 0x1b0

    const/16 v3, 0x3e8

    invoke-static {p0, v2, v3, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    sget-boolean p0, Lcom/android/server/battery/BattFeatures;->FEATURE_SAVE_BATTERY_CYCLE:Z

    if-eqz p0, :cond_3

    const-string p0, "/sys/class/power_supply/battery/battery_cycle"

    const-wide/16 v1, 0x64

    div-long/2addr v4, v1

    invoke-static {v4, v5, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 12

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/BatteryService$16;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    const-string v0, "/efs/Battery/batt_full_capacity"

    const-string v1, "/sys/class/power_supply/battery/batt_full_capacity"

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x55

    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x64

    invoke-static {v2, v3, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$16;->run$com$android$server$BatteryService$36()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/BatteryService$16;->run$com$android$server$BatteryService$35()V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-wide v2, v1, Lcom/android/server/BatteryService;->mBatteryMaxTemp:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-wide v4, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const-string v4, "/efs/FactoryApp/max_temp"

    invoke-static {v4}, Lcom/android/server/battery/BattUtils;->readNodeAsLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-gez v5, :cond_1

    const-wide/16 v8, -0x1

    invoke-static {v8, v9, v4}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :cond_1
    iput-wide v8, v0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    :cond_2
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-wide v4, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_3

    iput-wide v2, p0, Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J

    const-string p0, "/efs/FactoryApp/max_temp"

    invoke-static {v2, v3, p0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :pswitch_3
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    const-string/jumbo v1, "send intent to device care for showing menu"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.settings.ENABLE_WIRELESS_CHARGER_MENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/BatteryService;->PACKAGE_DEVICE_CARE:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/server/BatteryService;->sendBroadcastToExplicitPackage(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "no power"

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread;->systemShutdown(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mEnableIqi:Z

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v1, Lcom/att/iqi/lib/metrics/hw/HW0E;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/att/iqi/lib/metrics/hw/HW0E;

    invoke-direct {v1}, Lcom/att/iqi/lib/metrics/hw/HW0E;-><init>()V

    invoke-virtual {v1, v0}, Lcom/att/iqi/lib/metrics/hw/HW0E;->setEvent(B)Lcom/att/iqi/lib/metrics/hw/HW0E;

    invoke-virtual {p0, v1}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    :cond_4
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string p0, "BatteryService"

    const-string v0, "!@ BatteryService No power and call shutdown thread"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget v3, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string/jumbo v1, "ril.rfcal_date"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "ril.manufacturedate"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    :cond_6
    iget-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    const-string v3, "BatteryService"

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/16 v8, 0x8

    const/4 v9, 0x4

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_7

    iget-object v1, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "!@[LLB] rfcal_date "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Lcom/android/server/BatteryService;->mRfCalDate:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object v1, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v8, :cond_e

    iget-object v1, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v10, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "!@[LLB] manufacture_date "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v2, Lcom/android/server/BatteryService;->mManufactureDate:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    new-instance v8, Ljava/util/GregorianCalendar;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v8, v11, v10, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    move v1, v5

    goto/16 :goto_8

    :cond_8
    iget-object v1, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v1, v7

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int/2addr v7, v9

    iget-object v8, v2, Lcom/android/server/BatteryService;->mCurrentCalendar:Ljava/util/Calendar;

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-nez v1, :cond_a

    sub-int/2addr v8, v7

    if-lez v8, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "!@[LLB] same year diff_Week= "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const-string v1, "!@[LLB] same year but error month!!!"

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v1, v4

    goto/16 :goto_8

    :cond_a
    if-gez v1, :cond_b

    const-string v1, "!@[LLB] error year"

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x34

    rsub-int/lit8 v7, v7, 0x34

    add-int/2addr v7, v1

    add-int/2addr v8, v7

    :goto_6
    const-string v1, "!@[LLB] EFS values: "

    const-string v7, "/efs/FactoryApp/batt_after_manufactured"

    invoke-static {v7, v0}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v1, "!@[LLB] /efs/FactoryApp/batt_after_manufactured is null, It looks first time, just make it."

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Diff_week: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_0
    const/4 v1, -0x1

    move v6, v1

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "!@[LLB] !@[BatteryInfo] /efs/FactoryApp/batt_after_manufactured : data is \""

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    if-ge v6, v8, :cond_d

    int-to-long v9, v8

    const-string v1, "/sys/class/power_supply/battery/batt_after_manufactured"

    invoke-static {v9, v10, v1}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    invoke-static {v9, v10, v7}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    iput v8, v2, Lcom/android/server/BatteryService;->mSavedDiffWeek:I

    :cond_d
    move v1, v0

    goto :goto_8

    :cond_e
    const-string v1, "!@[LLB] mRfCalDate is null!!! manufacture_date is also null!!!  we can not check weekly diff"

    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :goto_8
    if-eq v1, v0, :cond_12

    if-eq v1, v4, :cond_11

    if-eq v1, v5, :cond_f

    goto :goto_9

    :cond_f
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!@[LLB] Faild to get property values, longBatteryRetryCnt= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget v2, v2, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    invoke-static {v1, v2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget v1, v0, Lcom/android/server/BatteryService;->mLongBatteryRetryCnt:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_10

    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :cond_10
    const-string p0, "BatteryService"

    const-string v0, "!@[LLB] Faild to calc checkLongLifeBatteryInternal, Do not try anymore"

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string p0, "BatteryService"

    const-string v0, "!@[LLB] Calc error! check date!  "

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    sget-object p0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string p0, "BatteryService"

    const-string v0, "!@[LLB] success to check weekly diff "

    invoke-static {p0, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :pswitch_6
    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v1, "BatteryService"

    const-string v2, "!@bootCompleted"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object p0, p0, Lcom/android/server/BatteryService$16;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    iget-object p0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {p0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    monitor-exit v1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
