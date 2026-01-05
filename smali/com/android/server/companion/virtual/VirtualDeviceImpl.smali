.class final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# static fields
.field public static final DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;


# instance fields
.field public mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field public mActivityListenerAdapter:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

.field public final mActivityPolicyExemptions:Ljava/util/Set;

.field public final mActivityPolicyPackageExemptions:Ljava/util/Set;

.field public final mAppToken:Landroid/os/IBinder;

.field public final mAssociationInfo:Landroid/companion/AssociationInfo;

.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mBaseVirtualDisplayFlags:I

.field public final mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final mContext:Landroid/content/Context;

.field public mDefaultShowPointerIcon:Z

.field public final mDeviceId:I

.field public final mDevicePolicies:Landroid/util/SparseIntArray;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mInputController:Lcom/android/server/companion/virtual/InputController;

.field public final mIntentInterceptors:Ljava/util/Map;

.field public mLocaleList:Landroid/os/LocaleList;

.field public mLockdownActive:Z

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field public final mPersistentDeviceId:Ljava/lang/String;

.field public final mPowerLock:Ljava/lang/Object;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

.field public mRequestedToBeAwake:Z

.field public final mRunningAppsChangedCallback:Ljava/util/function/Consumer;

.field public final mSensorController:Lcom/android/server/companion/virtual/SensorController;

.field public final mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

.field public mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

.field public mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field public final mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

