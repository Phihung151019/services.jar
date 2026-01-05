.class public final Lcom/android/server/am/mars/util/UidStateMgr$1;
.super Landroid/app/IUidObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/util/UidStateMgr;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/UidStateMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidActive(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidIdleList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    if-nez v1, :cond_6

    const v1, 0x186a0

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object v1, v1, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/FreecessPkgStatus;

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v1, :cond_2

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v2, "CalmMode for restart"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(ILjava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    iget-boolean v2, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOnFreezed:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v2, :cond_4

    iget-boolean v1, v1, Lcom/android/server/am/mars/MARsFreezeStateRecord;->isLcdOffFreezed:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string/jumbo v3, "UidActive"

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_6
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onUidCachedChanged(IZ)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    const/4 p2, 0x1

    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isCached:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_1
    iput-boolean p2, p0, Lcom/android/server/am/FreecessPkgStatus;->isCached:Z

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    return-void
.end method

.method public final onUidGone(IZ)V
    .locals 7

    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p2, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->-$$Nest$mremoveFromUidIdleList(Lcom/android/server/am/mars/util/UidStateMgr;I)V

    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p2, p2, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p2, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p2, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-boolean p2, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object p2, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p2, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p2, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/android/server/am/mars/events/Event;

    sget-object v6, Lcom/android/server/am/mars/events/EventType;->UID_STOP:Lcom/android/server/am/mars/events/EventType;

    invoke-direct {v5, v6, v0, v1, v2}, Lcom/android/server/am/mars/events/Event;-><init>(Lcom/android/server/am/mars/events/EventType;Ljava/lang/Integer;J)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v4, 0xfa

    if-le v0, v4, :cond_1

    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p2

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p1

    if-nez p1, :cond_4

    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit p2

    return-void

    :cond_5
    iget-boolean p0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    iget-object p1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_7
    :goto_3
    monitor-exit p2

    return-void

    :goto_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final onUidIdle(IZ)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {p2, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToUidIdleList(I)V

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/UidStateMgr;->addToRunningList(I)V

    return-void
.end method

.method public final onUidProcAdjChanged(II)V
    .locals 0

    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 7

    const/4 p3, 0x3

    if-gt p2, p3, :cond_0

    sget-boolean p3, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p3, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    const-string/jumbo p4, "procstate"

    invoke-virtual {p3, p1, p4}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const/4 p3, 0x4

    if-eq p2, p3, :cond_4

    const/4 p3, 0x5

    if-ne p2, p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p3, p3, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr$1;->this$0:Lcom/android/server/am/mars/util/UidStateMgr;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p4

    if-nez p4, :cond_6

    const/4 p4, 0x0

    goto :goto_3

    :cond_6
    sget-object p5, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p5, p4, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result p4

    :goto_3
    if-eqz p4, :cond_a

    sget-boolean p4, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object p4, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p5, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez p5, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p5, p4, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    monitor-enter p5

    :try_start_0
    iget-object v2, p4, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/events/UnFreezeEvent;

    if-eqz v2, :cond_8

    iget-wide v3, v2, Lcom/android/server/am/mars/events/Event;->time:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-ltz v0, :cond_8

    iput p2, v2, Lcom/android/server/am/mars/events/UnFreezeEvent;->procStateAfterEvent:I

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_8
    :goto_4
    iget-object p4, p4, Lcom/android/server/am/mars/EventRecorder;->mLatestUnfreezeEvent:Landroid/util/ArrayMap;

    invoke-virtual {p4, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_5
    sget-object p3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p3

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-nez p0, :cond_9

    monitor-exit p3

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_9
    iput p2, p0, Lcom/android/server/am/FreecessPkgStatus;->latestProcState:I

    monitor-exit p3

    return-void

    :goto_6
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_7
    :try_start_2
    monitor-exit p5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_a
    return-void
.end method
