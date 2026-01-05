.class public final Lcom/android/server/camera/CameraServiceProxy$2;
.super Landroid/hardware/ICameraServiceProxy$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/hardware/ICameraServiceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAutoframingOverride(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getRotateAndCropOverride(Ljava/lang/String;II)I
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Calling UID: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, v3, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_17

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    iput-boolean v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    iput v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    iget v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    iput v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    iget v5, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v5}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v5

    iput-boolean v5, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    iput-boolean v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    if-nez p3, :cond_4

    const-string/jumbo p0, "Recent tasks don\'t include camera client package name: "

    invoke-static {p0, p1, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4
    iget v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const-wide/32 v5, 0xb476b84

    invoke-static {v5, v6, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo p0, "OVERRIDE_CAMERA_ROTATE_AND_CROP_DEFAULTS enabled!"

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    iget v0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->userId:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    const-wide/32 v5, 0xb6a427e

    invoke-static {v5, v6, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "OVERRIDE_CAMERA_RESIZABLE_AND_SDK_CHECK enabled!"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    iget-object v5, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v5, v5, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_16

    iget v6, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v5

    if-nez v5, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid display id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->displayId:I

    invoke-static {p0, p1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v3

    :cond_7
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11101da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string p0, "Disable Rotate and Crop to avoid conflicts with WM force rotation treatment."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    if-eqz p2, :cond_9

    if-eq p2, v4, :cond_9

    return v3

    :cond_9
    if-nez v0, :cond_b

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 p1, 0x17

    if-gt p0, p1, :cond_a

    goto :goto_3

    :catch_0
    const-string/jumbo p0, "Package name not found!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isResizeable:Z

    if-eqz p0, :cond_b

    const-string/jumbo p0, "The activity is N or above and claims to support resizeable-activity. Crop-rotate-scale is disabled."

    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    :goto_3
    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    if-nez p0, :cond_c

    iget-boolean p0, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    if-nez p0, :cond_c

    goto :goto_5

    :cond_c
    const/16 p0, 0x5a

    const/16 p1, 0xb4

    const/16 v0, 0x10e

    const/4 v6, 0x3

    if-eqz v5, :cond_10

    if-eq v5, v4, :cond_f

    if-eq v5, v1, :cond_e

    if-eq v5, v6, :cond_d

    const-string/jumbo p0, "Unsupported display rotation: "

    invoke-static {v5, p0, v2}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    move v5, v0

    goto :goto_4

    :cond_e
    move v5, p1

    goto :goto_4

    :cond_f
    move v5, p0

    goto :goto_4

    :cond_10
    move v5, v3

    :goto_4
    const-string v7, "Display.getRotation()="

    const-string v8, " isFixedOrientationPortrait="

    invoke-static {v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationPortrait:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isFixedOrientationLandscape="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p3, Lcom/android/server/camera/CameraServiceProxy$TaskInfo;->isFixedOrientationLandscape:Z

    invoke-static {v2, v7, p3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez v5, :cond_11

    goto :goto_5

    :cond_11
    if-nez p2, :cond_12

    rsub-int v5, v5, 0x168

    :cond_12
    if-eq v5, p0, :cond_15

    if-eq v5, p1, :cond_14

    if-eq v5, v0, :cond_13

    goto :goto_5

    :cond_13
    move v3, v6

    goto :goto_5

    :cond_14
    move v3, v1

    goto :goto_5

    :cond_15
    move v3, v4

    :goto_5
    return v3

    :cond_16
    const-string p0, "Failed to query display manager!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_17
    const-string/jumbo p0, "Recent task list is empty!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_1
    const-string p0, "Failed to query recent tasks!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public final isCameraDisabled(I)Z
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Calling UID: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match expected camera service UID!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    if-nez p0, :cond_1

    const-string p0, "Failed to get the device policy manager service"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final notifyCameraState(Landroid/hardware/CameraSessionStats;)V
    .locals 33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x417

    if-eq v1, v2, :cond_0

    const-string v0, "CameraService_proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling UID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t match expected  camera service UID!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    sget-object v1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const-string/jumbo v2, "cameraFacing="

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getNewCameraState()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getFacing()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getClientName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getApiLevel()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->isNdk()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionType()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getInternalReconfigureCount()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLatencyMs()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getRequestCount()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getResultErrorCount()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getDeviceErrorFlag()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getStreamStats()Ljava/util/List;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUserTag()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getVideoStabilizationMode()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedUltraWide()Z

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getUsedZoomOverride()Z

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getLogId()J

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getSessionIndex()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getExtensionSessionStats()Landroid/hardware/CameraExtensionSessionStats;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMostRequestedFpsRange()Landroid/util/Range;

    move-result-object v24

    move/from16 p0, v9

    iget-object v9, v1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v0, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v3, :cond_12

    const/4 v2, 0x1

    const/16 v28, 0x0

    if-eq v3, v2, :cond_b

    const/4 v2, 0x2

    move/from16 v29, v5

    const/4 v5, 0x3

    if-eq v3, v2, :cond_2

    if-eq v3, v5, :cond_1

    move-object/from16 v16, v9

    goto/16 :goto_d

    :cond_1
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_e

    :cond_2
    :goto_0
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    if-eqz v2, :cond_9

    move/from16 v18, v12

    move-object v12, v2

    invoke-virtual/range {v12 .. v25}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V

    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v28

    :goto_1
    iget-object v12, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v2, v12, :cond_4

    iget-object v12, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v12, v12, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_5

    :cond_3
    const/16 v32, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    sget-object v2, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    array-length v12, v2

    move/from16 v13, v28

    :goto_2
    if-ge v13, v12, :cond_7

    aget-object v14, v2, v13

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    move/from16 v2, v28

    goto :goto_4

    :cond_6
    const/16 v32, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    const-string v12, "CameraService_proxy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "wmi.removeRefreshRateRangeForPackage clientName = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerInternal;->removeRefreshRateRangeForPackage(Ljava/lang/String;)V

    :cond_8
    :goto_5
    move/from16 v12, v28

    :cond_9
    if-ne v3, v5, :cond_a

    new-instance v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v9

    const/4 v9, 0x2

    move/from16 v15, p0

    move-object/from16 v16, v2

    move-wide/from16 v13, v26

    move/from16 v5, v29

    :try_start_1
    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_e

    :cond_a
    move-object/from16 v16, v9

    :goto_6
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_15

    invoke-virtual {v1}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    goto/16 :goto_d

    :cond_b
    move/from16 v15, p0

    move-object/from16 v16, v9

    move-wide/from16 v13, v26

    move/from16 v2, v28

    :goto_7
    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    iget-object v3, v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->mClientName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    move-object/from16 v17, v4

    move/from16 v29, v5

    goto/16 :goto_b

    :cond_d
    const/16 v32, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    if-nez v6, :cond_f

    goto :goto_9

    :cond_f
    sget-object v2, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    array-length v3, v2

    move/from16 v9, v28

    :goto_8
    if-ge v9, v3, :cond_11

    move-object/from16 p0, v2

    aget-object v2, p0, v9

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move/from16 v2, v28

    goto :goto_a

    :cond_10
    const/16 v32, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p0

    goto :goto_8

    :cond_11
    :goto_9
    const/4 v2, 0x1

    :goto_a
    if-eqz v2, :cond_c

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/CameraSessionStats;->getMaxPreviewFps()F

    move-result v3

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const-string v9, "CameraService_proxy"

    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v5

    const-string/jumbo v5, "wmi.addRefreshRateRangeForPackage minFPS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", maxFPS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", clientName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v2, v6, v3, v5}, Lcom/android/server/wm/WindowManagerInternal;->addRefreshRateRangeForPackage(Ljava/lang/String;FF)V

    :goto_b
    new-instance v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v9, 0x3

    move-object/from16 v4, v17

    move/from16 v5, v29

    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    if-eqz v18, :cond_15

    const-string v2, "CameraService_proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was already marked as active"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, ""

    new-instance v2, Landroid/util/Range;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v31, Landroid/hardware/CameraExtensionSessionStats;

    invoke-direct/range {v31 .. v31}, Landroid/hardware/CameraExtensionSessionStats;-><init>()V

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v25, v19

    const/16 v19, 0x0

    move-object/from16 v30, v2

    invoke-virtual/range {v18 .. v31}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;->markCompleted(IJJZLjava/util/List;Ljava/lang/String;IZZLandroid/util/Range;Landroid/hardware/CameraExtensionSessionStats;)V

    move-object/from16 v2, v18

    iget-object v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_12
    move/from16 v15, p0

    move-object/from16 v16, v9

    move-wide/from16 v13, v26

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v9, Landroid/media/AudioManager;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    if-eqz v3, :cond_14

    if-nez v5, :cond_13

    const-string/jumbo v9, "back"

    goto :goto_c

    :cond_13
    const-string/jumbo v9, "front"

    :goto_c
    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_14
    new-instance v3, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v15}, Lcom/android/server/camera/CameraServiceProxy$CameraUsageEvent;-><init>(Ljava/lang/String;ILjava/lang/String;IZIIIZJI)V

    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v6}, Lcom/android/server/camera/CameraServiceProxy;->canNotifyToNfcService(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    :goto_d
    iget-object v2, v1, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    iget-boolean v3, v1, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v3, :cond_16

    if-eq v0, v2, :cond_16

    const-string v3, "CameraService_proxy"

    const/16 v32, 0x1

    xor-int/lit8 v0, v0, 0x1

    xor-int/lit8 v4, v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Notify nfc service : camera open was("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") -> now("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ") = polling("

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    :cond_16
    monitor-exit v16

    return-void

    :goto_e
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final notifyFeatureCombinationStats(Landroid/hardware/CameraFeatureCombinationStats;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    const-string p0, "CameraService_proxy"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Calling UID: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p1, v1, Lcom/android/server/camera/CameraServiceProxy$CameraFeatureCombinationQueryEvent;->mFeatureCombinationStats:Landroid/hardware/CameraFeatureCombinationStats;

    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->dumpCameraEvents()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyWatchdog(IZ)V
    .locals 13

    sget-object p0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p2

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/android/server/camera/CameraServiceProxy;->HIDL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v4, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "CameraService_proxy"

    const-string/jumbo v3, "Remote exception while querying HIDL service manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    array-length v2, v0

    move v3, p2

    :goto_2
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    sget-object v5, Lcom/android/server/camera/CameraServiceProxy;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    iget-object v6, v4, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    array-length v7, v5

    move v8, p2

    :goto_3
    if-ge v8, v7, :cond_6

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v4, v4, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    sget-object v0, Lcom/android/server/camera/CameraServiceProxy;->NATIVE_SERVICES_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v2, v0

    :goto_6
    if-ge p2, v2, :cond_8

    aget v3, v0, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    new-instance v10, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v12}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {v0, v1}, Lcom/android/server/camera/CameraServiceProxy$2$CSPShellCmd;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

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

.method public final pingForUserUpdate()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x417

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Calling UID: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t match expected  camera service UID!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraService_proxy"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    sget-object v1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v2, 0x3c

    :try_start_0
    invoke-virtual {v0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$2;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
