.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$ActivityManagerService$$ExternalSyntheticLambda32()V
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/ActivityManagerService;->mLastBinderHeavyHitterAutoSamplerStart:J

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-void

    :cond_2
    :try_start_3
    sget v3, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    sget v4, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    iput-wide v1, p0, Lcom/android/server/am/ActivityManagerService;->mLastBinderHeavyHitterAutoSamplerStart:J

    new-instance v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    const/4 v1, 0x1

    invoke-static {v1, v3, v4, v0}, Landroid/os/Binder;->setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static {v1, p0}, Lcom/android/internal/app/AppLockPolicy;->getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/app/AppLockPolicy;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppLockPolicy:Lcom/android/internal/app/AppLockPolicy;

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->run$com$android$server$am$ActivityManagerService$$ExternalSyntheticLambda32()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-string/jumbo v2, "com.tmobile.echolocate"

    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->ensureSystemPackageName(Lcom/android/server/pm/Computer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceExt;->mCanTmoPkgAvoidForceStop:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2

    :try_start_2
    iget-object p0, v2, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceExt;->initLongLivePackageLocked()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v2

    :try_start_4
    sget-boolean v3, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_ENABLED:Z

    const/16 v4, 0x48

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_BATCHSIZE:I

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_WATCHER_THRESHOLD:F

    new-instance v4, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_ENABLED:Z

    sget v1, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_BATCHSIZE:I

    sget v3, Lcom/android/server/am/ActivityManagerConstants;->BINDER_HEAVY_HITTER_AUTO_SAMPLER_THRESHOLD:F

    new-instance v4, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;

    const/4 v5, 0x2

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/am/ActivityManagerService;I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v1, v0

    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    invoke-static {v0, v1, v3, v4}, Landroid/os/Binder;->setHeavyHitterWatcherConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V

    return-void

    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/ActivityManagerService;

    sget v1, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->isInMaintenanceMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    monitor-enter v1

    :try_start_6
    sget-object v2, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->sInstance:Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0, p0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda12;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda12;-><init>(Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda22;)V

    iget-object v0, v2, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
