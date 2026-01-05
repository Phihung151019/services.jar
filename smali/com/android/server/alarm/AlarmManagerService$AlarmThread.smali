.class public final Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFalseWakeups:I

.field public mWtfThreshold:I

.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :goto_0
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v3, v3, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v3, v4}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smwaitForAlarm(J)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    int-to-long v6, v3

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v8, v4, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelWakeup:J

    iget-wide v10, v4, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelNonWakeup:J

    move-object/from16 v21, v2

    const/16 v20, 0x1

    iget-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-wide/from16 v16, v1

    iget-wide v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    move-wide/from16 v18, v1

    invoke-direct/range {v5 .. v19}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;-><init>(JJJJJJJ)V

    const-wide/32 v1, 0x10000

    cmp-long v1, v6, v1

    const-wide/16 v6, 0x3e8

    if-nez v1, :cond_1

    if-nez v1, :cond_0

    iget-wide v1, v5, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mDiff:J

    cmp-long v8, v1, v6

    if-gez v8, :cond_1

    const-wide/16 v8, -0x3e8

    cmp-long v1, v1, v8

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, v4, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v5}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :goto_2
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v3, :cond_2

    const-string v1, "AlarmManager"

    const-string/jumbo v2, "waitForAlarm returned 0, nowRTC = "

    const-string v4, ", nowElapsed = "

    invoke-static {v2, v12, v13, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/high16 v1, 0x10000

    and-int v2, v3, v1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v8, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v4, v14, v4

    add-long/2addr v4, v8

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sub-long v8, v4, v6

    cmp-long v2, v12, v8

    if-ltz v2, :cond_3

    add-long/2addr v4, v6

    cmp-long v2, v12, v4

    if-lez v2, :cond_4

    :cond_3
    const/16 v2, 0x2d

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Lcom/android/server/alarm/AlarmManagerService$2;)V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Lcom/android/server/alarm/AlarmManagerService$2;)V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->reevaluateRtcAlarms()V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v6, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    iput-wide v12, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    iput-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string/jumbo v2, "android.intent.action.TIME_SET"

    const/high16 v4, 0x25200000

    invoke-static {v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v4, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v7

    const-string v11, ""

    const/4 v9, 0x0

    const/16 v10, 0xcd

    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    move/from16 v6, v20

    invoke-virtual {v4, v6}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v7}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v5, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    or-int/lit8 v3, v3, 0x5

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    :goto_3
    if-eq v3, v1, :cond_15

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-boolean v3, v2, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v2, v14, v15}, Lcom/android/server/alarm/UserWakeupStore;->getUserIdsToWakeup(J)[I

    move-result-object v2

    move v3, v4

    :goto_4
    array-length v5, v2

    if-ge v3, v5, :cond_7

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    aget v6, v2, v3

    invoke-virtual {v5, v6, v4}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Landroid/app/ActivityManagerInternal;->startUserInBackground(I)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    const/16 v20, 0x1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    :cond_6
    :goto_6
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    move-object/from16 v3, v21

    invoke-virtual {v2, v14, v15, v3}, Lcom/android/server/alarm/AlarmManagerService;->triggerAlarmsLocked(JLjava/util/ArrayList;)I

    move-result v2

    sget-boolean v5, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v5, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    iget-boolean v5, v5, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {v5, v3}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mfiltAlarmsForFreeCess(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;)V

    :cond_8
    if-nez v2, :cond_a

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v5, v14, v15}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iput-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    invoke-virtual {v2, v14, v15}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v14, v4

    iput-wide v14, v2, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    :cond_9
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    const/16 v20, 0x1

    goto/16 :goto_b

    :cond_a
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v6, v5, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v14, v6

    iget-wide v8, v5, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v5, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    iget-wide v8, v5, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_b

    iput-wide v6, v5, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    :cond_b
    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_c
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v5, v5, v14

    if-eqz v5, :cond_e

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    const/16 v20, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v5, v6, :cond_e

    const-string v5, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Too many ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") false wakeups, nowElapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v6, 0x186a0

    if-ge v5, v6, :cond_d

    mul-int/lit8 v5, v5, 0xa

    iput v5, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_8

    :cond_d
    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    :cond_e
    :goto_8
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    :goto_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/alarm/Alarm;

    iget v10, v9, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v10, v7}, Lcom/android/server/alarm/AlarmManagerService;->increment(ILandroid/util/SparseIntArray;)V

    iget-boolean v10, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v10, :cond_f

    iget v10, v9, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v6, v10}, Landroid/util/IntArray;->add(I)V

    iget v10, v9, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v10, v8}, Lcom/android/server/alarm/AlarmManagerService;->increment(ILandroid/util/SparseIntArray;)V

    :cond_f
    invoke-static {v9}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v10

    if-nez v10, :cond_10

    iget v10, v9, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v9, v9, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v10, v9}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_10
    const/16 v20, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_11
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_12

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    if-eqz v4, :cond_12

    invoke-virtual {v6}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    invoke-virtual {v4, v14, v15, v6}, Landroid/os/BatteryStatsInternal;->noteWakingAlarmBatch(J[I)V

    :cond_12
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v14, v15, v3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(JLjava/util/ArrayList;)V

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    iget-object v6, v4, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/16 v20, 0x1

    add-int/lit8 v6, v6, -0x1

    :goto_a
    if-ltz v6, :cond_14

    iget-object v9, v4, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_13

    iget-object v9, v4, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_13
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    :cond_14
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v4, v5, v2, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    :goto_b
    monitor-exit v1

    goto :goto_d

    :goto_c
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_15
    move-object/from16 v3, v21

    const/16 v20, 0x1

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    monitor-exit v2

    :goto_d
    move-object v2, v3

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0
.end method
