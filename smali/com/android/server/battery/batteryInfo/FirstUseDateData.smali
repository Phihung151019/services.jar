.class public final Lcom/android/server/battery/batteryInfo/FirstUseDateData;
.super Lcom/android/server/battery/batteryInfo/BaseData;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final authFaiExpiredPaths:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

.field public final mHandler:Landroid/os/Handler;

.field public final mLockForDateChangedReceiver:Ljava/lang/Object;

.field public final mLockForFudReceiver:Ljava/lang/Object;

.field public final mShouldCheckFaiExpireds:[Z

.field public final mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

.field public mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;


# direct methods
.method public constructor <init>(II[ZLandroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/battery/batteryInfo/BaseData;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForFudReceiver:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForDateChangedReceiver:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    iput p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    iput p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    iput-object p3, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    iput-object p4, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    const/4 p2, 0x3

    const/4 p3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date_2nd"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string p4, "/sys/class/power_supply/sec_auth/first_use_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "/sys/class/power_supply/sec_auth/fai_expired"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    goto :goto_0

    :cond_1
    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date_2nd"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string p4, "/sys/class/power_supply/sec_auth/first_use_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string p4, "/sys/class/power_supply/sec_auth_2nd/first_use_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "/sys/class/power_supply/sec_auth/fai_expired"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "/sys/class/power_supply/sec_auth_2nd/fai_expired"

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    goto :goto_0

    :cond_2
    const/4 p4, 0x2

    if-ne p1, p4, :cond_3

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string p4, "/sys/class/power_supply/sbp-fg/first_use_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p4, 0x4

    if-ne p1, p4, :cond_4

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    const-string p4, "/efs/FactoryApp/batt_beginning_date_2nd"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string p4, "/sys/class/power_supply/sbp-fg/first_use_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    const-string p4, "/sys/class/power_supply/sbp-fg-2/first_use_date"

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    const/4 p4, 0x0

    if-eqz p1, :cond_6

    move p1, p4

    :goto_1
    iget p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    if-ge p1, p5, :cond_6

    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    aget-boolean p5, p5, p1

    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    if-nez p5, :cond_5

    const-string/jumbo p5, "[syncAuthAndEfs]Authentification false => skip_"

    invoke-static {p1, p5, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->authPaths:Ljava/util/ArrayList;

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5, p4}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p5

    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->efsPaths:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p5}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[syncAuthAndEfs]sync efs FirstUseDate with auth:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " ,result:"

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_6
    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/android/server/battery/batteryInfo/BaseData;->setPermissionsEfs(I)V

    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->readEfsValues()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mCurrentValues:[Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p5, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    invoke-interface {p1, p5}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p5, "[activateFirstUseDateCheckIfRequired]Already all of FirstUseDate Exist"

    invoke-static {p1, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForFudReceiver:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterFudReceiver()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p5, "android.intent.action.TIME_SET"

    invoke-virtual {v2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p5, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p5, "com.sec.android.app.setupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, p5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    const/4 p5, 0x1

    invoke-direct {v1, p0, p5}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p5, "registerFudReceiver"

    invoke-static {p1, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p5, "[activateFirstUseDateCheckIfRequired]writeFirstUseDateReceiver Registered For FirstUseDate"

    invoke-static {p1, p5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mHandler:Landroid/os/Handler;

    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mUpdateDateRunnable:Lcom/android/server/battery/batteryInfo/FirstUseDateData$1;

    const-wide/32 v0, 0xafc8

    invoke-virtual {p1, p5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    iget p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryType:I

    if-eq p1, p3, :cond_8

    if-ne p1, p2, :cond_c

    :cond_8
    move p1, p4

    :goto_4
    iget p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mBatteryCount:I

    if-ge p1, p2, :cond_b

    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->mAuthentificationResults:[Z

    aget-boolean p2, p2, p1

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p5, "[activateFaiExpiredCheckIfRequired]Authentification false => skip_"

    invoke-static {p1, p5, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/android/server/battery/BattUtils;->readNode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "[activateFaiExpiredCheckIfRequired]faiExpiredStr:"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p5, "1"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_a

    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    aput-boolean p3, p5, p1

    const-string p5, "0"

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->authFaiExpiredPaths:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p5, "0"

    invoke-static {p2, p5}, Lcom/android/server/battery/BattUtils;->writeNode(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_b
    const-string p1, "/data/log/battery_service/battery_service_main_history"

    const-string p2, "FaiExpiredCheck"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo p5, "shouldCheckFaiExpireds:"

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    invoke-static {p5}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/server/battery/BatteryLogger;->writeToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mShouldCheckFaiExpireds:[Z

    array-length p1, p1

    invoke-static {p4, p1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance p2, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    invoke-interface {p1, p2}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForDateChangedReceiver:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->unregisterDateChangedReceiver()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    const/4 p2, 0x0

    invoke-direct {v1, p0, p2}, Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;-><init>(Lcom/android/server/battery/batteryInfo/FirstUseDateData;I)V

    iput-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    iget-object v0, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "registerDateChangedReceiver"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "[activateFaiExpiredCheckIfRequired]DateChangedReceiver Registered For FAI Expired"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/battery/batteryInfo/BaseData;->saveInfoHistory()V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static isValidDate(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final unregisterDateChangedReceiver()V
    .locals 4

    const-string/jumbo v0, "unregisterDateChangedReceiver "

    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForDateChangedReceiver:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mDateChangedReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ignored"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "success"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterFudReceiver()V
    .locals 4

    const-string/jumbo v0, "unregisterFudReceiver "

    iget-object v1, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mLockForFudReceiver:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/battery/batteryInfo/FirstUseDateData;->mWriteFirstUseDateReceiver:Lcom/android/server/battery/batteryInfo/FirstUseDateData$DateChangedReceiver;

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/server/battery/batteryInfo/BaseData;->TAG:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "ignored"

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "success"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
