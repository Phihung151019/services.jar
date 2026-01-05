.class public final Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final alarmComplete(Landroid/os/IBinder;)V
    .locals 5

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid alarmComplete: uid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final alarmTimedOut(Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "Spurious timeout of listener "

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    const/4 v8, 0x1

    sget-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v3

    :try_start_0
    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    add-int/2addr v10, v8

    iput v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    :goto_1
    move-object/from16 v18, v10

    goto :goto_2

    :cond_1
    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    goto :goto_1

    :goto_2
    iget-object v11, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v12

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.extra.ALARM_COUNT"

    iget v13, v2, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {v0, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 v17, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v18}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    :try_start_2
    iget-wide v5, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-lez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Lcom/android/server/alarm/AlarmManagerService$2;)V

    :cond_3
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3, v4}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    return-void

    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    add-int/2addr v10, v8

    iput v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-interface {v0, v10, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    if-ne v0, v11, :cond_5

    iget-object v0, v10, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v10, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    aput-wide v6, v0, v11

    const/16 v0, 0xa

    if-lt v12, v0, :cond_5

    iput v5, v10, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    invoke-static {v10, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0, v1}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v10}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v0, v11, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-virtual {v0, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-static {v3, v4}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v4, 0x4

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v0, v3, v9, v10, v8}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v4, v8, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    new-instance v10, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {v10, v0, v2, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$InFlight;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    iget-object v0, v10, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_7

    goto :goto_4

    :cond_7
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_8
    :goto_4
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_9

    move v3, v8

    goto :goto_5

    :cond_9
    move v3, v5

    :goto_5
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v0, :cond_a

    iget-object v11, v0, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_5
    iget-boolean v0, v0, Lcom/android/server/AppStateTrackerImpl;->mForceAllAppsStandby:Z

    monitor-exit v11

    if-eqz v0, :cond_a

    move v5, v8

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_a
    :goto_6
    iget-object v11, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-nez v3, :cond_b

    if-eqz v5, :cond_f

    :cond_b
    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    iget v12, v2, Lcom/android/server/alarm/Alarm;->flags:I

    if-eqz v0, :cond_e

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_7

    :cond_c
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    :goto_7
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v0, v4, v11, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(ILjava/lang/String;J)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    move v4, v5

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZI)V

    invoke-virtual {v12, v0}, Lcom/android/server/alarm/LazyAlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;)Z

    :cond_d
    move-object/from16 v2, p1

    goto :goto_8

    :cond_e
    move v4, v5

    and-int/lit8 v0, v12, 0x40

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v9, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZI)V

    invoke-virtual {v12, v0}, Lcom/android/server/alarm/LazyAlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;)Z

    :cond_f
    :goto_8
    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-boolean v3, v2, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v11}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    const-string v4, ", user: "

    const-string/jumbo v5, "Temporary quota being consumed at "

    const-string v9, "AlarmManager"

    if-nez v3, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " but not found for package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    iget-wide v12, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    cmp-long v12, v6, v12

    if-lez v12, :cond_14

    iget v12, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    const-string v13, " for package: "

    if-gtz v12, :cond_11

    const-string v12, " but remaining only "

    invoke-static {v5, v6, v7, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v12, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    invoke-static {v12, v13, v11, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    iget-wide v14, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    cmp-long v14, v14, v6

    if-gez v14, :cond_12

    const-string v12, " but expired at "

    invoke-static {v5, v6, v7, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v14, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_12
    sub-int/2addr v12, v8

    iput v12, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    :goto_9
    iput-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->lastUsage:J

    goto :goto_a

    :cond_13
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v3, v0, v11, v6, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(ILjava/lang/String;J)V

    :cond_14
    :goto_a
    iget-object v0, v10, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v3, v8

    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->count:I

    iget v3, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v3, :cond_15

    iput v8, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_b

    :cond_15
    add-int/2addr v3, v8

    iput v3, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    :goto_b
    iget-object v3, v10, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v4, v8

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-nez v4, :cond_16

    iput v8, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    iput-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_c

    :cond_16
    add-int/2addr v4, v8

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    :goto_c
    iget v4, v2, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_18

    if-nez v4, :cond_17

    goto :goto_d

    :cond_17
    return-void

    :cond_18
    :goto_d
    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v4, v8

    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v0, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v0, v8

    iput v0, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/alarm/Alarm;->uid:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/app/ActivityManagerInternal;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    :try_start_6
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3, v4}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    return-void

    :goto_e
    invoke-static {v3, v4}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    throw v0
.end method

.method public final onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p3, p3, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget p5, p4, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 p5, p5, 0x1

    iput p5, p4, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_2

    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p2, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No in-flight alarm for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeLocked(Landroid/os/IBinder;)Lcom/android/server/alarm/AlarmManagerService$InFlight;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "No in-flight alarm for listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateTrackingLocked(Lcom/android/server/alarm/AlarmManagerService$InFlight;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-gtz v4, :cond_0

    iput v0, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    iget-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v6, v1, v6

    add-long/2addr v6, v4

    iput-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    :cond_0
    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v4, :cond_1

    iput v0, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    iget-wide v4, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v6, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->startTime:J

    sub-long/2addr v1, v6

    add-long/2addr v1, v4

    iput-wide v1, v3, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    :cond_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v4, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/app/ActivityManagerInternal;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v1, p1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v1, :cond_5

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished all dispatches with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining inflights"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v1, "  Remaining #"

    const-string v2, ": "

    invoke-static {v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v2, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v0, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method
