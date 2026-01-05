.class public final Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;
.super Landroid/app/AppOpsManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/app/AppOpsManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mOpUserRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    const/4 v9, 0x0

    move v8, p1

    move-object v7, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/AppOpsService$ClientUserRestrictionState;->hasRestriction(Ljava/lang/String;IZILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    iget-object p2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p2, p2, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v0, v2

    :goto_1
    if-ge v0, p2, :cond_4

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    iget-object v5, v3, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    check-cast v5, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget-object v5, v5, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseBooleanArray;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v1

    return v4

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 12

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean v2, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {v1}, Lcom/android/server/appop/AppOpsService;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v4, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-virtual {v5}, Lcom/android/server/appop/AppOpsService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const-wide/16 v9, 0x1000

    move-object v11, p1

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(IIJLjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    monitor-enter v5

    :try_start_0
    iget-boolean v6, v5, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackagesInitialized:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5, p1}, Lcom/android/server/appop/AppOpsService;->isSamplingTarget(Landroid/content/pm/PackageInfo;)Z

    move-result p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_1

    iget-object p1, v5, Lcom/android/server/appop/AppOpsService;->mRarelyUsedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v5, v4, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    move-result-object p1

    iget-object v6, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v6, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p1, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/appop/AppOpsService$Ops;

    invoke-direct {v7, v11, p1}, Lcom/android/server/appop/AppOpsService$Ops;-><init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V

    invoke-virtual {v6, v11, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 v6, 0x2710

    if-ge p1, v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4}, Landroid/os/Process;->toSdkSandboxUid(I)I

    move-result p1

    invoke-virtual {v5, p1, v0}, Lcom/android/server/appop/AppOpsService;->getUidStateLocked(IZ)Lcom/android/server/appop/AppOpsService$UidState;

    :goto_2
    monitor-exit v5

    add-int/2addr v3, v0

    move-object p1, v11

    goto :goto_0

    :goto_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    return-void
.end method

.method public final setDeviceAndProfileOwners(Landroid/util/SparseIntArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService;->mProfileOwners:Landroid/util/SparseIntArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setGlobalRestriction(IZLandroid/os/IBinder;)V
    .locals 7

    const-string/jumbo v0, "setGlobalRestriction: code "

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v2, v2, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    new-instance v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;

    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {v2, v3, p3}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;-><init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "AppOps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "by Pid: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v0, v0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    monitor-exit v1

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->setRestriction(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v3, v0, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v0, p1, p2, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object p1, v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsService;->mAppOpsRestrictions:Lcom/android/server/appop/AppOpsRestrictions;

    iget-object p2, v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;

    iget-object p1, p1, Lcom/android/server/appop/AppOpsRestrictionsImpl;->mGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService;->mOpGlobalRestrictions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v2, Lcom/android/server/appop/AppOpsService$ClientGlobalRestrictionState;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Only the system can set global restrictions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->setMode(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->setUidMode(IIILcom/android/internal/app/IAppOpsCallback;)V

    return-void
.end method

.method public final updateAppWidgetVisibility(Landroid/util/SparseArray;Z)V
    .locals 5

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$AppOpsManagerInternalImpl;->this$0:Lcom/android/server/appop/AppOpsService;

    sget-boolean v0, Lcom/android/server/appop/AppOpsService;->DEBUG:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->getUidStateTracker()Lcom/android/server/appop/AppOpsUidStateTracker;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v0, v3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