.field public final mVirtualDeviceLock:Ljava/lang/Object;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDisplays:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;Landroid/companion/virtual/VirtualDeviceParams;)V
    .locals 17

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v15

    invoke-static {}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->nativeVirtualCameraServiceBuildFlagEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    const/4 v2, 0x5

    move-object/from16 v14, p13

    invoke-virtual {v14, v2}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v2

    move/from16 v7, p7

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;-><init>(Landroid/companion/virtualcamera/IVirtualCameraService;II)V

    move-object/from16 v16, v0

    goto :goto_0

    :cond_0
    move/from16 v7, p7

    move-object/from16 v14, p13

    move-object/from16 v16, v1

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v16}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceLog;Landroid/os/IBinder;Landroid/content/AttributionSource;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/CameraAccessController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;Landroid/hardware/display/DisplayManagerGlobal;Lcom/android/server/companion/virtual/camera/VirtualCameraController;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Lcom/android/server/companion/virtual/VirtualDeviceManagerService;",
            "Lcom/android/server/companion/virtual/VirtualDeviceLog;",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            "I",
            "Lcom/android/server/companion/virtual/InputController;",
            "Lcom/android/server/companion/virtual/CameraAccessController;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            "Landroid/hardware/display/DisplayManagerGlobal;",
            "Lcom/android/server/companion/virtual/camera/VirtualCameraController;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p14

    invoke-direct {v1}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    iput-boolean v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    iput-object v7, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    invoke-virtual/range {p6 .. p6}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    move-object/from16 v5, p6

    iput-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v13

    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v0, v13, v12}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    iput-object v6, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    const-string/jumbo v14, "companion:"

    invoke-static {v4, v14}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    move-object/from16 v14, p3

    iput-object v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    move-object/from16 v14, p10

    iput-object v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    move-object/from16 v14, p11

    iput-object v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    move-object/from16 v14, p12

    iput-object v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    move-object/from16 v14, p13

    iput-object v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    invoke-virtual {v5}, Landroid/content/AttributionSource;->getUid()I

    move-result v14

    iput v14, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    iput v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iput-object v8, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    iput-object v10, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicies()Landroid/util/SparseIntArray;

    move-result-object v15

    iput-object v15, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    move-object/from16 v11, p15

    iput-object v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    const-class v11, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v11, Landroid/os/PowerManager;

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    iput-object v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    const/4 v11, 0x4

    invoke-virtual {v15, v11, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "android.permission.ADD_TRUSTED_DISPLAY"

    invoke-virtual {v13, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_4

    const-string/jumbo v11, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    invoke-virtual {v13, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_3

    const/16 v11, 0x7140

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual device."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v11, 0x6140

    :goto_2
    iput v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mBaseVirtualDisplayFlags:I

    if-nez v3, :cond_5

    new-instance v13, Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v15

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/WindowManager;

    move v0, v14

    new-instance v14, Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-direct {v14}, Lcom/android/server/companion/virtual/InputController$NativeWrapper;-><init>()V

    new-instance v3, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v15}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda2;-><init>(Landroid/os/Handler;)V

    move v11, v0

    move-object/from16 v18, v3

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/server/companion/virtual/InputController;-><init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V

    iput-object v13, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_3

    :cond_5
    move v11, v14

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    :goto_3
    new-instance v0, Lcom/android/server/companion/virtual/SensorController;

    move-object v3, v4

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorCallback()Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    move-result-object v4

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getVirtualSensorConfigs()Ljava/util/List;

    move-result-object v5

    move-object v13, v3

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/SensorController;-><init>(Landroid/companion/virtual/IVirtualDevice;ILandroid/content/AttributionSource;Landroid/companion/virtual/sensor/IVirtualSensorCallback;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    iput-object v9, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v9, :cond_7

    iget-object v2, v9, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v9, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-nez v0, :cond_6

    iget-object v0, v9, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, v9, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v0, v3, v9}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_4
    iget v0, v9, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    const/16 v19, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    monitor-exit v2

    :cond_7
    move-object/from16 v0, p16

    goto :goto_6

    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :goto_6
    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    :try_start_1
    invoke-interface {v8, v1, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v8, 0x0

    move/from16 p10, p7

    move-object/from16 p8, v0

    move-wide/from16 p12, v4

    move/from16 p9, v8

    move/from16 p11, v11

    invoke-direct/range {p8 .. p13}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;-><init>(IIIJ)V

    iget-object v4, v7, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v4, 0x10

    if-le v0, v4, :cond_8

    iget-object v0, v7, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    new-instance v0, Landroid/companion/virtual/VirtualDevice;

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v6, :cond_9

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_7
    move/from16 p3, p7

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move-object/from16 p4, v13

    goto :goto_8

    :cond_9
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :goto_8
    invoke-direct/range {p1 .. p6}, Landroid/companion/virtual/VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDevice;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPublicVirtualDeviceObject:Landroid/companion/virtual/VirtualDevice;

    new-instance v0, Landroid/util/ArraySet;

    const/4 v3, 0x3

    invoke-virtual {v10, v3}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v3

    goto :goto_9

    :cond_a
    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v3

    :goto_9
    invoke-direct {v0, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualDeviceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Setting custom input method "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " as default for virtual device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    :cond_b
    return-void

    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static getTargetDisplayIdForInput(I)I
    .locals 2

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayIdToMirror(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method private static native nativeVirtualCameraServiceBuildFlagEnabled()Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final addActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eq v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_3
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_4
    move-exception p0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p0

    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final binderDied()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    return-void
.end method

.method public final canCreateMirrorDisplays()Z
    .locals 1

    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->DEVICE_PROFILES_ALLOWING_MIRROR_DISPLAYS:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final checkCallerIsDeviceOwner()V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller is not the owner of this virtual device"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkDisplayOwnedByVirtualDeviceLocked(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Invalid displayId: Display "

    const-string v1, " is not associated with this virtual device"

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkVirtualInputDeviceDisplayIdAssociation(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.INJECT_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot create input device associated with an untrusted display"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

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

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_8

    :cond_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.companion.virtual.action.VIRTUAL_DEVICE_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.companion.virtual.extra.VIRTUAL_DEVICE_ID"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    iget v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_2
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;-><init>(IIIJ)V

    iget-object v2, v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;->mLogEntries:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v5, v0, [Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v3, v6

    :goto_2
    if-ge v3, v0, :cond_4

    :try_start_5
    aget-object v7, v5, v3

    iget-object v8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManager:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v9, v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mToken:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-virtual {v8, v9}, Landroid/hardware/display/DisplayManagerGlobal;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    iget-object v7, v7, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v8, v7, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v7, v7, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v7, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :catchall_3
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_4
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    invoke-interface {v0, p0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v0, :cond_6

    iget-object v3, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget v5, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    if-gtz v5, :cond_5

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_5
    :goto_3
    monitor-exit v3

    goto :goto_5

    :goto_4
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw p0

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getInputMethodComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->setVirtualDeviceInputMethodForAllUsers(ILjava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/InputController;->close()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/SensorController;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->close()V

    :cond_8
    return-void

    :goto_6
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_7
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_5
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_6
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_8
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0
.end method

.method public final createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;)I
    .locals 20

    move-object/from16 v1, p0

    const-string/jumbo v6, "Virtual device was not notified about the creation of display with ID "

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v0

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayCategories()Ljava/util/Set;

    move-result-object v16

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v0}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultNavigationPolicy()I

    move-result v0

    if-nez v0, :cond_2

    move v13, v3

    goto :goto_2

    :cond_2
    move v13, v2

    :goto_2
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v4

    if-nez v4, :cond_3

    move/from16 v17, v3

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    :goto_3
    iget-object v2, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    if-nez v3, :cond_4

    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    invoke-direct {v3, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    iput-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_4
    :goto_4
    new-instance v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v8, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAllowedUserHandles()Landroid/util/ArraySet;

    move-result-object v9

    iget-object v11, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    iget-object v12, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    if-eqz v13, :cond_5

    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v3}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v3

    :goto_5
    move-object v14, v3

    goto :goto_6

    :cond_5
    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v3}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v3

    goto :goto_5

    :goto_6
    iget-object v15, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListenerAdapter:Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;

    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v3}, Landroid/companion/virtual/VirtualDeviceParams;->getHomeComponent()Landroid/content/ComponentName;

    move-result-object v18

    move-object v7, v4

    invoke-direct/range {v7 .. v18}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(Landroid/content/AttributionSource;Landroid/util/ArraySet;ZLjava/util/Set;Ljava/util/Set;ZLjava/util/Set;Lcom/android/server/companion/virtual/VirtualDeviceImpl$GwpcActivityListener;Ljava/util/Set;ZLandroid/content/ComponentName;)V

    move-object v4, v7

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    move-object v3, v1

    move v7, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result v2

    move-object v1, v3

    const/4 v0, -0x1

    if-ne v2, v0, :cond_6

    goto :goto_7

    :cond_6
    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v5, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    iget-object v3, v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListeners:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v0

    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;

    move/from16 v19, v5

    move-object v5, v4

    move/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;ZLcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    move-object v4, v5

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    const-string/jumbo v0, "virtual_devices.value_virtual_display_created_count"

    iget-object v3, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v3}, Landroid/content/AttributionSource;->getUid()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    iget-object v0, v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.mdx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Landroid/window/DisplayWindowPolicyController;->addSupportedWindowingMode(I)V

    invoke-virtual {v4, v7}, Landroid/window/DisplayWindowPolicyController;->addSupportedWindowingMode(I)V

    :cond_7
    :goto_7
    return v2

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :goto_9
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createVirtualDpad(Landroid/hardware/input/VirtualDpadConfig;Landroid/os/IBinder;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getVendorId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getProductId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/input/VirtualDpadConfig;->getAssociatedDisplayId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "Dpad"

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    const/4 v9, 0x3

    move-object v4, v3

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V

    move-object v3, v4

    const/4 v4, 0x4

    move v9, p0

    move-object v10, v8

    move-object v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createVirtualKeyboard(Landroid/hardware/input/VirtualKeyboardConfig;Landroid/os/IBinder;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getVendorId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getProductId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v8

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLayoutType()Ljava/lang/String;

    move-result-object v10

    move-object v7, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/input/VirtualKeyboardConfig;->getLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLocaleList:Landroid/os/LocaleList;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createVirtualMouse(Landroid/hardware/input/VirtualMouseConfig;Landroid/os/IBinder;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getVendorId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getProductId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/input/VirtualMouseConfig;->getAssociatedDisplayId()I

    move-result p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "Mouse"

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    move-object v4, v3

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V

    move-object v3, v4

    const/4 v4, 0x2

    move v9, p0

    move-object v10, v8

    move-object v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createVirtualNavigationTouchpad(Landroid/hardware/input/VirtualNavigationTouchpadConfig;Landroid/os/IBinder;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getVendorId()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getProductId()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getAssociatedDisplayId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/input/VirtualNavigationTouchpadConfig;->getWidth()I

    move-result v8

    move-object v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/companion/virtual/InputController;->createNavigationTouchpad(IIIIILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createVirtualRotaryEncoder(Landroid/hardware/input/VirtualRotaryEncoderConfig;Landroid/os/IBinder;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getVendorId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getProductId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/input/VirtualRotaryEncoderConfig;->getAssociatedDisplayId()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getTargetDisplayIdForInput(I)I

    move-result p0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "RotaryEncoder"

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;

    const/4 v9, 0x2

    move-object v4, v3

    move-object v3, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V

    move-object v3, v4

    const/4 v4, 0x7

    move v9, p0

    move-object v10, v8

    move-object v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createVirtualStylus(Landroid/hardware/input/VirtualStylusConfig;Landroid/os/IBinder;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getVendorId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getProductId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getAssociatedDisplayId()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualStylusConfig;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "Stylus"

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V

    move-object v11, v3

    move-object v3, v4

    const/4 v4, 0x6

    move v9, p0

    move-object v10, v8

    move-object v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final createVirtualTouchscreen(Landroid/hardware/input/VirtualTouchscreenConfig;Landroid/os/IBinder;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkVirtualInputDeviceDisplayIdAssociation(I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getInputDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getVendorId()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getProductId()I

    move-result v7

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getAssociatedDisplayId()I

    move-result p0

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/hardware/input/VirtualTouchscreenConfig;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "Touchscreen"

    invoke-static {p1}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;

    move-object v4, v3

    move-object v3, v11

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V

    move-object v11, v3

    move-object v3, v4

    const/4 v4, 0x3

    move v9, p0

    move-object v10, v8

    move-object v8, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string p1, "    "

    const-string p3, "  VirtualDevice: "

    const-string v0, "    mDeviceId: "

    invoke-static {p2, p3, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    const-string v1, "    mAssociationId: "

    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAssociationId()I

    move-result v0

    const-string v1, "    mOwnerPackageName: "

    invoke-static {p3, v0, p2, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "    mParams: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    const-string v0, "        "

    invoke-virtual {p3, p2, v0}, Landroid/companion/virtual/VirtualDeviceParams;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string p3, "    mVirtualDisplayIds: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDevicePolicies: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "mDefaultShowPointerIcon: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "    InputController: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    const-string p3, "      Active descriptors: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    iget-object p3, p1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result p3

    if-ge v0, p3, :cond_1

    iget-object p3, p1, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        ptr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          creationOrder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          phys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "          inputDeviceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p3, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "    SensorController: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p1, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_2
    const-string v0, "      Active descriptors: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/companion/virtual/SensorController;->mSensorDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "          type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "          name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    goto/16 :goto_6

    :cond_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "    VirtualCameraController:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "        "

    iget-object v0, p1, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Registered cameras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :catchall_3
    move-exception p0

    goto :goto_4

    :cond_3
    monitor-exit v0

    goto :goto_5

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :cond_4
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "    hasCustomAudioInputSupport: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result p0

    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void

    :goto_6
    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :goto_7
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :goto_8
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public final getAllowedUserHandles()Landroid/util/ArraySet;
    .locals 8

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v6}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getAssociationId()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    return p0
.end method

.method public final getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getDeviceId()I
    .locals 0

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    return p0
.end method

.method public final getDevicePolicy(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDisplayIds()[I
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayWindowPolicyControllerForTest(I)Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getInputDeviceId(Landroid/os/IBinder;)I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-object v2, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get device id for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getPersistentDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getSensorControllerForTest()Lcom/android/server/companion/virtual/SensorController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    return-object p0
.end method

.method public getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object p0
.end method

.method public final getVirtualCameraId(Landroid/companion/virtual/camera/VirtualCameraConfig;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mVirtualCameraService:Landroid/companion/virtualcamera/IVirtualCameraService;

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;

    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraService$Stub$Proxy;->getCameraId(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getVirtualSensorList()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    iget-object v0, p0, Lcom/android/server/companion/virtual/SensorController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensors:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/virtual/sensor/VirtualSensor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mVirtualSensorList:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final goToSleep()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->goToSleepInternal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final goToSleepInternal(I)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v7, v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-eqz v7, :cond_1

    iget-boolean v5, v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v1

    const/4 v5, 0x0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->goToSleep(IJII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final hasCustomAudioInputSupport()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->hasCustomAudioInputSupportInternal()Z

    move-result p0

    return p0
.end method

.method public final hasCustomAudioInputSupportInternal()Z
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRegisteredPolicyMixes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    iget v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    invoke-virtual {v4, v5}, Landroid/media/audiopolicy/AudioMix;->matchesVirtualDeviceId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getMixType()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v0, :cond_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final isAppRunningOnVirtualDevice(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v4, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_1
    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string/jumbo p1, "VirtualDeviceImpl"

    const-string/jumbo p2, "Pending intent canceled"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_0
    move-object v4, p2

    new-instance p2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-direct {p2, p1, v4, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;->this$1:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    iget-object v6, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    new-instance v7, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, p2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    if-eqz v5, :cond_1

    iget-object v0, v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_2
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    const-string/jumbo v0, "VirtualDeviceImpl"

    const-string/jumbo v1, "Pending intent canceled"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p3, v2, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;->this$1:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    iget-object p1, p2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onAudioSessionEnded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-direct {v1, v2, v3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;Landroid/content/AttributionSource;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object p1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onRunningAppsChanged(Landroid/util/ArraySet;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mCameraAccessController:Lcom/android/server/companion/virtual/CameraAccessController;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    iget-object v5, v4, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUids:Ljava/util/Set;

    check-cast v4, Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v4, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    invoke-direct {v4}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    iput v7, v4, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    iget-object v6, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v0, v5, v3}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final registerIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;Landroid/content/IntentFilter;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final registerVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAttributionSource:Landroid/content/AttributionSource;

    iget v1, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameraPolicy:I

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v1

    iget-object v2, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    iget-object v4, v4, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;->mConfig:Landroid/companion/virtual/camera/VirtualCameraConfig;

    invoke-virtual {v4}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result v4

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Only a single virtual camera can be created with lens facing "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getLensFacing()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->connectVirtualCameraServiceIfNeeded()V

    :try_start_2
    invoke-virtual {v0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->registerCameraWithService(Landroid/companion/virtual/camera/VirtualCameraConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;

    invoke-direct {v1, v0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController$CameraDescriptor;-><init>(Lcom/android/server/companion/virtual/camera/VirtualCameraController;Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    invoke-virtual {p1}, Landroid/companion/virtual/camera/VirtualCameraConfig;->getCallback()Landroid/companion/virtual/camera/IVirtualCameraCallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    monitor-enter v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, v0, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->mCameras:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to register virtual camera."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2
    const-string/jumbo p1, "virtual_devices.value_virtual_camera_created_count"

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    return-void

    :goto_3
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create virtual camera with DEVICE_POLICY_DEFAULT for POLICY_TYPE_CAMERA"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeActivityPolicyExemption(Landroid/companion/virtual/ActivityPolicyExemption;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    if-eq v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto/16 :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_3
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw p0

    :cond_2
    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {p1}, Landroid/companion/virtual/ActivityPolicyExemption;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityPolicyPackageExemptions:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_4
    move-exception p0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw p0

    :cond_3
    :goto_2
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method

.method public final sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorAdditionalInfo(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorAdditionalInfo;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSensorController:Lcom/android/server/companion/virtual/SensorController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/SensorController;->sendSensorEvent(Landroid/os/IBinder;Landroid/companion/virtual/sensor/VirtualSensorEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final setDevicePolicy(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-eq p1, v1, :cond_7

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Device policy "

    const-string v0, " cannot be changed at runtime. "

    invoke-static {p1, p2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.ADD_TRUSTED_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "Requires ADD_TRUSTED_DISPLAY permission to set a custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-nez v3, :cond_5

    iget-boolean v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "All displays must be trusted for devices with custom clipboard policy."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDevicePolicy(I)I

    move-result v3

    if-eq v3, p2, :cond_8

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyExemptions:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityPolicyPackageExemptions:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, v2

    :goto_5
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-nez p2, :cond_9

    move v4, v0

    goto :goto_6

    :cond_9
    move v4, v2

    :goto_6
    invoke-virtual {v3, v4}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_a
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_b
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDevicePolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, v2

    :goto_8
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_e

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v4, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-eqz v4, :cond_d

    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-nez p2, :cond_c

    move v4, v0

    goto :goto_9

    :cond_c
    move v4, v2

    :goto_9
    iget-object v5, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    iput-boolean v4, v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    monitor-exit v5

    goto :goto_a

    :catchall_3
    move-exception p0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    throw p0

    :cond_d
    :goto_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :catchall_4
    move-exception p0

    goto :goto_b

    :cond_e
    monitor-exit v1

    return-void

    :goto_b
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0
.end method

.method public final setDevicePolicyForDisplay(III)V
    .locals 5

    const-string v0, "Device policy "

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-nez p3, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setActivityLaunchDefaultAllowed(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cannot be changed for a specific display. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-nez p3, :cond_3

    move v3, v4

    :cond_3
    iget-object p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mShowTasksInHostDeviceRecents:Z

    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_4
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setDisplayImePolicy(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkDisplayOwnedByVirtualDeviceLocked(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1, p2}, Landroid/view/WindowManager;->setDisplayImePolicy(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final setListeners(Landroid/companion/virtual/IVirtualDeviceActivityListener;Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/companion/virtual/IVirtualDeviceActivityListener;

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mSoundEffectListener:Landroid/companion/virtual/IVirtualDeviceSoundEffectListener;

    return-void
.end method

.method public final setShowPointerIcon(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v4, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-nez v4, :cond_0

    iget-boolean v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v3, v3, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v6, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    iget-object v3, v3, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/input/InputManagerService;->setPointerIconVisible(ZI)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final showToastWhereUidIsRunning(ILjava/lang/String;Landroid/os/Looper;)V
    .locals 7

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-object v4, v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mWindowPolicyController:Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    iget-object v5, v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    :goto_2
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, p3, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public final unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final unregisterIntentInterceptor(Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mIntentInterceptors:Ljava/util/Map;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterVirtualCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualCameraController:Lcom/android/server/companion/virtual/camera/VirtualCameraController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/camera/VirtualCameraController;->unregisterCamera(Landroid/companion/virtual/camera/VirtualCameraConfig;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Virtual camera controller is not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final wakeUp()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->checkCallerIsDeviceOwner()V

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRequestedToBeAwake:Z

    iget-boolean v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mLockdownActive:Z

    if-eqz v2, :cond_0

    const-string/jumbo p0, "VirtualDeviceImpl"

    const-string v1, "Cannot wake up device during lockdown."

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    const-string/jumbo v0, "android.server.companion.virtual:DEVICE_ON"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->wakeUpInternal(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final wakeUpInternal(ILjava/lang/String;)V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v6, Landroid/util/IntArray;

    invoke-direct {v6}, Landroid/util/IntArray;-><init>()V

    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;

    iget-boolean v7, v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsTrusted:Z

    if-eqz v7, :cond_1

    iget-boolean v5, v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl$VirtualDisplayWrapper;->mIsMirror:Z

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplays:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/util/IntArray;->add(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    :goto_2
    invoke-virtual {v6}, Landroid/util/IntArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6, v7}, Landroid/util/IntArray;->get(I)I

    move-result v5

    move v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
