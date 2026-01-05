.class public final Lcom/android/server/BatteryService$30;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$intent:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/BatteryService$30;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$BatteryService$MaximumProtectionThresholdObserver$1()V
    .locals 8

    const-string/jumbo v0, "fail -protectionThreshold cannot be delivered when not MaximumMode:"

    const-string/jumbo v1, "MaximumProtectionThreshold Changed: "

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BatteryService$15;

    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v5, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    const-string/jumbo v6, "battery_protection_threshold"

    sget v7, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BatteryService$15;

    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v4, v4, Lcom/android/server/BatteryService;->mMaximumProtectionThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-static {v1, v3}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v5, v3, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    if-ne v5, v1, :cond_0

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget p0, p0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$android$server$BatteryService$PassThroughSettingsObserver$1()V
    .locals 7

    const-string/jumbo v0, "PassThrough Settings = "

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$15;

    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "pass_through"

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v6, v4

    :cond_0
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "BatteryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mPassThroughSettingsEnable:Z

    invoke-static {p0}, Lcom/android/server/BatteryService;->setPassThrough(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$android$server$BatteryService$RefreshRateModeSettingsObserver$1()V
    .locals 7

    const-string/jumbo v0, "RefreshRateMode Setting = "

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$15;

    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "refresh_rate_mode"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v3, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "BatteryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v0, v0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget p0, p0, Lcom/android/server/BatteryService;->mRefreshRateModeSetting:I

    const-string v0, "/sys/class/power_supply/battery/batt_hv_wireless_pad_ctrl"

    if-nez p0, :cond_0

    const-wide/16 v2, 0x5

    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x6

    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$android$server$BatteryService$SuperFastChargingSettingsObserver$1()V
    .locals 7

    const-string/jumbo v0, "SuperFastCharging Settings = "

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$15;

    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "super_fast_charging"

    const/4 v5, -0x2

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-boolean v6, v3, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "BatteryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, v0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSuperFastChargingSettingsEnable:Z

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setSuperFastCharging(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$android$server$BatteryService$TxBatteryLimitSettingsObserver$1()V
    .locals 7

    const-string/jumbo v0, "Tx Battery Limit Settings = "

    iget-object v1, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/BatteryService$15;

    iget-object v1, v1, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, v1, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v2, v2, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "tx_battery_limit"

    const/16 v5, 0x1e

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v3, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v2, "BatteryService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v0, v0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget p0, p0, Lcom/android/server/BatteryService;->mTxBatteryLimit:I

    const-string v0, "/sys/class/power_supply/battery/wc_tx_stop_capacity"

    int-to-long v2, p0

    invoke-static {v2, v3, v0}, Lcom/android/server/battery/BattUtils;->writeNode(JLjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final run$com$android$server$BatteryService$WcParamInfoSettingsObserver$1()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "/sys/class/power_supply/battery/wc_param_info"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v3, v3, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wireless_wc_write"

    const/4 v5, -0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BatteryService$15;

    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v4, v4, Lcom/android/server/BatteryService;->mWcParamOffset:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v3, v2, :cond_0

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v1, "BatteryService"

    const-string/jumbo v3, "wireless_wc_write onchanged"

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/health/HealthServiceWrapper;

    const-string/jumbo v3, "wc param"

    invoke-virtual {v1, v5, v3, v2}, Lcom/android/server/health/HealthServiceWrapper;->sehWriteEnableToParam(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "wireless_wc_write"

    invoke-static {p0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
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
    .locals 9

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService$30;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "WirelessFastCharging Settings = "

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BatteryService$15;

    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/BatteryService$15;

    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/BatteryService$15;

    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "wireless_fast_charging"

    invoke-static {v5, v7, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWirelessFastChargingSettingsEnable:Z

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setWirelessFastCharging(Z)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/BatteryService$30;->run$com$android$server$BatteryService$WcParamInfoSettingsObserver$1()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/BatteryService$30;->run$com$android$server$BatteryService$TxBatteryLimitSettingsObserver$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/BatteryService$30;->run$com$android$server$BatteryService$SuperFastChargingSettingsObserver$1()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/BatteryService$30;->run$com$android$server$BatteryService$RefreshRateModeSettingsObserver$1()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/BatteryService$30;->run$com$android$server$BatteryService$PassThroughSettingsObserver$1()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/BatteryService$30;->run$com$android$server$BatteryService$MaximumProtectionThresholdObserver$1()V

    return-void

    :pswitch_6
    const-string v3, "!@mLifeExtender Settings changed = "

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BatteryService$15;

    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v5, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/BatteryService$15;

    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/BatteryService$15;

    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "protect_battery"

    invoke-static {v5, v7, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mLifeExtender:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mLifeExtender:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v4

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_7
    const-string v3, "!@mFullCapacityEnable Settings = "

    const-string v4, "Battery Protect Mode Changed: "

    iget-object v5, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/BatteryService$15;

    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    iget-object v6, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/BatteryService$15;

    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v6, v6, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/BatteryService$15;

    iget-object v7, v7, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v7, v7, Lcom/android/server/BatteryService;->mLifeExtender:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v7, "BatteryService"

    const-string v8, "!@battery life extender used before!"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/BatteryService$15;

    iget-object v7, v7, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iput-boolean v1, v7, Lcom/android/server/BatteryService;->mLifeExtender:Z

    iget-object v8, v7, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object v7, v7, Lcom/android/server/BatteryService;->mUpdateBatteryUsageExtenderRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v7, "protect_battery"

    invoke-static {v6, v7, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :catchall_2
    move-exception p0

    goto/16 :goto_2

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/battery/BattFeatures;->SUPPORT_ECO_BATTERY:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    const-string/jumbo v7, "protect_battery"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/BatteryService$15;

    iget-object v3, v3, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget v3, v3, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/data/log/battery_service/sleep_charging_history"

    const-string v6, "Battery Protect Mode Changed"

    invoke-static {v4, v6, v0}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Lcom/android/server/BatteryService;->writeProtectBatteryValues()V

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v4, v0, Lcom/android/server/BatteryService;->mIsUnlockedBootCompleted:Z

    if-eqz v4, :cond_4

    iget v3, v0, Lcom/android/server/BatteryService;->mProtectBatteryMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$30;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;

    invoke-direct {v1, p0, v2}, Lcom/android/server/BatteryService$FullCapacityEnableSettingsObserver$1$1;-><init>(Lcom/android/server/BatteryService$30;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    const-string p0, "Battery Protect Mode Changed before UnlockedBootCompleted => ignored"

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BatteryService$15;

    iget-object v0, v0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v4, "protect_battery"

    invoke-static {v6, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    move v1, v2

    :cond_6
    iput-boolean v1, v0, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mFullCapacityEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/BatteryService;->mUpdateBatteryUsageFullCapacityEnableRunnable:Lcom/android/server/BatteryService$16;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    monitor-exit v5

    return-void

    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_8
    const-string v3, "AdaptiveFastCharging Settings = "

    iget-object v4, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/BatteryService$15;

    iget-object v4, v4, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, v4, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v5, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/BatteryService$15;

    iget-object v5, v5, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, v5, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/BatteryService$15;

    iget-object v6, v6, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "adaptive_fast_charging"

    invoke-static {v5, v7, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, v6, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/BatteryService$15;

    iget-object v2, v2, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v2, v2, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$15;

    iget-object p0, p0, Lcom/android/server/BatteryService$15;->this$0:Lcom/android/server/BatteryService;

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAdaptiveFastChargingSettingsEnable:Z

    invoke-virtual {p0, v0}, Lcom/android/server/BatteryService;->setAdaptiveFastCharging(Z)V

    monitor-exit v4

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/BatteryService$2;

    iget-object p0, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, v2}, Lcom/android/server/BatteryService;->-$$Nest$mactivateSleepChargingManager(Lcom/android/server/BatteryService;Z)V

    return-void

    :pswitch_a
    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v0, "BatteryService"

    const-string/jumbo v1, "Sending RESPONSE_OTG_CHARGE_BLOCK."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    iget-object p0, p0, Lcom/android/server/BatteryService$30;->val$intent:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/battery/BattLogBuffer;->addLog(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
