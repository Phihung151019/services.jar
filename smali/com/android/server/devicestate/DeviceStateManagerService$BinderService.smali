.class public final Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;
.super Landroid/hardware/devicestate/IDeviceStateManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelBaseStateOverride()V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CONTROL_DEVICE_STATE"

    const-string/jumbo v3, "Permission required to control base state of device."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final cancelStateRequest()V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    sget-object v3, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iget-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mPid:I

    if-ne v3, v0, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->isForegroundApp(II)Z

    move-result v6

    iget-object v7, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    if-nez v3, :cond_1

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v3, v2, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v3, :cond_2

    iget v6, v3, Lcom/android/server/devicestate/OverrideRequest;->mPid:I

    if-ne v6, v0, :cond_2

    iget v3, v3, Lcom/android/server/devicestate/OverrideRequest;->mUid:I

    if-ne v3, v1, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CONTROL_DEVICE_STATE"

    const-string/jumbo v3, "Permission required to request device state, or the call must come from the top app."

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "DeviceStateManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getDeviceStateInfo()Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    iget-object v0, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/devicestate/DeviceStateManagerShellCommand;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public final onStateRequestOverlayDismissed(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/hardware/devicestate/IDeviceStateManager$Stub;->onStateRequestOverlayDismissed_enforcePermission()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    sget-object v2, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->onStateRequestOverlayDismissedInternal(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final registerCallback(Landroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device state callback must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestBaseStateOverride(Landroid/os/IBinder;II)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CONTROL_DEVICE_STATE"

    const-string/jumbo v2, "Permission required to control base state of device."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestBaseStateOverrideInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final requestState(Landroid/os/IBinder;II)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    sget-object v1, Lcom/android/server/devicestate/DeviceStateManagerService;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    iget-object v1, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mPid:I

    if-ne v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v3, v4}, Lcom/android/server/devicestate/DeviceStateManagerService;->isForegroundApp(II)Z

    move-result v6

    iget-object v7, v0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/devicestate/DeviceState;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_1
    move v8, v2

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CONTROL_DEVICE_STATE"

    const-string/jumbo v6, "Permission required to request device state, or the call must come from the top app and be a device state that is available for apps to request."

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.CONTROL_DEVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_1
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    move-object v5, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIIILandroid/os/IBinder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Request token must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
