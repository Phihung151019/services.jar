.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleBootCompleteEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mActionsLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mLogger:Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    const-string/jumbo v3, "recoverSleepMode"

    invoke-virtual {v0, v3}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->add(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEntryArrayList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "pref_sleep_mode_activated_key"

    invoke-static {v0, v3, v1}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pref_sleep_mode_cancel_time_key"

    sget-boolean v3, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->DEBUG:Z

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_enabled_key"

    invoke-static {p1, v0}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    if-eqz p1, :cond_a

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "sleep mode enabled!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_start_time_key"

    const-wide/16 v3, 0x0

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p1, v0, v3

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v5

    :goto_1
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iget-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "pref_sleep_mode_end_time_key"

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/ibs/sleepmode/SharePrefUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_2

    invoke-static {v0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;->valueOf(J)Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    move-result-object v5

    :cond_2
    iput-object v5, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iput-boolean v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleWakeupEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "reason_wakeup"

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleProbablyAsleepEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "SleepModePolicyController"

    const-string/jumbo p1, "handleBeforeBedtimeEvent"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string/jumbo p1, "reason_package_removed"

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mSleepModeEnabled:Z

    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "sleep_mode_pref"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SleepModePolicyController"

    const-string/jumbo v1, "handleSleepModeExitEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleTimeChangedEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SleepModePolicyController"

    const-string/jumbo v1, "handleSetTimeEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/ArrayMap;

    const-string/jumbo v0, "start_time"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    const-string/jumbo v0, "end_time"

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "SleepModePolicyController"

    const-string/jumbo v1, "handleStatusCheckEvent"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleIdleChangedEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mStartTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mEndTime:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$LocalTime;

    if-eqz v2, :cond_5

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

    move-result v1

    :cond_5
    const-string/jumbo v2, "isDuringUserSetupTime: isInSetupTime = "

    invoke-static {v2, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    return-void

    :cond_6
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isDeviceIdleMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/ibs/sleepmode/SleepModeUtil;->isPowerConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    const-string/jumbo v0, "revort state is "

    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_a

    const-string/jumbo p1, "reason_idle_change"

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    return-void

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleAlarmEndEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "reason_alarm_end"

    invoke-virtual {p0, p1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->exitSleepMode(Ljava/lang/String;)V

    return-void

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleAlarmStartEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isSleepModeActivated()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->isIdleStatus()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->enterSleepMode()V

    return-void

    :pswitch_c
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleSleepModeStopEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    iput-boolean v1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initAlarm(Z)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeHandler;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "SleepModePolicyController"

    const-string/jumbo v0, "handleSleepModeStartEvent"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    if-nez p1, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->initBroadcast(Z)V

    iput-boolean v2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController;->mInited:Z

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
