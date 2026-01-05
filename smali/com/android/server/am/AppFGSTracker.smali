.class public final Lcom/android/server/am/AppFGSTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;


# instance fields
.field public final mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

.field public final mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

.field final mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

.field public final mProcessObserver:Lcom/android/server/am/AppFGSTracker$1;

.field public final mTmpPkgDurations:Landroid/util/ArrayMap;


# direct methods
.method public static -$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-object v1, v0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v3, v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    iget-wide v5, v2, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    sub-long v5, v9, v5

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    iget-object v8, v8, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    :goto_0
    if-ltz v13, :cond_5

    invoke-virtual {v8, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v11, v16

    :goto_1
    if-ltz v11, :cond_4

    invoke-virtual {v15, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    sget v14, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {v12, v14}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v19

    if-eqz v19, :cond_0

    move-wide/from16 v19, v3

    iget-boolean v3, v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    if-nez v3, :cond_1

    invoke-virtual {v0, v12, v9, v10}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v3

    cmp-long v21, v3, v19

    if-ltz v21, :cond_1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, v12, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_0
    move-wide/from16 v19, v3

    :cond_1
    :goto_2
    invoke-virtual {v12, v14}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object v4, v12, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v12, v12, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v14, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v14, :cond_2

    goto :goto_3

    :cond_2
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v21, v8

    const-string/jumbo v8, "pkgName"

    invoke-virtual {v14, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "uid"

    invoke-virtual {v14, v4, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    const/16 v8, 0xf

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, v3, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v21, v8

    :goto_4
    add-int/lit8 v11, v11, -0x1

    move-wide/from16 v3, v19

    move-object/from16 v8, v21

    const/4 v14, 0x1

    goto :goto_1

    :cond_4
    move-wide/from16 v19, v3

    move-object/from16 v21, v8

    add-int/lit8 v13, v13, -0x1

    const-wide/16 v11, 0x0

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_18

    new-array v11, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    new-instance v4, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/server/am/AppFGSTracker$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    invoke-static {v11, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    move v13, v3

    :goto_6
    if-ltz v13, :cond_17

    aget-object v3, v11, v13

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v8, v3, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v4, v3, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget v3, v3, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    move/from16 v33, v13

    :goto_7
    const-wide/16 v25, 0x0

    goto/16 :goto_f

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    iget-wide v6, v2, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    sub-long v14, v25, v6

    move/from16 v33, v13

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move v3, v4

    move-wide/from16 v4, v25

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptMediaPlaybackFGS(IJJLjava/lang/String;)Z

    move-result v6

    move/from16 v20, v3

    move-object/from16 v22, v8

    if-eqz v6, :cond_8

    :goto_8
    goto :goto_7

    :cond_8
    iget-object v3, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v3, Lcom/android/server/am/AppFGSTracker;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v21

    move-object/from16 v19, v3

    move-wide/from16 v25, v4

    invoke-virtual/range {v19 .. v26}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IILjava/lang/String;JJ)J

    move-result-wide v3

    move/from16 v5, v20

    move-object/from16 v8, v22

    const-wide/16 v17, 0x0

    cmp-long v6, v3, v17

    if-lez v6, :cond_9

    iget-wide v6, v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    cmp-long v3, v3, v6

    if-ltz v3, :cond_9

    goto :goto_8

    :cond_9
    iget-object v3, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v3, Lcom/android/server/am/AppFGSTracker;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v21

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppFGSTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v24

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/PowerExemptionManager;->getExemptionReasonForStatsd(I)I

    move-result v28

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v31

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v4, v5}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v32

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v19, 0x1b9

    const/16 v22, 0x0

    const/16 v23, 0x3

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v20, v5

    invoke-static/range {v19 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v4, v4, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsOnLongRunning:Z

    if-nez v4, :cond_a

    goto :goto_8

    :cond_a
    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v4, v4, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgPromptFgsWithNotiOnLongRunning:Z

    if-nez v4, :cond_b

    iget-object v4, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v4, v4, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v6, v4, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    move-result v4

    monitor-exit v6

    if-eqz v4, :cond_b

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_b
    const-string/jumbo v4, "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

    const/high16 v6, 0x1000000

    invoke-static {v6, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v12, 0xc000000

    const/4 v13, 0x0

    invoke-static {v6, v13, v4, v12, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v7, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v7, v7, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v7, v5, v8}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object v7

    if-nez v7, :cond_c

    monitor-exit v6

    move v14, v13

    const-wide/16 v25, 0x0

    goto :goto_e

    :catchall_2
    move-exception v0

    goto/16 :goto_13

    :cond_c
    iget-object v12, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v12, v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez v12, :cond_d

    const-wide/16 v17, 0x0

    :goto_9
    const-wide/16 v25, 0x0

    goto :goto_a

    :cond_d
    const/16 v16, 0x1

    aget-wide v19, v12, v16

    move-wide/from16 v17, v19

    goto :goto_9

    :goto_a
    cmp-long v12, v17, v25

    if-eqz v12, :cond_f

    iget-object v12, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v12, v12, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    move-wide/from16 v19, v14

    iget-wide v13, v12, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgLongFgsNotificationMinIntervalMs:J

    add-long v17, v17, v13

    cmp-long v12, v17, v19

    if-lez v12, :cond_e

    monitor-exit v6

    const/4 v14, 0x0

    goto :goto_e

    :cond_e
    move-wide/from16 v13, v19

    :goto_b
    const/4 v12, 0x1

    goto :goto_c

    :cond_f
    move-wide v13, v14

    goto :goto_b

    :goto_c
    invoke-virtual {v7, v12, v13, v14, v12}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    iget-object v13, v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez v13, :cond_10

    const/4 v14, 0x0

    goto :goto_d

    :cond_10
    aget v14, v13, v12

    :goto_d
    if-gtz v14, :cond_12

    iget v14, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    add-int/lit8 v12, v14, 0x1

    iput v12, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationIDStepper:I

    if-nez v13, :cond_11

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    :cond_11
    iget-object v7, v7, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    const/16 v16, 0x1

    aput v14, v7, v16

    :cond_12
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_e
    if-gtz v14, :cond_13

    :goto_f
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-wide/from16 v23, v9

    move-object/from16 v21, v11

    const/4 v1, 0x1

    goto/16 :goto_12

    :cond_13
    iget-object v6, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v6}, Lcom/android/server/am/AppRestrictionController$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v19

    iget-object v6, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v6, v6, Lcom/android/server/am/AppRestrictionController$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const-wide/32 v22, 0xc8000

    const/16 v20, 0x3e8

    move-object/from16 v24, v8

    invoke-virtual/range {v19 .. v24}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(IIJLjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v12, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const v13, 0x1040988

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_14

    invoke-virtual {v7, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_10

    :cond_14
    move-object v6, v8

    :goto_10
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v15, 0x1040976

    invoke-virtual {v13, v15, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_15

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v8, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    goto :goto_11

    :cond_15
    const/4 v7, 0x0

    :goto_11
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    new-instance v15, Landroid/app/Notification$Builder;

    iget-object v13, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    move-object/from16 v18, v1

    const-string v1, "ABUSIVE_BACKGROUND_APPS"

    invoke-direct {v15, v13, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v13, "com.android.app.abusive_bg_apps"

    invoke-virtual {v15, v13}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v15

    move-object/from16 v19, v2

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v15

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v15, 0x108008a

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v15, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v11

    const v11, 0x106001c

    invoke-virtual {v15, v11}, Landroid/content/Context;->getColor(I)I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v15, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const v11, 0xc1b2508

    move-wide/from16 v23, v9

    const/4 v9, 0x0

    invoke-virtual {v15, v9, v11, v2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v9, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v9, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v9, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const v9, 0x108008a

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v9, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    if-eqz v7, :cond_16

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :cond_16
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget-object v4, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v14, v2, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_12
    add-int/lit8 v13, v33, -0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v11, v21

    move-wide/from16 v9, v23

    goto/16 :goto_6

    :goto_13
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_17
    move-object/from16 v18, v1

    move-wide/from16 v23, v9

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->clear()V

    goto :goto_14

    :cond_18
    move-wide/from16 v23, v9

    :goto_14
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move-wide/from16 v2, v23

    :try_start_4
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_15
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public static -$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-boolean v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, p2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v5, v5, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v5, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v4, p2, p1, v5, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v5, p1, p2, v4}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    :goto_0
    iget-boolean v5, v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    invoke-virtual {v4, v0, v1, p3}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->addEvent(JZ)V

    const/4 p3, 0x0

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    sget v5, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    move v5, p3

    :goto_1
    if-eqz v5, :cond_3

    iput-boolean p3, v4, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    :cond_3
    iput v2, v4, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_6

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppFGSTracker;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController;->mNotificationHelper:Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mBgController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionSettingsLocked(ILjava/lang/String;)Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    aget p3, p1, v6

    :goto_2
    if-lez p3, :cond_5

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_6
    :goto_5
    return-void

    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-boolean v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/AppFGSTracker;->scheduleDurationCheckLocked(J)V

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

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p1, Lcom/android/server/am/UidProcessMap;

    invoke-direct {p1}, Lcom/android/server/am/UidProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mTmpPkgDurations:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/server/am/AppFGSTracker$NotificationListener;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$NotificationListener;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mNotificationListener:Lcom/android/server/am/AppFGSTracker$NotificationListener;

    new-instance p1, Lcom/android/server/am/AppFGSTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$1;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Lcom/android/server/am/AppFGSTracker$1;

    new-instance p1, Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppFGSTracker$MyHandler;-><init>(Lcom/android/server/am/AppFGSTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    const-string/jumbo v3, "bg_fgs_monitor_enabled"

    const/4 v4, 0x1

    const-string/jumbo v5, "bg_fgs_long_running_window"

    const-wide/32 v6, 0x5265c00

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    const-wide/32 p0, 0x44aa200

    iput-wide p0, v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    const-wide/32 p0, 0xdbba00

    iput-wide p0, v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    iput-wide p0, v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    iput-object v0, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    return-void
.end method

.method public static foregroundServiceTypeToIndex(I)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 2

    new-instance v0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v1, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V

    return-object v0
.end method

.method public final createAppStateEvents(Lcom/android/server/am/BaseAppStateDurations;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    check-cast p1, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    new-instance p0, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(Lcom/android/server/am/AppFGSTracker$PackageDurations;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP FOREGROUND SERVICE TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final dumpOthers(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APPS WITH ACTIVE FOREGROUND SERVICES:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    iget-object v1, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "(none)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v3

    :goto_2
    if-ge v9, v8, :cond_1

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v11, 0x2f

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, " notification="

    invoke-virtual {p1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v10}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    move-result v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J
    .locals 8

    iget-object v0, p1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    const-wide/16 v4, 0x0

    if-nez v2, :cond_0

    monitor-exit v1

    return-wide v4

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppFGSTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateDurations;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v4

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    :cond_1
    move-wide v6, p2

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTrackerInfoForStatsd(I)[B
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateDurations;

    const-wide/16 v8, 0x0

    if-nez v0, :cond_0

    monitor-exit v7

    move-wide v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/BaseAppStateEvents;->getEarliest(J)J

    move-result-wide v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    cmp-long v2, v0, v8

    if-nez v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    iget-object v4, v4, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_1
    if-ltz v5, :cond_4

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/AppFGSTracker;->hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    monitor-exit v3

    move v6, v7

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    const-wide p0, 0x10800000001L

    invoke-virtual {v2, p0, p1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide p0, 0x10300000002L

    invoke-virtual {v2, p0, p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p0

    return-object p0

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final hasForegroundServiceNotificationsLocked(ILjava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseBooleanArray;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_2

    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public final onForegroundServiceNotificationUpdated(Ljava/lang/String;IIZ)V
    .locals 1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    if-eqz p4, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onForegroundServiceStateChanged(Ljava/lang/String;IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p0, p4, p3, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final onSystemReady()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, p0}, Landroid/app/ActivityManagerInternal;->addForegroundServiceStateListener(Landroid/app/ActivityManagerInternal$ForegroundServiceStateListener;)V

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mProcessObserver:Lcom/android/server/am/AppFGSTracker$1;

    invoke-virtual {v0, p0}, Landroid/app/ActivityManagerInternal;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    return-void
.end method

.method public final scheduleDurationCheckLocked(J)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    iget-object v0, v0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    sget v7, Lcom/android/server/am/AppFGSTracker$PackageDurations;->DEFAULT_INDEX:I

    invoke-virtual {v6, v7}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-boolean v7, v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;->mIsLongRunning:Z

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v6, p1, p2}, Lcom/android/server/am/AppFGSTracker;->getTotalDurations(Lcom/android/server/am/AppFGSTracker$PackageDurations;J)J

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getServiceStartForegroundTimeout()I

    move-result p1

    int-to-long v4, p1

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-wide v6, p1, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    sub-long/2addr v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, v4

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method
