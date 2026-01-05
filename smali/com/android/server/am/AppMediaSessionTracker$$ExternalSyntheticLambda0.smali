.class public final synthetic Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppMediaSessionTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppMediaSessionTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppMediaSessionTracker;

    return-void
.end method


# virtual methods
.method public final onActiveSessionsChanged(Ljava/util/List;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppMediaSessionTracker;

    const/4 p0, 0x0

    const/4 v7, 0x1

    if-eqz p1, :cond_6

    iget-object v8, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v10

    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, v10, v9}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v2, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    invoke-direct {v1, v10, v9, v2}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    iget-object v2, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, v9, v10, v1}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :goto_1
    invoke-virtual {v1, p0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v1, v7, v2, p0}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    move-object v2, v1

    iget v1, v2, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v5, v2, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    :cond_1
    iget-object v1, v0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v9, v10, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    iget-object p1, p1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v7

    move v9, v1

    :goto_2
    if-ltz v9, :cond_5

    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v7

    move v11, v1

    :goto_3
    if-ltz v11, :cond_4

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-virtual {v1, p0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    iget-object v5, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    move-object v2, v1

    iget v1, v2, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v5, v2, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    :cond_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, v0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->clear()V

    return-void

    :goto_4
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    iget-object p1, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    iget-object v8, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v7

    move v9, v1

    :goto_5
    if-ltz v9, :cond_9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v7

    move v11, v1

    :goto_6
    if-ltz v11, :cond_8

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-virtual {v1, p0}, Lcom/android/server/am/BaseAppStateDurations;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v1, p0, v2, p0}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    move-object v2, v1

    iget v1, v2, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v5, v2, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :cond_7
    :goto_7
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_9
    monitor-exit p1

    return-void

    :goto_8
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
