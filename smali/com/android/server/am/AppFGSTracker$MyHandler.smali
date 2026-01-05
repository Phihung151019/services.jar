.class public final Lcom/android/server/am/AppFGSTracker$MyHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget p0, p1, Landroid/os/Message;->arg2:I

    iget-object v10, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object p1, v3, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p1, v4, v8}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    invoke-virtual {p1, p0, v2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_3

    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v10

    return-void

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/16 v5, 0x8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    monitor-exit v10

    return-void

    :cond_4
    :goto_1
    monitor-exit v10

    return-void

    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    move v3, v1

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p0, p1, Landroid/os/Message;->arg2:I

    iget-object p1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v4, v1, v5}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_a

    invoke-virtual {v4, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-gez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v4, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_6

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_3
    if-ltz v6, :cond_8

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move v2, v3

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_8
    :goto_4
    invoke-virtual {v4, p0, v3}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    if-nez v2, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/16 v2, 0x8

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    :cond_9
    monitor-exit p1

    return-void

    :cond_a
    :goto_5
    monitor-exit p1

    return-void

    :goto_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V

    return-void

    :pswitch_3
    move v3, v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object p0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, v4, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v6, v4, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v6, v5, v9}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_c

    if-nez v6, :cond_b

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iget-object v0, v4, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0, v9, v5, v6}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_c

    :cond_b
    :goto_7
    invoke-virtual {v6, p0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_a

    :cond_c
    if-eqz v6, :cond_11

    invoke-virtual {v6, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_11

    invoke-virtual {v6, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    invoke-virtual {v6, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    if-nez p0, :cond_e

    iget-object p0, v4, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    iget-object v2, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_d

    goto :goto_8

    :cond_d
    iget-object v7, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    if-eqz v7, :cond_e

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_e
    :goto_8
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    sub-int/2addr p0, v3

    :goto_9
    if-ltz p0, :cond_10

    invoke-virtual {v6, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_f

    monitor-exit v1

    goto :goto_b

    :cond_f
    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_10
    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/16 v6, 0x8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    :cond_11
    :goto_a
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_b
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :goto_c
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-boolean v2, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-nez v2, :cond_12

    :goto_d
    return-void

    :cond_12
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v6, v1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    if-nez v6, :cond_13

    new-instance v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    iget-object v7, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v7, v7, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v7, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v6, v1, v0, v7, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :cond_13
    :goto_e
    invoke-virtual {v6, p1, v3, v4}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setForegroundServiceType(IJ)V

    iput v2, v6, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    monitor-exit v5

    return-void

    :goto_f
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1, v2}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IZ)V

    return-void

    :pswitch_6
    move v3, v1

    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1, v3}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IZ)V

    return-void

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
