.class public final Lcom/android/server/am/mars/util/UidStateMgr;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

.field public final mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method public static -$$Nest$mremoveFromUidIdleList(Lcom/android/server/am/mars/util/UidStateMgr;I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->remove(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p1, v0, p0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget-object p0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x14

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    invoke-virtual {p1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mTopUidList:Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidForegroundList:Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidCached:Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v0, Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidGoneList:Lcom/android/server/am/mars/util/ConcurrentList;

    new-instance v0, Lcom/android/server/am/mars/util/UidStateMgr$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/util/UidStateMgr$1;-><init>(Lcom/android/server/am/mars/util/UidStateMgr;)V

    iput-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidObserver:Landroid/app/IUidObserver;

    return-void
.end method


# virtual methods
.method public final addToRunningList(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    sget-object p0, Lcom/android/server/am/mars/EventRecorder$EventRecorderHolder;->INSTANCE:Lcom/android/server/am/mars/EventRecorder;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/am/mars/EventRecorder;->mFeatureEnable:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/mars/EventRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/android/server/am/mars/events/Event;

    sget-object v5, Lcom/android/server/am/mars/events/EventType;->UID_RUN:Lcom/android/server/am/mars/events/EventType;

    invoke-direct {v4, v5, p1, v0, v1}, Lcom/android/server/am/mars/events/Event;-><init>(Lcom/android/server/am/mars/events/EventType;Ljava/lang/Integer;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/am/mars/EventRecorder;->mPendingWrite:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v3, 0xfa

    if-le p1, v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/mars/EventRecorder;->performWriteAsync(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final addToUidIdleList(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    sget-object p0, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    :try_start_0
    iget-object p1, p1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p1, v0, p0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    invoke-virtual {p1, v0, p0, v2}, Lcom/android/server/am/MARsHandler;->sendDeepSleepWithDelayMsg(IILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public final isUidActive(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isUidIdle(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mUidIdleList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isUidRunning(I)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/mars/util/UidStateMgr;->mRunningList:Lcom/android/server/am/mars/util/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/util/ConcurrentList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
