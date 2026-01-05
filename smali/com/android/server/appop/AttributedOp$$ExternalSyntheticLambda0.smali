.class public final synthetic Lcom/android/server/appop/AttributedOp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/appop/AttributedOp;

    check-cast p2, Landroid/os/IBinder;

    sget-boolean p0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    iget-object p0, p1, Lcom/android/server/appop/AttributedOp;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/appop/AttributedOp;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mPausedInProgressEvents:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/appop/AttributedOp;->mInProgressEvents:Landroid/util/ArrayMap;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mNumUnfinishedStarts:I

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/appop/AttributedOp;->finishOrPause(Landroid/os/IBinder;ZZ)V

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
