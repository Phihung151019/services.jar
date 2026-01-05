.class public final Lcom/android/server/companion/virtual/CameraAccessController$1;
.super Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInjectionError(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "CameraAccessController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected injection error code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for camera:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and package:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-eqz p0, :cond_2

    iget-object v0, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

    iget p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v5, :cond_1

    iget-object v5, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v5}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_1
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v6, 0x1041084

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;Landroid/os/Looper;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInjectionSucceeded(Landroid/hardware/camera2/CameraInjectionSession;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    const-string/jumbo v2, "onInjectionSucceeded found unexpected existing session for camera "

    const-string/jumbo v3, "onInjectionSucceeded didn\'t find expected entry for package "

    iget-object v4, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-nez v0, :cond_0

    const-string v0, "CameraAccessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraInjectionSession;

    if-eqz p0, :cond_1

    const-string p1, "CameraAccessController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    :cond_1
    monitor-exit v4

    return-void

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
