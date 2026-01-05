.class public final Lcom/android/server/alarm/AlarmManagerService$4;
.super Landroid/app/IAlarmManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final canScheduleExactAlarms(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v2

    if-ne v0, v2, :cond_3

    invoke-static {v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Uid "

    const-string v2, " cannot query canScheduleExactAlarms for package "

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/jobs/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    array-length v3, v2

    if-lez v3, :cond_1a

    const-string v3, "--proto"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v1, p1

    invoke-direct {v6, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide v11, 0x10300000001L

    invoke-virtual {v6, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000002L

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v4, 0x10300000003L

    invoke-virtual {v6, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    const-wide v3, 0x10300000004L

    invoke-virtual {v6, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    iget-wide v13, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    invoke-virtual {v6, v7, v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    const-wide v11, 0x10300000007L

    invoke-virtual {v6, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    const-wide v11, 0x10300000003L

    invoke-virtual {v6, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WHITELIST_DURATION:J

    const-wide v11, 0x10300000006L

    invoke-virtual {v6, v11, v12, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v1, :cond_1

    const-wide v3, 0x10b00000006L

    invoke-virtual {v1, v6, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_1
    :goto_0
    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v1, :cond_2

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v3, v9, v3

    const-wide v7, 0x10300000008L

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide v7, 0x10300000009L

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v3, v9, v3

    const-wide v7, 0x1030000000aL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v3, v9, v3

    const-wide v7, 0x1030000000bL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v3, v9

    const-wide v7, 0x1030000000cL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v3, v9

    const-wide v7, 0x1030000000dL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v3, v9, v3

    const-wide v7, 0x1030000000eL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v3, v9, v3

    const-wide v7, 0x1030000000fL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    const-wide v3, 0x10300000010L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_4

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-wide v11, 0x10500000001L

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    goto :goto_4

    :cond_5
    const-wide/16 v4, 0x0

    :goto_4
    iget-object v7, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    const-wide v13, 0x20b00000012L

    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-virtual {v6, v11, v12, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10800000002L

    invoke-virtual {v6, v11, v12, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v11, 0x10300000003L

    invoke-virtual {v6, v11, v12, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v6, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_3

    :cond_6
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    iget-object v1, v1, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    const-wide v7, 0x20b0000002aL

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_6
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_8

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v13, v5, 0x1

    move-object v5, v7

    check-cast v5, Lcom/android/server/alarm/Alarm;

    const-wide v7, 0x20b00000014L

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    move v5, v13

    goto :goto_7

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v5, :cond_a

    const-wide v7, 0x10b00000015L

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    :cond_a
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v5, :cond_b

    const-wide v7, 0x10b00000017L

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    :cond_b
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_c

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/Alarm;

    const-wide v7, 0x20b00000018L

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    goto :goto_8

    :cond_c
    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    const-wide v3, 0x10500000019L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    const-wide v7, 0x1030000001aL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    const-wide v7, 0x1030000001bL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    const-wide v7, 0x1030000001cL

    invoke-virtual {v6, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    const-wide v3, 0x1050000001dL

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    const-wide v3, 0x1050000001eL

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    const-wide v3, 0x1050000001fL

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    const-wide v3, 0x10500000020L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    const-wide v3, 0x10500000021L

    invoke-virtual {v6, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_d

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    invoke-virtual {v5, v6}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_9

    :cond_d
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v1, v6, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const/16 v1, 0xa

    new-array v3, v1, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$5;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_a
    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_14

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    const/4 v9, 0x0

    :goto_b
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_13

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    const/4 v13, 0x0

    :goto_c
    iget-object v14, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v13, v14, :cond_12

    iget-object v14, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-lez v7, :cond_e

    const/4 v15, 0x0

    invoke-static {v3, v15, v7, v14, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v16

    move/from16 v15, v16

    goto :goto_d

    :cond_e
    const/4 v15, 0x0

    :goto_d
    if-gez v15, :cond_f

    neg-int v15, v15

    add-int/lit8 v15, v15, -0x1

    :cond_f
    if-ge v15, v1, :cond_11

    rsub-int/lit8 v11, v15, 0x9

    if-lez v11, :cond_10

    add-int/lit8 v12, v15, 0x1

    invoke-static {v3, v15, v3, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    aput-object v14, v3, v15

    if-ge v7, v1, :cond_11

    add-int/lit8 v7, v7, 0x1

    :cond_11
    add-int/lit8 v13, v13, 0x1

    const-wide v11, 0x10500000001L

    goto :goto_c

    :cond_12
    add-int/lit8 v9, v9, 0x1

    const-wide v11, 0x10500000001L

    goto :goto_b

    :cond_13
    add-int/lit8 v5, v5, 0x1

    const-wide v11, 0x10500000001L

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v7, :cond_15

    const-wide v8, 0x20b00000026L

    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    aget-object v5, v3, v1

    iget-object v10, v5, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v6, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, v5, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    const-wide v13, 0x10900000002L

    invoke-virtual {v6, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v13, 0x10b00000003L

    invoke-virtual {v5, v6, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_f
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_19

    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_18

    const-wide v8, 0x20b00000027L

    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    const-wide v11, 0x10b00000001L

    invoke-virtual {v10, v6, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_11
    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_16

    iget-object v12, v10, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_16
    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_12
    if-ge v11, v10, :cond_17

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    const-wide v13, 0x20b00000002L

    invoke-virtual {v12, v6, v13, v14}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_12

    :cond_17
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :goto_13
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1a
    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance v2, Landroid/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v1, v3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->dumpImpl(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final getConfigVersion()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->getConfigVersion_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$Constants;->mVersion:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 9

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string/jumbo v7, "getNextAlarmClock"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getNextAlarmClocks(I)Ljava/util/List;
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    if-ne v0, v2, :cond_3

    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const-string/jumbo v9, "getNextAlarmClock"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v6, p1

    invoke-virtual/range {v3 .. v10}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/LazyAlarmStore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/alarm/LazyAlarmStore;->mAlarms:Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, p0, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/alarm/Alarm;

    iget-object v5, v4, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v4, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "Permission Denial : getNextAlarmClocks from pid="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlarmManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getNextWakeFromIdleTime()J
    .locals 3

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz p0, :cond_0

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final hasScheduleExactAlarm(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string/jumbo v3, "hasScheduleExactAlarm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result p2

    if-eq v0, p2, :cond_2

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p2, "Uid "

    const-string v1, " cannot query hasScheduleExactAlarm for package "

    invoke-static {v0, p2, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-lez p2, :cond_3

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const-string p0, "AlarmManager"

    const-string/jumbo p1, "remove() with no intent or listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v1, 0x1

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

.method public final removeAll(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const-string p0, "AlarmManager"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to remove all alarms from the system uid package: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v2, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(IILjava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(ILjava/util/function/Predicate;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Package "

    const-string v2, " does not belong to the calling uid "

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 22

    move-object/from16 v1, p0

    const/4 v13, 0x2

    const-string/jumbo v15, "alarmException: "

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    move-object/from16 v11, p1

    move/from16 v3, p2

    move-wide/from16 v5, p3

    if-eqz v0, :cond_1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move v12, v2

    const/16 v16, 0x4

    move-object v2, v0

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/alarm/AppSyncWrapper;->isAdjustableAlarm(IIJJJLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mAppSync:Lcom/android/server/alarm/AppSyncWrapper;

    invoke-virtual {v0}, Lcom/android/server/alarm/AppSyncWrapper;->getWindowLength()J

    move-result-wide v7

    const-string v0, "AppSyncInfo"

    const-string/jumbo v2, "Sync window "

    const-string v9, " --->> "

    move-object/from16 v17, v15

    const/4 v10, 0x1

    move-wide/from16 v14, p5

    invoke-static {v2, v14, v15, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " for alarm by <"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ">."

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :goto_0
    move-object/from16 v17, v15

    const/4 v10, 0x1

    move-wide/from16 v14, p5

    goto :goto_1

    :cond_1
    move v12, v2

    const/16 v16, 0x4

    goto :goto_0

    :goto_1
    move-wide v7, v14

    :goto_2
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v14, 0x0

    invoke-virtual {v0, v11, v14, v15, v12}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v4, v0, :cond_24

    cmp-long v0, p7, v14

    if-eqz v0, :cond_3

    if-nez p11, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    if-eqz p13, :cond_4

    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    move/from16 v18, v10

    const-string v10, "AlarmManager.set"

    invoke-virtual {v0, v2, v9, v4, v10}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4

    :cond_4
    move/from16 v18, v10

    :goto_4
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_6

    const/16 v0, 0x3e8

    if-eq v4, v0, :cond_5

    and-int/lit8 v0, p9, -0x11

    move v2, v0

    goto :goto_5

    :cond_5
    move/from16 v2, p9

    move-wide v7, v14

    goto :goto_5

    :cond_6
    move/from16 v2, p9

    :goto_5
    and-int/lit8 v0, v2, 0x10

    const/4 v9, 0x0

    if-nez v0, :cond_7

    if-nez p14, :cond_7

    cmp-long v0, v7, v14

    if-nez v0, :cond_7

    if-eq v3, v13, :cond_8

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v17, v2

    move/from16 v21, v13

    move-wide/from16 p5, v14

    goto/16 :goto_d

    :cond_8
    :goto_6
    if-eqz p10, :cond_9

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_7

    :cond_9
    move-object v10, v11

    :goto_7
    if-eqz p10, :cond_b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v19

    :try_start_0
    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    move/from16 v21, v13

    goto :goto_9

    :cond_a
    move-object v0, v9

    :goto_8
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v21, v13

    move-wide/from16 p5, v14

    goto :goto_c

    :goto_9
    :try_start_1
    const-string v13, "AlarmManager"

    move-wide/from16 p5, v14

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    :goto_a
    invoke-static/range {v19 .. v20}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_b
    move/from16 v21, v13

    move-wide/from16 p5, v14

    :goto_b
    move-object v0, v9

    :goto_c
    sget-boolean v13, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    sget-object v13, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v13, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    const/16 v14, 0x19

    invoke-virtual {v13, v14, v10, v9, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    iget-object v13, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v13, v3, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(IJ)J

    move-result-wide v13

    iget-object v15, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v15, v15, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v13, v13, v19

    const-wide/16 v19, 0x2

    div-long v13, v13, v19

    cmp-long v15, v13, p5

    if-lez v15, :cond_c

    sub-long v7, v5, v13

    const-string v15, "AlarmManager"

    const-string/jumbo v9, "force change alarm method to setWindow() callingUid="

    move/from16 v17, v2

    const-string v2, ", sourcePackage="

    const-string v3, ", action="

    invoke-static {v4, v9, v2, v10, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", origTriggerAtTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", triggerAtTime="

    const-string v3, ", windowLength="

    invoke-static {v2, v0, v7, v8, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v2, v13, v14, v15}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    move-wide v2, v7

    move-wide v7, v13

    goto :goto_e

    :cond_c
    move/from16 v17, v2

    :goto_d
    move-wide v2, v5

    :goto_e
    and-int/lit8 v0, v17, -0x2b

    if-eqz p14, :cond_d

    or-int/lit8 v0, v0, 0x2

    move-wide/from16 v7, p5

    goto :goto_10

    :cond_d
    if-nez p13, :cond_f

    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v5, :cond_f

    iget-object v6, v5, Lcom/android/server/AppStateTrackerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v5, v5, Lcom/android/server/AppStateTrackerImpl;->mPowerExemptUserAppIds:[I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v5, v9}, Lcom/android/internal/util/jobs/ArrayUtils;->contains([II)Z

    move-result v5

    monitor-exit v6

    if-eqz v5, :cond_f

    goto :goto_f

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_e
    :goto_f
    or-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, -0x45

    :cond_f
    :goto_10
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x0

    if-eqz v5, :cond_10

    move/from16 v5, v18

    goto :goto_11

    :cond_10
    move v5, v6

    :goto_11
    cmp-long v9, v7, p5

    if-nez v9, :cond_11

    move/from16 v9, v18

    goto :goto_12

    :cond_11
    move v9, v6

    :goto_12
    and-int/lit8 v10, v0, 0x40

    const/4 v13, -0x1

    if-eqz v10, :cond_13

    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "android.permission.SCHEDULE_PRIORITIZED_ALARM"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    const-string v12, "AlarmManager.setPrioritized"

    invoke-virtual {v5, v6, v10, v4, v12}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    and-int/lit8 v0, v0, -0x5

    if-eqz v9, :cond_12

    const/4 v13, 0x5

    :cond_12
    move/from16 v17, v13

    const/16 v16, 0x0

    goto/16 :goto_1a

    :cond_13
    if-nez v9, :cond_14

    if-eqz v5, :cond_12

    :cond_14
    invoke-static {v12, v11}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    if-nez p11, :cond_15

    xor-int/lit8 v10, v9, 0x1

    move v12, v13

    move v13, v9

    goto :goto_13

    :cond_15
    move v10, v5

    if-eqz v9, :cond_16

    move v13, v6

    move/from16 v12, v16

    goto :goto_13

    :cond_16
    move v12, v13

    move v13, v6

    :goto_13
    if-eqz v9, :cond_18

    if-eqz p14, :cond_17

    iget-object v14, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v14, v14, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    goto :goto_16

    :cond_17
    iget-object v14, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v14, v14, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    goto :goto_16

    :cond_18
    iget-object v14, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v14, v14, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v14

    goto :goto_16

    :cond_19
    if-nez v5, :cond_1b

    if-eqz p14, :cond_1a

    goto :goto_14

    :cond_1a
    const/4 v14, 0x0

    goto :goto_15

    :cond_1b
    :goto_14
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v10, v10, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    move-object v14, v10

    :goto_15
    move v10, v5

    if-eqz v9, :cond_1c

    move v13, v6

    move/from16 v12, v21

    goto :goto_16

    :cond_1c
    move v12, v13

    move v13, v6

    :goto_16
    if-eqz v13, :cond_21

    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v12, v4, v11}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1d

    const/4 v6, 0x3

    :goto_17
    move v5, v10

    goto :goto_19

    :cond_1d
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v12, v4, v11}, Lcom/android/server/alarm/AlarmManagerService;->hasScheduleExactAlarmInternal(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    goto :goto_17

    :cond_1e
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v6, v4}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v6

    if-eqz v6, :cond_20

    if-eqz v5, :cond_1f

    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_18

    :cond_1f
    const/4 v6, 0x0

    :goto_18
    move-object v14, v6

    move/from16 v6, v18

    goto :goto_19

    :cond_20
    const-string v0, "Caller "

    const-string v1, " needs to hold android.permission.SCHEDULE_EXACT_ALARM or android.permission.USE_EXACT_ALARM to set exact alarms."

    invoke-static {v0, v11, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    move v5, v10

    move v6, v12

    :goto_19
    if-eqz v5, :cond_22

    and-int/lit8 v0, v0, -0x5

    or-int/lit8 v0, v0, 0x20

    :cond_22
    move/from16 v17, v6

    move-object/from16 v16, v14

    :goto_1a
    if-eqz v9, :cond_23

    or-int/lit8 v0, v0, 0x1

    :cond_23
    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move v14, v4

    move-wide v4, v7

    move-object v15, v11

    move-wide/from16 v6, p7

    move-object/from16 v8, p10

    move v11, v0

    move-object v0, v1

    move/from16 v1, p2

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/alarm/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Package "

    const-string v2, " does not belong to the calling uid "

    invoke-static {v4, v1, v11, v2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setAutoPowerUp(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->setAutoPowerUp_enforcePermission()V

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-static {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smsetBootAlarm(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setTime(J)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->setTime_enforcePermission()V

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x4e1f

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string/jumbo v0, "date_time_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AlarmManager"

    const-string/jumbo v1, "Not setting time since EDM doesn\'t allow date & time change."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const-string v0, "AlarmManager.setTime() called"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x64

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(ILjava/lang/String;J)V

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setTimeZone(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/IAlarmManager$Stub;->setTimeZone_enforcePermission()V

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v0

    const/16 v1, 0x4e1f

    if-gt v0, v1, :cond_0

    :try_start_0
    const-string/jumbo v0, "date_time_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/datetime/IDateTimePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/datetime/IDateTimePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/app/IAlarmManager$Stub;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/datetime/IDateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    :catch_0
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const-string v2, "AlarmManager.setTimeZone() called"

    const/16 v3, 0x64

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method
