.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field public static pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field public final mAdditionHistory:Landroid/util/SparseArray;

.field public final mAlarmClockUpdater:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

.field public final mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

.field public mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

.field public final mAlarmsPerUid:Landroid/util/SparseIntArray;

.field public mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public mAppOps:Landroid/app/AppOpsManager;

.field mAppStandbyParole:Z

.field public mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field public final mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

.field public mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field public final mBackgroundIntent:Landroid/content/Intent;

.field public mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

.field public final mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field public mBroadcastRefCount:I

.field public final mBroadcastStats:Landroid/util/SparseArray;

.field public mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field public mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field public mDateChangeSender:Landroid/app/PendingIntent;

.field public final mDeliveryHistory:Landroid/util/SparseArray;

.field public final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mExpirationHistory:Lcom/android/internal/util/RingBuffer;

.field public final mForceAppStandbyListener:Lcom/android/server/alarm/AlarmManagerService$7;

.field public mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

.field public mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field public final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

.field public final mInFlight:Ljava/util/ArrayList;

.field public final mInFlightListeners:Ljava/util/ArrayList;

.field public final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field public mInteractive:Z

.field public final mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

.field public mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field public final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field public mLastTickReceived:J

.field public mLastTickSet:J

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mLastTrigger:J

.field public mLastWakeup:J

.field public mListenerCount:I

.field public mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

.field public mListenerFinishCount:I

.field public mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field public volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/internal/util/LocalLog;

.field public mMaxDelayTime:J

.field public mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field public final mNextAlarmClockForUser:Landroid/util/SparseArray;

.field public mNextAlarmClockMayChange:Z

.field public mNextNonWakeUpSetAt:J

.field public mNextNonWakeup:J

.field public mNextNonWakeupDeliveryTime:J

.field public mNextTickHistory:I

.field public mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field public mNextWakeUpSetAt:J

.field public mNextWakeup:J

.field public mNonInteractiveStartTime:J

.field public mNonInteractiveTime:J

.field public mNumDelayedAlarms:I

.field public mNumTimeChanged:I

.field public final mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field public final mOptsWithFgs:Landroid/app/BroadcastOptions;

.field public final mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field public final mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPendingBackgroundAlarms:Landroid/util/SparseArray;

.field public mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field public final mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

.field public final mPendingNonWakeupAlarms:Ljava/util/ArrayList;

.field public final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field public final mRemovalHistory:Landroid/util/SparseArray;

.field public final mRemoveFailedHistory:Landroid/util/SparseArray;

.field public final mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

.field public mSendCount:I

.field public mSendFinishCount:I

.field public final mService:Lcom/android/server/alarm/AlarmManagerService$4;

.field public mSetKernelNonWakeup:J

.field public mSetKernelWakeup:J

.field public mStartCurrentDelayTime:J

.field public mStartUserBeforeScheduledAlarms:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSystemUiUid:I

