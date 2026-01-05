.class public abstract Lcom/android/server/am/BaseAppStateDurationsTracker;
.super Lcom/android/server/am/BaseAppStateEventsTracker;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUidStateDurations:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final dumpEventLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/am/BaseAppStateEvents;J)V
    .locals 8

    check-cast p3, Lcom/android/server/am/BaseAppStateDurations;

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    iget v1, p3, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "(bg only)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    "

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateDurations;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurations;

    iget-object v3, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v4, v3

    if-lez v4, :cond_3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget-object v6, v5, v3

    if-eqz v6, :cond_2

    iget-object v7, v0, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    aget-object v7, v7, v4

    invoke-static {v6, v7}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v6

    aput-object v6, v5, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "(fg + bg)"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void

    :cond_4
    :goto_2
    invoke-static {v1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0, p4, p5}, Lcom/android/server/am/BaseAppStateEvents;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method public final getTotalDurationsSince(IIJJ)J
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker;->getUidEventsLocked(I)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    monitor-exit v1

    return-wide p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, p0, p2}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    :cond_1
    move p1, p2

    move-wide p2, p3

    move-wide p4, p5

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getTotalDurationsSince(IILjava/lang/String;JJ)J
    .locals 8

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/android/server/am/BaseAppStateDurations;

    if-nez v2, :cond_0

    const-wide/16 p0, 0x0

    monitor-exit v1

    return-wide p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/server/am/BaseAppStateEventsTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateDurations;)Lcom/android/server/am/BaseAppStateEvents;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateDurations;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStateDurations;->subtract(Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;I)V

    move p3, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p7}, Lcom/android/server/am/BaseAppStateDurations;->getTotalDurationsSince(IJJ)J

    move-result-wide p0

    monitor-exit v1

    return-wide p0

    :cond_1
    move v3, p2

    move-wide v4, p4

    move-wide v6, p6

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

.method public final onUidGone(I)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->onUidProcStateChanged(II)V

    return-void
.end method

.method public final onUidProcStateChanged(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    iget-object v1, v1, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mTopUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v3, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    const-string v4, ""

    invoke-direct {v2, p1, v4, v3}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;)V

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 p0, 0x0

    if-ge p2, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, p0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance p2, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;

    invoke-direct {p2, v3, v4}, Lcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;-><init>(J)V

    invoke-virtual {v2, p1, p2, p0}, Lcom/android/server/am/BaseAppStateDurations;->addEvent(ZLcom/android/server/am/BaseAppStateTimeEvents$BaseTimeEvent;I)V

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUntrackingUidLocked(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker;->reset()V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final trimLocked(J)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->trimLocked(J)V

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$UidStateDurations;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mEvents:[Ljava/util/LinkedList;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/am/BaseAppStateDurations;->trimEvents(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateEvents;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateDurationsTracker;->mUidStateDurations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method
