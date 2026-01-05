.class public final Lcom/android/server/am/AppPermissionTracker$MyHandler;
.super Landroid/os/Handler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mTracker:Lcom/android/server/am/AppPermissionTracker;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object p1, p1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast p1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object p1, p1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    if-eqz p1, :cond_b

    array-length v3, p1

    if-lez v3, :cond_b

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_b

    aget-object v3, p1, v2

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    filled-new-array {p1}, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object v0, v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    new-instance v4, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, p0, p1, v5, v3}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget-object p1, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, v3, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_5

    const-string v8, ""

    const/4 v9, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    return-void

    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_7
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    check-cast v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object v3, v3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->mBgPermissionsInMonitor:[Landroid/util/Pair;

    move v4, v2

    :goto_5
    array-length v5, v3

    if-ge v4, v5, :cond_9

    aget-object v5, v3, v4

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    iget-object v4, p1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v4, v4, Lcom/android/server/am/BaseAppStateTracker$Injector;->mIAppOpsService:Lcom/android/internal/app/IAppOpsService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    array-length v5, v0

    :goto_6
    if-ge v2, v5, :cond_a

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v7, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;

    invoke-direct {v7, p1}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    iget-object v8, p1, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8, v1, v7}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_8

    :catch_0
    :cond_a
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V

    :cond_b
    :goto_7
    return-void

    :goto_8
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method
