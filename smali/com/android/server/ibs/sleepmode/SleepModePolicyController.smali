.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActionsLock:Ljava/lang/Object;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

.field public final mEntryArrayList:Ljava/util/ArrayList;

.field public final mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

.field public mInited:Z

.field public final mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

.field public final mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

.field public mSleepModeEnabled:Z

.field public mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

.field public mSysState:I

.field public final mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;


# direct methods
.method public static -$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->tag:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$ActionEntry;->callBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msetSysState(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;I)V
    .locals 1

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Lcom/android/server/ibs/sleepmode/SleepModeLogger;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    const-string/jumbo p3, "alarm"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    iput-object p3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    new-instance p3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    invoke-direct {p3, p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;)V

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const-string/jumbo v2, "PMS_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    const-string v2, "GPS_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    const-string/jumbo v2, "Wifi_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const-string v2, "BlueTooth_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const-string/jumbo v2, "Nearby_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const-string/jumbo v2, "MasterSync_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v1, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const-string/jumbo v2, "Notification_SleepModeAction"

    invoke-static {p0, v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    iget-object v0, v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    const-string v1, "CF_Notification_SleepModeAction"

    invoke-static {p0, v1, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->-$$Nest$mregisterSleepModeAction(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Ljava/lang/String;Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeCallBack;)V

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-virtual {p1, p3, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final enterSleepMode()V
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    if-nez v1, :cond_0

    const-string/jumbo p0, "SleepModePolicyController"

    const-string/jumbo v0, "UI switch off disable the sleep mode restriction."

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const-string/jumbo v3, "enterSleepMode"

    invoke-virtual {v2, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_activated_key"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_trigger_time_key"

    sget-boolean v4, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "pref_sleep_mode_policy_state_key"

    iget v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    invoke-static {v0, v2, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final exitSleepMode(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "exitSleepMode "

    iget-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    if-nez v1, :cond_0

    const-string/jumbo p0, "SleepModePolicyController"

    const-string/jumbo p1, "UI switch off disable the cancel sleep mode restriction."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_cancel_time_key"

    sget-boolean v3, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initDeviceStatusBroadcast(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getSleepTime()Landroid/os/Bundle;
    .locals 6

    const-string/jumbo v0, "SleepModePolicyController"

    const-string/jumbo v1, "getSleepTime"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pref_sleep_mode_end_time_key"

    invoke-static {p0, v4, v2, v3}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "bundle_start_sleep_time_key"

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "bundle_end_sleep_time_key"

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initAlarm(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->updateActivated()V

    :cond_0
    return-void
.end method

.method public final initBroadcast(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.REBOOT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final initDeviceStatusBroadcast(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mDeviceStatusReceiver:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeReceiver;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final isIdleStatus()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v0, "current idle status is "

    const-string/jumbo v1, "SleepModePolicyController"

    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final isSleepModeActivated()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_activated_key"

    invoke-static {p0, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string/jumbo v0, "isSleepModeActivated to be "

    const-string/jumbo v1, "SleepModePolicyController"

    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final setRubinEvent(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    const-string/jumbo v1, "SleepModePolicyController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "sleep mode off, doesn\'t deal with runstone event!"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "BEFORE_BEDTIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    const-string/jumbo v0, "PROBABLY_ASLEEP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    const-string/jumbo v0, "WAKEUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public final setSleepModeEnable(Z)V
    .locals 3

    const-string/jumbo v0, "setSleepModeEnable >> "

    const-string/jumbo v1, "SleepModePolicyController"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "startSleepModePolicy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "stopSleepModePolicy"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    invoke-static {p0, v0, p1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setSleepTime(JJ)V
    .locals 4

    const-string/jumbo v0, "setSleepTime"

    const-string/jumbo v1, "SleepModePolicyController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sendSetTimeMessage"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {p1, p2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object v2

    const-string/jumbo v3, "start_time"

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object v2

    const-string/jumbo v3, "end_time"

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_start_time_key"

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "pref_sleep_mode_end_time_key"

    invoke-static {p0, p1, p3, p4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public final testState(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSysState:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateActivated()V
    .locals 10

    const-string/jumbo v0, "SleepModePolicyController"

    const-string/jumbo v1, "updateActivated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v2, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeBefore(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget-object v4, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {v4, v3}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->getDateTimeAfter(Ljava/util/Calendar;Z)Ljava/util/Calendar;

    move-result-object v1

    :goto_0
    const/16 v3, 0xc

    const-string v4, ":"

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mHandler:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;

    if-eqz v2, :cond_2

    const-string/jumbo v2, "sendAlarmStartMessage"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "In Active Duration, set inactive alarm at "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "sendAlarmEndMessage"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Out Active Duration, set active alarm at "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v8, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mTimeoutAlarmListener:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda0;

    const-string/jumbo v7, "SleepModePolicyController"

    const/4 v9, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_4
    return-void
.end method