.field public mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field public final mTickHistory:[J

.field public mTimeTickIntent:Landroid/content/Intent;

.field public mTimeTickOptions:Landroid/os/Bundle;

.field public mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

.field public final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

.field public mTotalDelayTime:J

.field public mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field public mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;


# direct methods
.method public static -$$Nest$mdeliverHistory(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    iget v7, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_3

    const/16 v0, 0x3e8

    const-class v1, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    if-eq v7, v0, :cond_2

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    const-string/jumbo v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v7, v0, :cond_1

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;-><init>(Lcom/android/server/alarm/Alarm;JJ)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-boolean p1, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez p1, :cond_4

    new-instance p1, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    iget-object v0, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-direct {p1, v7, v0, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;-><init>(ILjava/lang/String;J)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public static -$$Nest$mfiltAlarmsForFreeCess(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;)V
    .locals 5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_6

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_5

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/FreecessController;->isFreezedPackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v2, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-nez v1, :cond_3

    :cond_0
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    monitor-enter v3

    :try_start_1
    invoke-virtual {v2, v4, v1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(ILjava/lang/String;)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v4, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isFrozen:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-nez v4, :cond_2

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isOLAFFreezed:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :goto_2
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v3, "Alarm"

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v1, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MARs: filtAlarmsForFreeCess ---pkgName = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :goto_4
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_5
    :goto_5
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static -$$Nest$mlogAlarmBatchDelivered(Lcom/android/server/alarm/AlarmManagerService;IILandroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    new-array v3, p0, [I

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    new-array v4, p0, [I

    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    new-array v5, p0, [I

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    aput v1, v3, v0

    invoke-virtual {p3, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    aput v1, v4, v0

    aget v1, v3, v0

    invoke-virtual {p4, v1, p0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x16f

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[I[I[I)V

    return-void
.end method

.method public static -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "EHm"

    goto :goto_2

    :cond_1
    const-string v7, "Ehma"

    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v4, :cond_2

    const-string v4, ""

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-static {v5, v6, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic -$$Nest$smgetNextAlarm(IJ)J
    .locals 0

    invoke-static {p1, p2, p0}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smsetBootAlarm(JLjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setBootAlarm(JLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    const/16 v3, 0x32

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/internal/util/RingBuffer;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/internal/util/RingBuffer;

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/internal/util/jobs/StatLogger;

    const-string/jumbo v3, "REORDER_ALARMS_FOR_STANDBY"

    const-string v4, "HAS_SCHEDULE_EXACT_ALARM"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "Alarm manager stats"

    invoke-direct {v2, v4, v3}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/BroadcastOptions;->setAlarmBroadcast(Z)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    iput-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/alarm/AlarmManagerService$7;

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    new-instance p2, Lcom/android/server/alarm/SamsungAlarmManagerService;

    invoke-direct {p2, p1}, Lcom/android/server/alarm/SamsungAlarmManagerService;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    sget p2, Lcom/android/server/alarm/AppSyncInfo;->$r8$clinit:I

    const-string/jumbo p2, "ro.csc.country_code"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "China"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p2, p1}, Lcom/android/server/alarm/AppSyncInfo;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/android/server/alarm/DummyAppSync;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    return-void
.end method

.method public static addClampPositive(JJ)J
    .locals 5

    add-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    cmp-long p0, p0, v2

    if-ltz p0, :cond_1

    cmp-long p0, p2, v2

    if-ltz p0, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    :cond_1
    return-wide v2
.end method

.method public static calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .locals 8

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    iget-boolean v5, v4, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iget-object v4, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    iget v5, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const/16 v6, 0x3e8

    iget-object v7, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "android"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iput v2, v4, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_2

    :cond_2
    iget v5, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5, v7}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    iput v5, v4, Lcom/android/server/alarm/Alarm;->priorityClass:I

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    iput v5, v4, Lcom/android/server/alarm/Alarm;->priorityClass:I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static native close(J)V
.end method

.method public static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .locals 4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " #"

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static native getNextAlarm(JI)J
.end method

.method public static increment(ILandroid/util/SparseIntArray;)V
    .locals 2

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseIntArray;->setValueAt(II)V

    return-void

    :cond_0
    invoke-virtual {p1, p0, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private static native init()J
.end method

.method public static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x24

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isExactAlarmChangeEnabled(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xa35edc1

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/android/server/alarm/AlarmManagerService;->pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v2

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_6

    :cond_0
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {v2, p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    monitor-exit v3

    :cond_1
    move p0, v1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, v2, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    if-nez v5, :cond_4

    iget v2, v2, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v2, v0, p0}, Lcom/android/server/am/FreecessController;->matchFreezeState(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_0

    :cond_3
    move p0, v1

    :goto_0
    monitor-exit v3

    goto :goto_2

    :cond_4
    iget v2, v2, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    move v2, v4

    goto :goto_1

    :cond_5
    move v2, v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object v2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {v2, v0, p0}, Lcom/android/server/am/FreecessController;->matchFreezeState(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v4

    :goto_2
    if-eqz p0, :cond_6

    return v4

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    return v1
.end method

.method public static isRtc(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static maxTriggerTime(JJJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_0

    sub-long p4, p2, p0

    :cond_0
    const-wide/16 p0, 0x2710

    cmp-long p0, p4, p0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, p4

    :goto_0
    const-wide/high16 p0, 0x3fe8000000000000L    # 0.75

    long-to-double p4, v0

    mul-double/2addr p4, p0

    double-to-long p0, p4

    invoke-static {p2, p3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p0

    if-nez v2, :cond_2

    const-wide/32 p4, 0x36ee80

    invoke-static {p2, p3, p4, p5}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    :cond_2
    return-wide p0
.end method

.method private static native set(JIJJ)I
.end method

.method private static native setBootAlarm(JLjava/lang/String;)V
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method public final adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v4, 0x3

    if-eqz v3, :cond_b

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    iget v3, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v6, v3, 0x8

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    iget-wide v7, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    iget-wide v7, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    :goto_1
    invoke-virtual {p0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(ILjava/lang/String;)I

    move-result v3

    if-ge v3, v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2, v6, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v7

    goto :goto_2

    :cond_8
    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v2

    cmp-long v5, v2, v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v2

    goto :goto_2

    :cond_a
    const-wide v2, 0x757b12c00L

    add-long/2addr v0, v2

    :goto_2
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_b
    :goto_3
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v4, v2, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v4, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(ILjava/lang/String;)I

    move-result v6

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_1

    if-lez v6, :cond_4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v5, v4, v6, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    move-result-wide v4

    sub-long v6, v0, v4

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long p0, v6, v8

    if-gez p0, :cond_4

    add-long/2addr v4, v8

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v5

    if-lt v6, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->mQuotaBuffer:Landroid/util/ArrayMap;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;

    if-eqz v6, :cond_2

    iget v7, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->remainingQuota:I

    if-lez v7, :cond_2

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve$QuotaInfo;->expirationTime:J

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2

    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_2
    if-gtz v5, :cond_3

    const-wide v4, 0x757b12c00L

    :goto_0
    add-long/2addr v0, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    iput-boolean p0, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    if-ne v2, p1, :cond_0

    goto :goto_3

    :cond_0
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    iget v5, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eqz v2, :cond_4

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v5, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    iget-wide v6, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    :goto_0
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v2, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(ILjava/lang/String;)I

    move-result v9

    if-ge v9, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v2, v5, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(IILjava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v6

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    :cond_4
    and-int/lit8 v2, v4, 0x40

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v0, v4

    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    :goto_2
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0

    :cond_7
    :goto_3
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result p0

    return p0
.end method

.method public final adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .locals 10

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, v2, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-wide v4, p1, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v6, v2, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v6, v2, v4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v0, v6, v7, v4, v5}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final checkAllowNonWakeupDelayLocked(J)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->DELAY_NONWAKEUP_ALARMS_WHILE_SCREEN_OFF:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-gtz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public final convertToElapsed(IJ)J
    .locals 2

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    sub-long/2addr p2, v0

    :cond_0
    return-wide p2
.end method

.method public final currentNonWakeupFuzzLocked(J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x493e0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const-wide/32 p0, 0x1d4c0

    return-wide p0

    :cond_0
    const-wide/32 v0, 0x1b7740

    cmp-long p0, p1, v0

    if-gez p0, :cond_1

    const-wide/32 p0, 0xdbba0

    return-wide p0

    :cond_1
    const-wide/32 p0, 0x36ee80

    return-wide p0
.end method

.method public final decrementAlarmCount(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Attempt to decrement existing alarm count "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " by 1 for uid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final deliverAlarmsLocked(JLjava/util/ArrayList;)V
    .locals 9

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/Alarm;

    iget-boolean v2, v1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v3, v1, Lcom/android/server/alarm/Alarm;->uid:I

    const-wide/32 v4, 0x20000

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Dispatch wakeup alarm to "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Dispatch non-wakeup alarm to "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v1, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v8, v1, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v2, v6, v7, v3, v8}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v2, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {p0, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V
    .locals 26

    move-object/from16 v6, p3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v20, 0x0

    move/from16 v0, v20

    move v8, v0

    :goto_0
    if-ge v8, v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/alarm/Alarm;

    iget-boolean v1, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move/from16 v21, v2

    goto :goto_1

    :cond_0
    move/from16 v21, v0

    :goto_1
    iput v2, v9, Lcom/android/server/alarm/Alarm;->count:I

    iget-wide v4, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    int-to-long v0, v2

    iget-object v2, v9, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v2, v20

    sub-long v10, p1, v2

    div-long/2addr v10, v4

    add-long/2addr v10, v0

    long-to-int v0, v10

    iput v0, v9, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v0, v0

    mul-long v10, v0, v4

    add-long/2addr v2, v10

    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v4

    iget-wide v0, v9, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long/2addr v0, v10

    sub-long/2addr v4, v2

    iget-object v15, v9, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v10, v9, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v13, v9, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move v11, v8

    move-wide/from16 v24, v2

    move v2, v7

    move-wide/from16 v7, v24

    iget v3, v9, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v12, v9, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-wide/from16 v16, v4

    move-wide v5, v0

    iget v1, v9, Lcom/android/server/alarm/Alarm;->type:I

    move v0, v11

    move-object/from16 v19, v12

    iget-wide v11, v9, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const/4 v14, 0x0

    const/16 v18, 0x0

    iget v4, v9, Lcom/android/server/alarm/Alarm;->flags:I

    move-wide/from16 v24, v16

    move-object/from16 v17, v10

    move-wide/from16 v9, v24

    const/16 v16, 0x0

    move/from16 v22, v2

    move v2, v4

    const/4 v4, -0x1

    move/from16 v23, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    move-object/from16 v1, p0

    move/from16 v22, v7

    move/from16 v23, v8

    :goto_2
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v6, p3

    move/from16 v0, v21

    move/from16 v7, v22

    goto :goto_0

    :cond_2
    move-object/from16 v1, p0

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-wide/from16 v2, p1

    iput-wide v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    invoke-virtual/range {p0 .. p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    :cond_3
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v6, p3

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    return-void

    :cond_4
    move-wide/from16 v2, p1

    move-object/from16 v6, p3

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v2, v4

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v0, v7, v4

    if-gez v0, :cond_5

    iput-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    :cond_5
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-static {v6}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(JLjava/util/ArrayList;)V

    return-void
.end method

.method public final dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .locals 20
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "App Standby Parole: "

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string v4, "Current Alarm Manager state:"

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v4, v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v4, "Feature Flags:"

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v4, "com.android.server.alarm.start_user_before_scheduled_alarms"

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v4, "com.android.server.alarm.acquire_wakelock_before_send"

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_23

    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "nowRTC="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v10, "="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v10, " nowELAPSED="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/util/IndentingPrintWriter;->print(J)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v10, "mLastTimeChangeClockTime="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v10, "="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v10, "mLastTimeChangeRealtime="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v10, "mLastTickReceived="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v10, "mLastTickSet="

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    iget-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v10, "Recent TIME_TICK history:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    :cond_1
    add-int/lit8 v10, v10, -0x1

    if-gez v10, :cond_2

    const/16 v10, 0x9

    :cond_2
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v11, v11, v10

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_3

    new-instance v15, Ljava/util/Date;

    sub-long v11, v4, v11

    sub-long v11, v8, v11

    invoke-direct {v15, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_3
    const-string v11, "-"

    :goto_1
    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v10, v11, :cond_1

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-class v10, Lcom/android/server/SystemServiceManager;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/SystemServiceManager;

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v11, "RuntimeStarted="

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v11, Ljava/util/Date;

    sub-long v15, v8, v4

    move-wide/from16 v17, v13

    iget-wide v13, v10, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    add-long v12, v15, v13

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "  (Runtime restarted)"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v11, "Runtime uptime (elapsed): "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v10, Lcom/android/server/SystemServiceManager;->mRuntimeStartElapsedTime:J

    invoke-static {v4, v5, v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v11, "Runtime uptime (uptime): "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v10

    invoke-static {v6, v7, v10, v11, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_2

    :cond_5
    move-wide/from16 v17, v13

    :goto_2
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-boolean v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v6, :cond_6

    const-string/jumbo v6, "Time since non-interactive: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_6
    const-string/jumbo v6, "Max wakeup delay: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Time since last dispatch: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v6, v4, v6

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Next non-wakeup delivery time: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v6, v7, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v10, v8, v4

    add-long/2addr v6, v10

    iget-wide v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    add-long/2addr v12, v10

    const-string/jumbo v10, "Next non-wakeup alarm: "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v10, v11, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v10, "set at "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v10, v11, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v10, "Next wakeup alarm: "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v10, v11, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v1, v10, v11}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v6, "set at "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v6, v7, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Next kernel non-wakeup alarm: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const/4 v10, 0x3

    invoke-static {v10, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetNextAlarm(IJ)J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v6, "Next kernel wakeup alarm: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const/4 v10, 0x2

    invoke-static {v10, v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smgetNextAlarm(IJ)J

    move-result-wide v6

    invoke-static {v6, v7, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Last wakeup: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v6, v7, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v6, " = "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v1, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string v6, "Last trigger: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v6, v7, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v6, " = "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v1, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    const-string/jumbo v6, "Num time change events: "

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v6, "Last OP_SCHEDULE_EXACT_ALARM: ["

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v7, v10, :cond_8

    if-lez v7, :cond_7

    const-string v10, ", "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    invoke-static {v1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    const-string/jumbo v7, "]"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Next alarm clock information: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    move v10, v6

    :goto_4
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_9

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_9
    move v10, v6

    :goto_5
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_a

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    goto :goto_7

    :cond_b
    move-wide/from16 v11, v17

    :goto_7
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v13

    const-string/jumbo v14, "user:"

    invoke-virtual {v1, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v10, " pendingSend:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Z)V

    const-string v10, " time:"

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    cmp-long v10, v11, v17

    if-lez v10, :cond_c

    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v10, " = "

    invoke-virtual {v1, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v11, v12, v8, v9, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :cond_c
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_6

    :cond_d
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v7}, Lcom/android/server/alarm/LazyAlarmStore;->size()I

    move-result v7

    if-lez v7, :cond_e

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v7, v1, v4, v5, v2}, Lcom/android/server/alarm/LazyAlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    :cond_e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Pending user blocked background alarms: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    move v8, v7

    :goto_8
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v7, v9, :cond_10

    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_f

    invoke-static {v1, v9, v4, v5, v2}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    move v8, v10

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_10
    if-nez v8, :cond_11

    const-string/jumbo v7, "none"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Pending alarms per uid: ["

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v7, v6

    :goto_9
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    if-lez v7, :cond_12

    const-string v8, ", "

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_12
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_13
    const-string/jumbo v7, "]"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-boolean v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v7, :cond_14

    const-string/jumbo v7, "Scheduled user wakeups:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/alarm/UserWakeupStore;->dump(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_14
    const-string v7, "App Alarm history:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Temporary Quota Reserves:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_16

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Idle mode state:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v7, "Idling until: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_15

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v1, v4, v5, v2}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_a

    :cond_15
    const-string/jumbo v7, "null"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_16
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_17

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Next wake from idle: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v1, v4, v5, v2}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_17
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Past-due non-wakeup alarms: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_18

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v1, v7, v4, v5, v2}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_b

    :cond_18
    const-string v7, "(none)"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v7, "Number of delayed alarms: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v7, ", total delay time: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v7, "Max delay time: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v7, ", max non-interactive time: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v7, v8, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Broadcast ref count: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v7, "PendingIntent send count: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v7, "PendingIntent finish count: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v7, "Listener send count: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v7, "Listener finish count: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1a

    const-string/jumbo v7, "Outstanding deliveries:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    :goto_c
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_19

    const-string v8, "#"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v8, ": "

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_19
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1a
    const-string v7, "Allow while idle history:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v7, "Allow while idle compat history:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-lez v7, :cond_1c

    const-string v7, "Last priority alarm dispatches:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    :goto_d
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1b

    const-string/jumbo v8, "UID: "

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v8

    invoke-static {v1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ": "

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v8

    invoke-static {v8, v9, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_1c
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_1f

    const-string/jumbo v7, "Removal history:"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    :goto_e
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_1e

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    array-length v9, v8

    sub-int/2addr v9, v10

    :goto_f
    if-ltz v9, :cond_1d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v12, v8

    sub-int/2addr v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget-object v11, v8, v9

    invoke-virtual {v11, v1, v4, v5, v2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_f

    :cond_1d
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1f
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_22

    const-string/jumbo v7, "Remove Failed history: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    :goto_10
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_21

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemoveFailedHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemoveFailedRequest;

    array-length v9, v8

    if-gtz v9, :cond_20

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_20
    aget-object v0, v8, v6

    const/4 v0, 0x0

    throw v0

    :cond_21
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_22
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_25

    const-string v7, "Addition history: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    :goto_11
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_24

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    array-length v9, v8

    move v11, v6

    :goto_12
    if-ge v11, v9, :cond_23

    aget-object v12, v8, v11

    invoke-virtual {v12, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_23
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_24
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_25
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-lez v7, :cond_28

    const-string v7, "Delivery history: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    move v7, v6

    :goto_13
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_27

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v1, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v8, ":"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;

    array-length v9, v8

    move v11, v6

    :goto_14
    if-ge v11, v9, :cond_26

    aget-object v12, v8, v11

    invoke-virtual {v12, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$DeliveredAlarm;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_26
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_27
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_28
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_2a

    const-string v7, "Expiration history: "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    array-length v8, v7

    move v9, v6

    :goto_15
    if-ge v9, v8, :cond_29

    aget-object v11, v7, v9

    invoke-virtual {v11, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_29
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2a
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_2d

    const-string v7, "Invalid Expiration history: ["

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;

    move v8, v6

    :goto_16
    iget-object v9, v0, Lcom/android/server/alarm/AlarmManagerService;->mInvalidExpirationHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v9}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v9

    if-ge v8, v9, :cond_2c

    aget-object v9, v7, v8

    if-lez v8, :cond_2b

    const-string v11, ", "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_2b
    iget-wide v11, v9, Lcom/android/server/alarm/AlarmManagerService$ExpiredRecord;->mWhenExpiredElapsed:J

    invoke-virtual {v1, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_16

    :cond_2c
    const-string/jumbo v7, "]"

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2d
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v7

    if-lez v7, :cond_2f

    const-string/jumbo v7, "Wakeup Alarm history(screen off): "

    invoke-virtual {v1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mWakeupAlarmHistory:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v7}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;

    array-length v8, v7

    move v9, v6

    :goto_17
    if-ge v9, v8, :cond_2e

    aget-object v11, v7, v9

    invoke-virtual {v11, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$WakeupRecord;->dump(Landroid/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_2e
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_2f
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string/jumbo v7, "Recent problems:"

    invoke-virtual {v2, v1, v7}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_30
    const/16 v2, 0xa

    new-array v7, v2, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    new-instance v8, Lcom/android/server/alarm/AlarmManagerService$5;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(I)V

    move v9, v6

    move v11, v9

    :goto_18
    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-ge v9, v12, :cond_38

    iget-object v12, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArrayMap;

    move v13, v6

    :goto_19
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_37

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move v15, v6

    move/from16 v16, v10

    :goto_1a
    iget-object v10, v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v15, v10, :cond_36

    iget-object v10, v14, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v11, :cond_31

    invoke-static {v7, v6, v11, v10, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v17

    move/from16 v6, v17

    :cond_31
    if-gez v6, :cond_32

    neg-int v6, v6

    add-int/lit8 v6, v6, -0x1

    :cond_32
    if-ge v6, v2, :cond_34

    rsub-int/lit8 v2, v6, 0x9

    if-lez v2, :cond_33

    move/from16 v19, v9

    add-int/lit8 v9, v6, 0x1

    invoke-static {v7, v6, v7, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1b

    :cond_33
    move/from16 v19, v9

    :goto_1b
    aput-object v10, v7, v6

    const/16 v2, 0xa

    if-ge v11, v2, :cond_35

    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    :cond_34
    move/from16 v19, v9

    :cond_35
    :goto_1c
    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v19

    const/4 v6, 0x0

    goto :goto_1a

    :cond_36
    move/from16 v19, v9

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v16

    const/4 v6, 0x0

    goto :goto_19

    :cond_37
    move/from16 v19, v9

    move/from16 v16, v10

    add-int/lit8 v9, v19, 0x1

    const/4 v6, 0x0

    goto :goto_18

    :cond_38
    if-lez v11, :cond_3b

    const-string/jumbo v2, "Top Alarms:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v11, :cond_3a

    aget-object v6, v7, v2

    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v9, :cond_39

    const-string v9, "*ACTIVE* "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_39
    iget-wide v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v9, v10, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v9, " running, "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v9, " wakeups, "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v9, " alarms: "

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v9, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v1, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v9, ":"

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v9, v9, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_3a
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3b
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Alarm Stats:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_1e
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_41

    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    :goto_1f
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_40

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v11, :cond_3c

    const-string v11, "*ACTIVE* "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3c
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v1, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v11, ":"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v11, " running, "

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v11, " wakeups:"

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_20
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_3d

    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_3d
    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v10, 0x0

    :goto_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3f

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v12, :cond_3e

    const-string v12, "*ACTIVE* "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3e
    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v12, v13, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v12, " "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v12, " wakes "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v12, " alarms, last "

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v12, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v12, v13, v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v12, ":"

    invoke-virtual {v1, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_3f
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1f

    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1e

    :cond_41
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    if-eqz v2, :cond_42

    invoke-virtual {v2, v1}, Lcom/android/server/alarm/GmsAlarmManager;->doDump(Ljava/io/PrintWriter;)V

    :cond_42
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    if-eqz v0, :cond_43

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AppSyncWrapper;->dump(Ljava/io/PrintWriter;)V

    goto :goto_22

    :cond_43
    const-string v0, "<AppSync Disabled>"

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_22
    monitor-exit v3

    return-void

    :goto_23
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final finalize()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v0, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getQuotaForBucketLocked(I)I
    .locals 1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    if-ge p1, v0, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    :goto_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget p0, p0, p1

    return p0
.end method

.method public final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public final hasScheduleExactAlarmInternal(ILjava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2, p2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide/32 v5, 0xd7f327a

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v5, v6, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "android.permission.SCHEDULE_EXACT_ALARM"

    const/4 v6, -0x1

    invoke-static {v2, v5, v6, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    :goto_0
    move v4, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    invoke-virtual {v2, v5, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v4
.end method

.method public final hasUseExactAlarmInternal(ILjava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide/32 v1, 0xd068d35

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "android.permission.USE_EXACT_ALARM"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1, p2}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final interactiveStateChangedLocked(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_4

    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long p1, v4, v2

    if-gez p1, :cond_0

    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(JLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    :cond_2
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    :cond_4
    return-void
.end method

.method public final isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget v0, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz p0, :cond_3

    iget-object p1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final isExemptFromExactAlarmPermissionNoLock(I)Z
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlarmManager"

    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final lookForPackageLocked(ILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    iget-object v5, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v4, v4, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v4, p1, :cond_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :cond_2
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    iget-object v4, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :cond_4
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Lcom/android/server/alarm/Alarm;

    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v3, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v3, p1, :cond_4

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_5
    return v2
.end method

.method public final onBootPhase(I)V
    .locals 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string/jumbo v2, "alarm_manager"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const/4 v1, 0x0

    new-array v3, v1, [Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const-class v0, Lcom/android/server/DeviceIdleInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager;->mHandler:Lcom/android/server/alarm/GmsAlarmManager$GmsHandler;

    invoke-direct {v2, v0, v3}, Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;-><init>(Lcom/android/server/alarm/GmsAlarmManager;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    iget-object v2, v0, Lcom/android/server/alarm/GmsAlarmManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/alarm/GmsAlarmManager;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/server/alarm/GmsAlarmManager;->mObserver:Lcom/android/server/alarm/GmsAlarmManager$SmartManagerSettingsObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v0}, Lcom/android/server/alarm/GmsAlarmManager;->getSettingsValueFromDB()V

    :cond_0
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const-class v0, Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTrackerImpl;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "appops"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    const/16 v2, 0x6b

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    const-class p1, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppStandbyInternal;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {p1, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    const-class p1, Landroid/os/BatteryStatsInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStatsInternal;

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBatteryStatsInternal:Landroid/os/BatteryStatsInternal;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iget-object p0, p1, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/StatsManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    sget-object v2, Lcom/android/internal/util/jobs/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/MetricsHelper;Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;)V

    const/16 p1, 0x277a

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "alarm_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111001a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/alarm/UserWakeupStore;

    invoke-direct {v0}, Lcom/android/server/alarm/UserWakeupStore;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    new-instance v4, Landroid/os/HandlerExecutor;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v4, v5}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v4, v0}, Landroid/app/ActivityManager;->registerUidFrozenStateChangedCallback(Ljava/util/concurrent/Executor;Landroid/app/ActivityManager$UidFrozenStateChangedCallback;)V

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    new-instance v3, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v3}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    iput-object v4, v3, Lcom/android/server/alarm/LazyAlarmStore;->mOnAlarmClockRemoved:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-direct {v3}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>()V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService$Injector;->initializeTimeIfRequired()V

    const-class v5, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageManagerInternal;

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    sput-object v5, Lcom/android/server/alarm/AlarmManagerService;->pmInternalForMARs:Landroid/content/pm/PackageManagerInternal;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-wide/32 v7, 0x100000

    invoke-virtual {v5, v6, v7, v8, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    iput v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-gtz v5, :cond_2

    const-string v5, "AlarmManager"

    const-string/jumbo v6, "SysUI package not found!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const-string v6, "*alarm*"

    invoke-virtual {v5, v2, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.TIME_TICK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x50200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickOptions:Landroid/os/Bundle;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Lcom/android/server/alarm/AlarmManagerService$2;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DATE_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x20200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/high16 v8, 0x4000000

    invoke-static {v6, v1, v5, v8, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    const/4 v6, 0x1

    invoke-direct {v5, p0, v6}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    const-string/jumbo v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CHINA"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "HONG KONG"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v5, Lcom/android/server/alarm/GmsAlarmManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/alarm/GmsAlarmManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    invoke-virtual {v5, p0}, Lcom/android/server/alarm/GmsAlarmManager;->init(Lcom/android/server/alarm/AlarmManagerService;)V

    :cond_4
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_6
    const-string v1, "AlarmManager"

    const-string v2, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "alarm"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reevaluateRtcAlarms()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/alarm/Alarm;

    iget v8, v7, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v8}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v8

    if-nez v8, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    iget-wide v8, v7, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v10, v7, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p0, v10, v8, v9}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    move-result-wide v8

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v7

    :goto_1
    or-int/2addr v5, v7

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_7

    iget v1, v1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v1}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    move v7, v6

    :goto_2
    if-ge v7, v3, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/alarm/Alarm;

    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v8, v9, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    or-int/2addr v6, v8

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    if-eqz v6, :cond_7

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :goto_4
    if-ge v6, v3, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, v7}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v7

    or-int/2addr v4, v7

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_7
    :goto_5
    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    :cond_8
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final refreshExactAlarmCandidates()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionManagerServiceImpl:Lcom/android/server/pm/permission/PermissionManagerServiceInterface;

    const-string/jumbo v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInterface;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0x400000

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    return-void
.end method

.method public final removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v2, v1}, Lcom/android/server/alarm/LazyAlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    invoke-interface {v1, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_2
    if-ltz v3, :cond_7

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    :goto_3
    if-ltz v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    invoke-interface {v1, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v11

    :goto_4
    if-ltz v3, :cond_9

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    move v3, v13

    :goto_5
    if-ge v3, v12, :cond_12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    iget-object v3, v4, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    invoke-virtual {v3, v11}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v3, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    iget v3, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(I)V

    iget-object v5, v4, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v5, :cond_b

    invoke-interface {v5}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-interface {v5, v15, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_b
    if-eqz p1, :cond_11

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_c

    const-string/jumbo v15, "TIME_TICK"

    iget-object v11, v4, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "AlarmManager"

    const-string/jumbo v15, "Removed TIME_TICK alarm"

    invoke-static {v11, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/util/RingBuffer;

    if-nez v11, :cond_10

    const-class v11, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    if-eq v3, v5, :cond_f

    iget-object v5, v4, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    const-string/jumbo v15, "com.sec.android.app.clockpackage"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    iget v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v3, v5, :cond_e

    new-instance v5, Lcom/android/internal/util/RingBuffer;

    const/16 v15, 0x1e

    invoke-direct {v5, v11, v15}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    :goto_6
    move-object v11, v5

    goto :goto_8

    :cond_e
    new-instance v5, Lcom/android/internal/util/RingBuffer;

    const/16 v15, 0xa

    invoke-direct {v5, v11, v15}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_6

    :cond_f
    :goto_7
    new-instance v5, Lcom/android/internal/util/RingBuffer;

    const/16 v15, 0x32

    invoke-direct {v5, v11, v15}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_6

    :goto_8
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move/from16 v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v11, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    move v3, v14

    const/4 v11, 0x1

    goto/16 :goto_5

    :cond_11
    move v3, v14

    goto/16 :goto_5

    :cond_12
    if-nez v10, :cond_1a

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_13

    invoke-interface {v1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    move v2, v13

    :goto_9
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_17

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v1}, Lcom/android/server/alarm/LazyAlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v13

    move v6, v5

    :goto_a
    if-ge v6, v4, :cond_15

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/alarm/Alarm;

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v7, v8, :cond_14

    invoke-virtual {v0, v7}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    goto :goto_b

    :cond_14
    move v7, v13

    :goto_b
    or-int/2addr v5, v7

    goto :goto_a

    :cond_15
    if-eqz v5, :cond_16

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_16
    or-int/2addr v2, v5

    :cond_17
    if-eqz v2, :cond_19

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v2, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v13

    :goto_c
    if-ge v4, v3, :cond_18

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v5}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v5

    or-int/2addr v13, v5

    goto :goto_c

    :cond_18
    if-eqz v13, :cond_19

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_19
    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    :cond_1a
    return-void
.end method

.method public final removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "AlarmManager"

    const-string/jumbo v1, "Package "

    const-string v2, ", uid "

    const-string v3, " lost permission to set exact alarms!"

    invoke-static {p1, v1, p2, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const-string/jumbo p2, "schedule_exact_alarm revoked"

    sget-object p3, Lcom/android/server/pm/permission/PermissionManagerService;->sRunningAttributionSources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_1

    :try_start_2
    invoke-interface {p3, p0, p1, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final removeImpl(Landroid/app/PendingIntent;Lcom/android/server/alarm/AlarmManagerService$2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .locals 1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    return-void
.end method

.method public final removeUserLocked(I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "AlarmManager"

    const-string p1, "Ignoring attempt to remove system-user state!"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v4, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/alarm/Alarm;

    iget v10, v9, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    iget-object v11, v9, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v10

    if-eqz p1, :cond_0

    invoke-virtual {p1, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    move v9, v6

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result v9

    :goto_1
    or-int/2addr v7, v9

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    iget-object p0, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    return v7
.end method

.method public final rescheduleKernelAlarmsLocked()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    if-lez v3, :cond_e

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v6, v3, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v6}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v7

    iget-object v9, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    move-wide v11, v4

    :goto_0
    if-ltz v9, :cond_4

    iget-object v13, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/Alarm;

    iget-boolean v14, v13, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-nez v14, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v13}, Lcom/android/server/alarm/AlarmManagerService;->isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v14, v11, v4

    if-nez v14, :cond_2

    iget-wide v11, v13, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    goto :goto_1

    :cond_2
    iget-wide v14, v13, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v14, v14, v11

    if-lez v14, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v13, v13, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v6, v10, v7, v8}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    iget-boolean v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    if-eqz v3, :cond_8

    iget-object v7, v3, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v7

    const-wide/16 v8, -0x1

    move-wide v13, v8

    const/4 v10, 0x0

    :goto_3
    :try_start_0
    iget-object v15, v3, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v15}, Landroid/util/SparseLongArray;->size()I

    move-result v15

    if-ge v10, v15, :cond_7

    iget-object v15, v3, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v15, v10}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v15

    cmp-long v15, v15, v13

    if-ltz v15, :cond_5

    cmp-long v15, v13, v8

    if-nez v15, :cond_6

    :cond_5
    iget-object v13, v3, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v10}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v13

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_7
    monitor-exit v7

    cmp-long v3, v13, v4

    if-ltz v3, :cond_8

    cmp-long v3, v13, v11

    if-gez v3, :cond_8

    move-wide v11, v13

    goto :goto_5

    :goto_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    :goto_5
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v7, v3, Lcom/android/server/alarm/LazyAlarmStore;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v7}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v8

    iget-object v10, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v13, 0x2

    if-nez v10, :cond_9

    move-wide v14, v4

    move-wide/from16 v16, v14

    goto :goto_9

    :cond_9
    iget-object v14, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    add-int/lit8 v15, v10, -0x1

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/alarm/Alarm;

    iget-wide v14, v14, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    sub-int/2addr v10, v13

    :goto_6
    move-wide/from16 v16, v4

    if-ltz v10, :cond_b

    iget-object v4, v3, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    move-object/from16 v18, v7

    iget-wide v6, v4, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v6, v6, v14

    if-lez v6, :cond_a

    move-object/from16 v3, v18

    :goto_7
    const/4 v5, 0x0

    goto :goto_8

    :cond_a
    iget-wide v6, v4, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    add-int/lit8 v10, v10, -0x1

    move-wide/from16 v4, v16

    move-object/from16 v7, v18

    goto :goto_6

    :cond_b
    move-object v3, v7

    goto :goto_7

    :goto_8
    invoke-virtual {v3, v5, v8, v9}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    :goto_9
    cmp-long v3, v11, v16

    if-eqz v3, :cond_c

    iput-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-virtual {v0, v13, v11, v12}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_c
    cmp-long v3, v14, v11

    if-eqz v3, :cond_d

    goto :goto_a

    :cond_d
    move-wide/from16 v14, v16

    goto :goto_a

    :cond_e
    move-wide/from16 v16, v4

    move-wide/from16 v11, v16

    move-wide v14, v11

    :goto_a
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10

    cmp-long v3, v14, v16

    if-eqz v3, :cond_f

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v3, v3, v14

    if-gez v3, :cond_10

    :cond_f
    iget-wide v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    :cond_10
    cmp-long v3, v14, v16

    if-eqz v3, :cond_11

    iput-wide v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    :cond_11
    cmp-long v1, v11, v16

    if-eqz v1, :cond_12

    iput-wide v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelWakeup:J

    :cond_12
    if-eqz v3, :cond_13

    iput-wide v14, v0, Lcom/android/server/alarm/AlarmManagerService;->mSetKernelNonWakeup:J

    :cond_13
    return-void
.end method

.method public final sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    iget-object v3, v3, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(JLjava/util/ArrayList;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p14

    move-object/from16 v9, p15

    const-string/jumbo v10, "Maximum limit of concurrent alarms "

    if-nez p8, :cond_0

    if-eqz p9, :cond_1

    :cond_0
    if-eqz p8, :cond_2

    if-eqz p9, :cond_2

    :cond_1
    const-string v0, "AlarmManager"

    const-string v1, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v11, 0x0

    if-eqz p9, :cond_3

    :try_start_0
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-interface {v12, v13, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object/from16 v12, p10

    goto :goto_0

    :catch_0
    const-string v0, "AlarmManager"

    const-string v1, "Dropping unreachable alarm listener "

    move-object/from16 v12, p10

    invoke-static {v1, v12, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_0
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v14, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    const-wide/16 v16, 0x0

    cmp-long v18, v6, v16

    if-lez v18, :cond_4

    cmp-long v18, v6, v14

    if-gez v18, :cond_4

    const-string v13, "AlarmManager"

    const-string/jumbo v11, "Suspiciously short interval "

    const-string v12, " millis; expanding to "

    invoke-static {v11, v6, v7, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v11, 0x3e8

    div-long v11, v14, v11

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v23, v14

    goto :goto_1

    :cond_4
    iget-wide v11, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v11, v6, v11

    if-lez v11, :cond_5

    const-string v11, "AlarmManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Suspiciously long interval "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " millis; clamping"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v6, v6, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    :cond_5
    move-wide/from16 v23, v6

    :goto_1
    if-ltz v1, :cond_e

    const/4 v6, 0x3

    if-gt v1, v6, :cond_e

    cmp-long v6, v2, v16

    if-gez v6, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    int-to-long v6, v6

    const-string v11, "AlarmManager"

    const-string v12, "Invalid alarm trigger time! "

    const-string v13, " from uid="

    invoke-static {v8, v12, v2, v3, v13}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v2, v16

    :cond_6
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    move-result-wide v6

    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v11

    if-eqz v11, :cond_7

    move-wide/from16 v11, v16

    goto :goto_2

    :cond_7
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_2
    add-long v11, v19, v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v21

    cmp-long v6, v4, v16

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    if-gez v6, :cond_9

    invoke-static/range {v19 .. v24}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v4

    sub-long v4, v4, v21

    goto :goto_3

    :cond_9
    sub-long v6, v21, v19

    long-to-double v6, v6

    const-wide/high16 v11, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v11

    double-to-long v6, v6

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    const-wide/32 v11, 0x5265c00

    cmp-long v13, v4, v11

    if-lez v13, :cond_a

    const-string v6, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "Window length "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms too long; limiting to 1 day"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v11

    goto :goto_3

    :cond_a
    and-int/lit8 v11, p11, 0x40

    if-nez v11, :cond_b

    cmp-long v11, v4, v6

    if-gez v11, :cond_b

    invoke-virtual {v0, v8}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v11

    if-nez v11, :cond_b

    const-wide/32 v11, 0xb09e9e4

    invoke-static {v8}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-static {v11, v12, v9, v13}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "AlarmManager"

    const-string/jumbo v12, "Window length "

    const-string/jumbo v13, "ms too short; expanding to "

    invoke-static {v12, v4, v5, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    :cond_b
    :goto_3
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    if-lt v7, v11, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reached for uid: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", callingPackage: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "AlarmManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x3e8

    if-ne v8, v10, :cond_d

    const-string v10, "234441463"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11, v7}, [Ljava/lang/Object;

    move-result-object v7

    const v10, 0x534e4554

    invoke-static {v10, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_c
    move-object/from16 v15, p8

    move-object/from16 v14, p9

    move-object/from16 v18, p10

    move-object/from16 v17, p12

    move-object/from16 v13, p13

    move-object/from16 v16, p16

    move-object/from16 v20, v6

    move-object/from16 v19, v9

    move-wide/from16 v11, v23

    move-wide v9, v4

    move/from16 v4, p17

    move-wide v5, v2

    move v3, v8

    move-wide/from16 v7, v21

    move/from16 v2, p11

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object/from16 v20, v6

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    :try_start_2
    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v20

    return-void

    :catchall_1
    move-exception v0

    :goto_5
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid alarm type "

    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v11, p9

    const-string v2, "BT="

    const-string v4, "AlarmManager"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez p13, :cond_7

    if-eq v1, v6, :cond_0

    if-nez v1, :cond_7

    :cond_0
    and-int/lit8 v8, p2, 0x10

    if-nez v8, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    if-eqz p15, :cond_1

    :try_start_0
    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move v3, v1

    goto/16 :goto_6

    :cond_1
    move-object/from16 v10, p19

    :goto_0
    if-eqz p15, :cond_2

    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v13

    goto :goto_1

    :cond_2
    move/from16 v13, p3

    :goto_1
    if-eqz p15, :cond_3

    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual/range {p15 .. p15}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    :cond_3
    move-object v14, v7

    :goto_2
    sget-boolean v15, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v15, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v15, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v3, 0x18

    invoke-virtual {v15, v3, v10, v7, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x17

    invoke-virtual {v15, v3, v10, v7, v14}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    if-ne v1, v6, :cond_4

    const/4 v3, 0x3

    goto :goto_3

    :cond_4
    if-nez v1, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    :try_start_1
    iget-object v15, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", AT="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", WE="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, p7, v17

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", WL="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    move v3, v1

    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_5
    const/4 v5, 0x1

    goto :goto_8

    :catch_1
    :goto_6
    :try_start_2
    const-string/jumbo v5, "alarmException"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :goto_7
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    move v3, v1

    goto :goto_5

    :goto_8
    new-instance v2, Lcom/android/server/alarm/Alarm;

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v9, p7

    move-wide/from16 v13, p11

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move-object/from16 v23, v4

    move-object/from16 v22, v7

    move/from16 v4, p2

    move-wide/from16 v7, p5

    invoke-direct/range {v2 .. v21}, Lcom/android/server/alarm/Alarm;-><init>(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v2

    move-object/from16 v2, v17

    if-eq v3, v1, :cond_8

    iput v1, v4, Lcom/android/server/alarm/Alarm;->origType:I

    :cond_8
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move-object/from16 v6, p19

    invoke-virtual {v1, v5, v6}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Not setting alarm from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -- package not allowed to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v5}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mGmsManager:Lcom/android/server/alarm/GmsAlarmManager;

    const/4 v6, 0x4

    const/4 v7, 0x6

    if-eqz v5, :cond_15

    if-nez p13, :cond_15

    iget v8, v5, Lcom/android/server/alarm/GmsAlarmManager;->mPolicyControlSwitch:I

    const/4 v9, 0x1

    and-int/2addr v8, v9

    if-nez v8, :cond_a

    goto/16 :goto_e

    :cond_a
    iget-boolean v8, v5, Lcom/android/server/alarm/GmsAlarmManager;->isChinaMode:Z

    if-nez v8, :cond_b

    iget-boolean v8, v5, Lcom/android/server/alarm/GmsAlarmManager;->isHongKongMode:Z

    if-eqz v8, :cond_16

    :cond_b
    iget v8, v5, Lcom/android/server/alarm/GmsAlarmManager;->mGmsPkgUid:I

    const/4 v10, -0x1

    if-eq v8, v10, :cond_16

    iget-object v8, v4, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v8, :cond_16

    iget-boolean v10, v5, Lcom/android/server/alarm/GmsAlarmManager;->mUserEnable:Z

    if-nez v10, :cond_c

    goto/16 :goto_e

    :cond_c
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "com.google.android.gms"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {v8}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_d

    move-object/from16 v8, v22

    goto :goto_9

    :cond_d
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    :goto_9
    if-eqz v8, :cond_f

    const-string/jumbo v10, "com.google.android.gms.gcm."

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string/jumbo v10, "com.google.android.intent.action.GCM_RECONNECT"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    const/16 v8, 0xc

    goto :goto_d

    :cond_f
    iget-object v8, v4, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-static {v8}, Lcom/android/server/alarm/GmsAlarmManager;->getInfoFromPendingIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_10

    move-object/from16 v10, v22

    goto :goto_a

    :cond_10
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    :goto_a
    if-eqz v10, :cond_11

    const-string v11, "CONTEXT_MANAGER_ALARM_WAKEUP_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string/jumbo v11, "com.google.android.gms.common.receiver.LOG_CORE_ANALYTICS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string/jumbo v11, "com.google.android.gms.matchstick.register_intent_action"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string/jumbo v11, "com.google.android.gms.reminders.notification.ACTION_REFRESH_TIME_REMINDERS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    const-string/jumbo v11, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    goto :goto_c

    :cond_11
    if-nez v8, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v22, v8

    :goto_b
    if-eqz v22, :cond_16

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "com.google.android.gms.checkin.EventLogServiceReceiver"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    :cond_13
    :goto_c
    move v8, v7

    :goto_d
    iget-boolean v5, v5, Lcom/android/server/alarm/GmsAlarmManager;->mGoogleNetWork:Z

    if-nez v5, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, v4, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    sub-long/2addr v12, v10

    int-to-long v14, v8

    const-wide/32 v16, 0x36ee80

    mul-long v14, v14, v16

    cmp-long v5, v12, v14

    if-lez v5, :cond_14

    goto :goto_e

    :cond_14
    add-long/2addr v10, v14

    invoke-virtual {v4, v6, v10, v11}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    goto :goto_e

    :cond_15
    const/4 v9, 0x1

    :cond_16
    :goto_e
    const/4 v5, 0x0

    move-object/from16 v8, p14

    invoke-virtual {v0, v2, v8, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    iget v8, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v8, v2}, Lcom/android/server/alarm/AlarmManagerService;->increment(ILandroid/util/SparseIntArray;)V

    invoke-virtual {v0, v4}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    const-wide/16 v10, 0x0

    cmp-long v0, p9, v10

    if-nez v0, :cond_17

    move v0, v9

    goto :goto_f

    :cond_17
    move v0, v5

    :goto_f
    iget v2, v4, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_18

    move v2, v9

    goto :goto_10

    :cond_18
    move v2, v5

    :goto_10
    iget-object v8, v4, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v8, :cond_19

    move v8, v9

    goto :goto_11

    :cond_19
    move v8, v5

    :goto_11
    iget-wide v12, v4, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    cmp-long v10, v12, v10

    if-eqz v10, :cond_1a

    move v10, v9

    goto :goto_12

    :cond_1a
    move v10, v5

    :goto_12
    iget v11, v4, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    if-eqz v11, :cond_1f

    if-eq v11, v9, :cond_1e

    const/4 v9, 0x2

    if-eq v11, v9, :cond_1d

    const/4 v9, 0x3

    if-eq v11, v9, :cond_1c

    const/4 v9, 0x5

    if-eq v11, v6, :cond_1f

    if-eq v11, v9, :cond_1b

    move v9, v5

    goto :goto_13

    :cond_1b
    move v9, v7

    goto :goto_13

    :cond_1c
    move v9, v6

    goto :goto_13

    :cond_1d
    const/4 v9, 0x3

    goto :goto_13

    :cond_1e
    const/4 v9, 0x2

    :cond_1f
    :goto_13
    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v3

    invoke-static {v1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v1

    iget-boolean v5, v4, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v4, v4, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v6, 0x170

    move/from16 p2, v0

    move/from16 p9, v1

    move/from16 p4, v2

    move/from16 p8, v3

    move/from16 p1, v4

    move/from16 p3, v5

    move/from16 p0, v6

    move/from16 p5, v8

    move/from16 p7, v9

    move/from16 p6, v10

    invoke-static/range {p0 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZZZZZIZI)V

    return-void
.end method

.method public final setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .locals 9

    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v1, p1, :cond_0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setImplLocked: idle until changed from "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AlarmManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/android/server/alarm/LazyAlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    :cond_0
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, v7}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_3

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    :cond_3
    :goto_1
    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_4

    iget-wide v3, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-wide v5, p1, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_9

    :cond_4
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/alarm/Alarm;

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v7, v8, :cond_5

    invoke-virtual {p0, v7}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v1

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    or-int/2addr v5, v7

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_7
    if-eqz v5, :cond_9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v3, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/alarm/Alarm;

    invoke-virtual {p0, v6}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v6

    or-int/2addr v2, v6

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_9
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_e

    const/16 v0, 0x3e8

    const-class v2, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    if-eq v1, v0, :cond_d

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    const-string/jumbo v7, "com.sec.android.app.clockpackage"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v1, v0, :cond_c

    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v7, 0x1e

    invoke-direct {v0, v2, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_6

    :cond_c
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v7, 0xa

    invoke-direct {v0, v2, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    goto :goto_6

    :cond_d
    :goto_5
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const/16 v7, 0x32

    invoke-direct {v0, v2, v7}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    :goto_6
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAdditionHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/alarm/AlarmManagerService$AddedAlarm;-><init>(Lcom/android/server/alarm/Alarm;JJ)V

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v0, p1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v0, v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_f

    rsub-int/lit8 v0, v0, -0x1

    :cond_f
    iget-object p1, p1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method public final setLocked(IJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v1, v0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_2

    cmp-long p0, p2, v3

    if-gez p0, :cond_0

    move-wide v6, v3

    move-wide v4, v6

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x3e8

    div-long v5, p2, v3

    rem-long/2addr p2, v3

    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p2

    move-wide v8, v5

    move-wide v6, v3

    move-wide v4, v8

    goto :goto_0

    :goto_1
    invoke-static/range {v1 .. v7}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    move-result p0

    move-wide p1, v6

    move-wide v5, v4

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string/jumbo p3, "Unable to set kernel alarm, now="

    const-string v2, " type="

    invoke-static {v3, p3, v0, v1, v2}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " @ ("

    const-string v1, ","

    invoke-static {p3, v0, v5, v6, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "), ret = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {p1}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    const-string/jumbo p1, "android.intent.action.TIMEZONE_CHANGED"

    const/high16 p3, 0x25200000

    invoke-static {p3, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo p3, "time-zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v2

    const-string v6, ""

    const/4 v4, 0x0

    const/16 v5, 0xcc

    invoke-virtual/range {v1 .. v6}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {p0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3, p1, v0, p2, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :cond_1
    if-ltz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "setWorkSource error : "

    const-string p2, "AlarmManager"

    invoke-static {p0, p1, p2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldAddWakeupForUser(I)Z
    .locals 2

    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final triggerAlarmsLocked(JLjava/util/ArrayList;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/16 v20, 0x0

    move/from16 v6, v20

    move v7, v6

    :goto_0
    if-ltz v4, :cond_3

    iget-object v8, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/Alarm;

    iget-wide v9, v8, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v9, v9, p1

    if-lez v9, :cond_0

    goto :goto_1

    :cond_0
    iget-object v9, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v9, v8, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v9, :cond_1

    iget-wide v9, v8, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    const-wide/16 v11, 0x1f4

    add-long v11, p1, v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_1

    move v6, v5

    :cond_1
    iget v8, v8, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v8, v5

    if-eqz v8, :cond_2

    move v7, v5

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v5

    :goto_2
    if-ltz v8, :cond_6

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/alarm/Alarm;

    if-nez v6, :cond_4

    iget-boolean v10, v9, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v7, :cond_5

    iget v10, v9, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/2addr v10, v5

    if-nez v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_6
    iget-object v6, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, v20

    move/from16 v21, v3

    :goto_4
    if-ge v3, v2, :cond_13

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v22, v3, 0x1

    move-object v3, v6

    check-cast v3, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v3}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v6

    iget v7, v3, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-static {v3}, Lcom/android/server/alarm/AlarmManagerService;->isMARsRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Deferring alarm "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " due to freecess. [uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "AlarmManager"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move/from16 v3, v22

    goto :goto_4

    :cond_a
    iput v5, v3, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v3, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v6, :cond_b

    move v6, v5

    goto :goto_6

    :cond_b
    move/from16 v6, v20

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x84d2

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_c
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v6, v3, :cond_e

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v7, v6, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move/from16 v9, v20

    move v10, v9

    :goto_7
    if-ge v10, v8, :cond_d

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v11}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v11

    or-int/2addr v9, v11

    goto :goto_7

    :cond_d
    if-eqz v9, :cond_e

    iget-object v6, v6, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/alarm/LazyAlarmStore;->sDecreasingTimeOrder:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_e
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v6, v3, :cond_f

    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v6}, Lcom/android/server/alarm/LazyAlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    :cond_f
    iget-wide v11, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v6, v11, v6

    if-lez v6, :cond_10

    iget v6, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v6, v6

    iget-object v8, v3, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v8, v8, v20

    sub-long v13, p1, v8

    div-long/2addr v13, v11

    add-long/2addr v13, v6

    long-to-int v6, v13

    iput v6, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v6, v6

    mul-long v13, v6, v11

    add-long v7, v8, v13

    move-wide v9, v7

    move-wide/from16 v7, p1

    invoke-static/range {v7 .. v12}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v11

    move-wide v7, v9

    iget-wide v9, v3, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long/2addr v9, v13

    sub-long/2addr v11, v7

    iget-object v15, v3, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v13, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    iget v14, v3, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v5, v3, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    iget v1, v3, Lcom/android/server/alarm/Alarm;->type:I

    move-object/from16 v19, v5

    move-object/from16 v17, v6

    move-wide v5, v9

    move-wide v9, v11

    iget-wide v11, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move/from16 v18, v14

    const/4 v14, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move/from16 v24, v2

    iget v2, v3, Lcom/android/server/alarm/Alarm;->flags:I

    const/16 v25, 0x1

    const/16 v16, 0x0

    move-object/from16 v26, v4

    const/4 v4, -0x1

    move-object/from16 v27, v3

    move/from16 v3, v23

    invoke-virtual/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IIIIJJJJLandroid/app/AlarmManager$AlarmClockInfo;Landroid/app/IAlarmListener;Landroid/app/PendingIntent;Landroid/os/Bundle;Landroid/os/WorkSource;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v27

    goto :goto_8

    :cond_10
    move/from16 v24, v2

    move-object/from16 v26, v4

    move-object v6, v3

    :goto_8
    iget-boolean v1, v6, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v1, :cond_11

    add-int/lit8 v21, v21, 0x1

    :cond_11
    iget-object v1, v6, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/alarm/SamsungAlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/SamsungAlarmManagerService;->mHandler:Lcom/android/server/alarm/SamsungAlarmManagerService$SamsungAlarmHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iput-boolean v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_9

    :cond_12
    const/4 v2, 0x1

    :goto_9
    move-object/from16 v1, p3

    move v5, v2

    move/from16 v3, v22

    move/from16 v2, v24

    move-object/from16 v4, v26

    goto/16 :goto_4

    :cond_13
    invoke-static/range {p3 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return v21
.end method

.method public final updateNextAlarmClockLocked()V
    .locals 12

    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v0

    :cond_1
    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    iget-object v6, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v6, :cond_1

    iget v6, v5, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v5, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v5, v5, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v7}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-gtz v5, :cond_1

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_5

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_7

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public final updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 10

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->shouldAddWakeupForUser(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    move-result-wide v1

    iget-object v3, p2, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p2, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    sget-wide v5, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    sub-long/2addr v1, v5

    sget-object v5, Lcom/android/server/alarm/UserWakeupStore;->sRandom:Ljava/util/Random;

    sget-wide v6, Lcom/android/server/alarm/UserWakeupStore;->USER_START_TIME_DEVIATION_LIMIT_MS:J

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Ljava/util/Random;->nextLong(J)J

    move-result-wide v8

    sub-long/2addr v8, v6

    add-long/2addr v1, v8

    invoke-virtual {v4, p1, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p2, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    iget-boolean p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartUserBeforeScheduledAlarms:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/app/ActivityManagerInternal;->isUserRunning(II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mUserWakeupStore:Lcom/android/server/alarm/UserWakeupStore;

    invoke-virtual {p2, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
