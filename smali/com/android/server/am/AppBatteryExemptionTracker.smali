.class public final Lcom/android/server/am/AppBatteryExemptionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mUidPackageStates:Lcom/android/server/am/UidProcessMap;


# virtual methods
.method public final createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 2

    new-instance p2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    const-string v0, ""

    const/4 v1, 0x5

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    return-object p2
.end method

.method public final createAppStateEvents(Lcom/android/server/am/BaseAppStateDurations;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    check-cast p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    new-instance p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateEvents;-><init>(Lcom/android/server/am/BaseAppStateDurations;)V

    return-object p0
.end method

.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final onStateChange(IIJLjava/lang/String;Z)V
    .locals 11

    move-object/from16 v0, p5

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v1, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    iget-boolean v1, v1, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    iget-object v2, v2, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    move v0, v5

    :goto_1
    const/4 v8, 0x1

    if-eqz p6, :cond_5

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v8

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/2addr v9, p2

    if-eqz v9, :cond_3

    move v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    or-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p2, v5, 0x1

    goto :goto_6

    :cond_5
    not-int v9, p2

    and-int/2addr v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v8

    :goto_4
    if-ltz v9, :cond_7

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v10, p2

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_7
    move v5, v8

    :goto_5
    if-nez v0, :cond_8

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_8
    move p2, v5

    :goto_6
    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    if-nez p2, :cond_9

    new-instance p2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    const-string v2, ""

    const/4 v3, 0x5

    invoke-direct {p2, p1, v2, v3, v0}, Lcom/android/server/am/BaseAppStateEvents;-><init>(ILjava/lang/String;ILcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_9
    move-object v2, p2

    move-wide v4, p3

    move/from16 v3, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V

    :cond_a
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onSystemReady()V
    .locals 5

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Lcom/android/server/am/AppRestrictionController;->mAppStateTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BaseAppStateTracker;

    iget-object v4, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
