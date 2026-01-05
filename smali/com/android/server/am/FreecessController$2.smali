.class public final Lcom/android/server/am/FreecessController$2;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 6

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    iput p2, p1, Lcom/android/server/am/FreecessController;->mLastTopUid:I

    const-string p3, "FGActivity"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    sget-object p1, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_0

    iget-object p0, p0, Lcom/android/server/am/FreecessController;->mRestrictedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget-object p0, p0, Lcom/android/server/am/FreecessPkgMap;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/FreecessPkgStatus;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/FreecessPkgStatus;->freezedRecord:Lcom/android/server/am/mars/MARsFreezeStateRecord;

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsFreezeStateRecord;->cancelRestrictState()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    return-void

    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    iget-boolean p1, p1, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    if-eqz p1, :cond_4

    :cond_3
    return-void

    :cond_4
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    const p3, 0x186a0

    if-ge p2, p3, :cond_5

    :try_start_5
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_5
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-nez p0, :cond_6

    monitor-exit p1

    return-void

    :cond_6
    sget-object p3, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p3, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_7

    monitor-exit p1

    return-void

    :cond_7
    sget-object v0, Lcom/android/server/am/FreecessHandler$FreecessHandlerHolder;->INSTANCE:Lcom/android/server/am/FreecessHandler;

    sget-wide v3, Lcom/android/server/am/FreecessHandler;->mScreenOnQuickFreezeCheckDelay:J

    iget-object v5, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessHandler;->triggerScreenOnFreezeWithDelay(IIJLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-boolean p0, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    :cond_8
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 2

    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    const v0, 0x186a0

    if-ge p2, v0, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/FreecessController$2;->this$0:Lcom/android/server/am/FreecessController;

    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    sget-object p2, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    iget-object v0, p0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {p2, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    monitor-exit p1

    return-void

    :cond_2
    iput p3, p0, Lcom/android/server/am/FreecessPkgStatus;->serviceTypes:I

    :cond_3
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
