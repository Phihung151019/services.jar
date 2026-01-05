.class public final Lcom/android/server/devicestate/DeviceStateManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->shouldCancelOverrideRequestWhenRequesterNotOnTop()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object v1, v1, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    iget v2, v1, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    if-ne p1, v2, :cond_3

    iget p1, v1, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onForegroundServicesChanged(III)V
    .locals 0

    return-void
.end method

.method public final onProcessDied(II)V
    .locals 0

    return-void
.end method

.method public final onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
