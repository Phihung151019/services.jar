.class public final synthetic Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mScheduledPermissionTasks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mScheduledPermissionTasks:Ljava/util/List;

    new-instance v3, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda21;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/audio/AudioService;I)V

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v4, "android.hardware.type.watch"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x3c

    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/AudioServerPermissionProvider;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda19;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;

    sget v1, Lcom/android/server/audio/AudioService;->BECOMING_NOISY_DELAY_MS:I

    iget-object p0, p0, Lcom/android/server/audio/DefaultAudioPolicyFacade;->mServiceHolder:Lcom/android/server/audio/ServiceHolder;

    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/audio/ServiceHolder;->mServiceProvider:Lcom/android/server/audio/ServiceHolder$2;

    iget-object v3, p0, Lcom/android/server/audio/ServiceHolder;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    :goto_1
    check-cast v1, Landroid/media/IAudioPolicyService;

    if-nez v1, :cond_3

    :goto_2
    move-object v3, v2

    goto :goto_3

    :cond_3
    :try_start_1
    invoke-interface {v1}, Landroid/media/IAudioPolicyService;->getPermissionController()Lcom/android/media/permission/INativePermissionController;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Lcom/android/media/permission/INativePermissionController;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    invoke-interface {v1}, Landroid/media/IAudioPolicyService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/audio/ServiceHolder;->attemptClear(Landroid/os/IBinder;)V

    goto :goto_2

    :goto_3
    const/4 p0, 0x0

    if-nez v3, :cond_4

    goto :goto_8

    :cond_4
    iget-object v1, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iput-object v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iget-object v3, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPackageMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/server/audio/AudioServerPermissionProvider$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    invoke-interface {v4, v3}, Lcom/android/media/permission/INativePermissionController;->populatePackagesForUids(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_1
    :try_start_4
    iput-object v2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    move v3, p0

    :goto_5
    const/16 v4, 0x10

    if-ge v3, v4, :cond_6

    :try_start_5
    iget-boolean v4, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioServerPermissionProvider;->getUidsHoldingPerm(I)[I

    move-result-object v5

    aput-object v5, v4, v3

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_9

    :cond_5
    :goto_6
    iget-object v4, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    iget-object v5, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mPermMap:[[I

    aget-object v5, v5, v3

    invoke-interface {v4, v3, v5}, Lcom/android/media/permission/INativePermissionController;->populatePermissionState(B[I)V

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_5

    :cond_6
    iput-boolean p0, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mIsUpdateDeferred:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catch_2
    :try_start_6
    iput-object v2, v0, Lcom/android/server/audio/AudioServerPermissionProvider;->mDest:Lcom/android/media/permission/INativePermissionController;

    :goto_7
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_8
    sget-object v0, Lcom/android/server/audio/AudioService;->sLifecycleLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    const-string v2, "Controller start task complete"

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AS.AudioService"

    invoke-virtual {v1, p0, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    :goto_9
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
