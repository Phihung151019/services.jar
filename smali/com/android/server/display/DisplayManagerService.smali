.class public final Lcom/android/server/display/DisplayManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field public static final EMPTY_ARRAY:[I

.field public static final HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;


# instance fields
.field public final dateFormat:Ljava/text/SimpleDateFormat;

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAreUserDisabledHdrTypesAllowed:Z

.field public mBootCompleted:Z

.field public mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

.field public mBrightnessAnimStarted:Z

.field public final mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

.field public mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field public final mCallbackRecordByPidByUid:Landroid/util/SparseArray;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public mChangingPreferredMode:Z

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mConnectedExternalDisplayId:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultDisplayDefaultColorMode:I

.field public mDefaultDisplayTopInset:I

.field public final mDefaultHdrConversionMode:I

.field public mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

.field public final mDisplayAccessUIDs:Landroid/util/SparseArray;

.field public final mDisplayAdapters:Ljava/util/ArrayList;

.field public final mDisplayBlanker:Lcom/android/server/display/DisplayManagerService$1;

.field public final mDisplayBrightnessListeners:Ljava/util/ArrayList;

.field public final mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

.field public final mDisplayBrightnesses:Landroid/util/SparseArray;

.field public final mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

.field public final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field public final mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

.field public final mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

.field public mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field public final mDisplayPowerControllers:Landroid/util/SparseArray;

.field public final mDisplayStateListeners:Ljava/util/ArrayList;

.field public final mDisplayStateOverrideLocks:Ljava/util/ArrayList;

.field public final mDisplayStateOverrides:Landroid/util/SparseIntArray;

.field public final mDisplayStates:Landroid/util/SparseIntArray;

.field public final mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

.field public final mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

.field public mDualScreenPolicy:I

.field public final mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mExtraDisplayEventLogging:Z

.field public final mExtraDisplayLoggingPackageName:Ljava/lang/String;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mHbmBrightnessCallbacks:Landroid/util/SparseArray;

.field public mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

.field public final mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

.field public final mIdleModeReceiver:Lcom/android/server/display/DisplayManagerService$2;

.field public final mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

.field public mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public mIsDocked:Z

.field public mIsDreaming:Z

.field public mIsHbmEnabled:Z

.field public volatile mIsHdrOutputControlEnabled:Z

.field public mIsLoadedUserPreferredResolution:Z

.field public final mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public mMaxImportanceForRRCallbacks:I

.field public mMinimalPostProcessingAllowed:Z

.field public final mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

.field public final mMinimumBrightnessSpline:Landroid/util/Spline;

.field public mMirrorBuiltInDisplay:Z

.field public final mOverlayProperties:Landroid/hardware/OverlayProperties;

.field public mPendingTraversal:Z

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mPluginManager:Lcom/android/server/display/plugin/PluginManager;

.field public mPowerHandler:Landroid/os/Handler;

.field public final mPresentationDisplays:Ljava/util/HashSet;

.field public mProjectionService:Landroid/media/projection/IMediaProjectionManager;

.field public final mResolutionRestoreReceiver:Lcom/android/server/display/DisplayManagerService$2;

.field public final mRotationChangeReceiver:Lcom/android/server/display/DisplayManagerService$2;

.field public mSafeMode:Z

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

.field public mShouldDisableHdrConversion:Z

.field public mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

.field public mStableDisplaySize:Landroid/graphics/Point;

.field public mSupportedHdrOutputTypes:[I

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mSystemPreferredHdrOutputType:I

.field public mSystemReady:Z

.field public final mTempCallbacks:Ljava/util/ArrayList;

.field public final mTempViewports:Ljava/util/ArrayList;

.field public final mUiHandler:Landroid/os/Handler;

.field public final mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

.field public mUserDisabledHdrTypes:[I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public final mViewports:Ljava/util/ArrayList;

.field public mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

.field public mVolumeController:Lcom/android/server/display/VolumeController;

.field public final mWideColorSpace:Landroid/graphics/ColorSpace;

.field public mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

.field public mWifiDisplayScanRequestCount:I

.field public mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static $r8$lambda$0fXX8iUX_rY84S1y1UduidrCOrU(Lcom/android/server/display/DisplayManagerService;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "force_desktop_mode_on_external_displays"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static -$$Nest$mcreateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    move-object/from16 v5, p6

    const-string/jumbo v12, "Virtual Display: successfully set up virtual display "

    const-string v13, "Content Recording: failed to start mirroring - releasing virtual display "

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4, v5}, Lcom/android/server/display/DisplayManagerService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz p2, :cond_37

    if-eqz v11, :cond_36

    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->getFlags()I

    move-result v0

    if-eqz v7, :cond_1

    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/companion/virtual/VirtualDeviceManager;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/companion/virtual/VirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid virtual device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Unable to validate virtual device"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/Surface;->isSingleBuffered()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Surface can\'t be single-buffered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_4

    const-string v2, "DisplayManagerService"

    const-string/jumbo v6, "Public virtual displays are auto mirror by default, hence adding VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR."

    invoke-static {v2, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/lit8 v0, v0, 0x10

    :cond_4
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Public display must not be marked as SHOW_WHEN_LOCKED_INSECURE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_7

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_7

    const-string v2, "DisplayManagerService"

    const-string/jumbo v6, "Own content displays cannot auto mirror other displays, hence ignoring VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR."

    invoke-static {v2, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, v0, -0x11

    :cond_7
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_8

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8

    const-string v2, "DisplayManagerService"

    const-string v6, "Auto mirror displays must be in the default display group, hence ignoring VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP."

    invoke-static {v2, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, v0, -0x801

    :cond_8
    and-int/lit16 v2, v0, 0x800

    const v6, 0x8000

    if-nez v2, :cond_9

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_9

    and-int/lit16 v2, v0, 0x400

    const/16 v8, 0x400

    if-ne v2, v8, :cond_9

    if-eqz v7, :cond_9

    const-string v2, "DisplayManagerService"

    const-string/jumbo v8, "Own content displays owned by virtual devices are put in that device\'s display group, hence adding VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP."

    invoke-static {v2, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr v0, v6

    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const/16 v16, 0x0

    if-eqz v3, :cond_c

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/media/projection/IMediaProjectionManager;->isCurrentProjection(Landroid/media/projection/IMediaProjection;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->isValid()Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "DisplayManagerService"

    const-string/jumbo v10, "Reusing token: create virtual display for app reusing token"

    invoke-static {v8, v10}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v8

    invoke-interface {v8, v3}, Landroid/media/projection/IMediaProjectionManager;->requestConsentForInvalidProjection(Landroid/media/projection/IMediaProjection;)V

    const/4 v8, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_a
    move/from16 v8, v16

    :goto_3
    invoke-interface {v3, v0}, Landroid/media/projection/IMediaProjection;->applyVirtualDisplayFlags(I)I

    move-result v0

    move v10, v8

    :goto_4
    move v8, v0

    goto :goto_7

    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot create VirtualDisplay with non-current MediaProjection"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    :try_start_3
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Unable to validate media projection or flags"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    move/from16 v10, v16

    goto :goto_4

    :goto_7
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v14, 0x3e8

    if-eq v4, v14, :cond_12

    and-int/lit8 v0, v8, 0x10

    if-eqz v0, :cond_12

    if-nez v3, :cond_d

    move/from16 v17, v6

    :goto_8
    move/from16 v0, v16

    goto :goto_9

    :cond_d
    :try_start_4
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->canProjectVideo()Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v17, v6

    goto :goto_9

    :catch_2
    move-exception v0

    const-string v15, "DisplayManagerService"

    move/from16 v17, v6

    const-string/jumbo v6, "Unable to query projection service for permissions"

    invoke-static {v15, v6, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_9
    if-nez v0, :cond_13

    if-eqz v7, :cond_e

    :try_start_5
    invoke-interface {v7}, Landroid/companion/virtual/IVirtualDevice;->canCreateMirrorDisplays()Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_a

    :catch_3
    move-exception v0

    const-string v6, "DisplayManagerService"

    const-string/jumbo v15, "Unable to query virtual device for permissions"

    invoke-static {v6, v15, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    move/from16 v0, v16

    :goto_a
    if-nez v0, :cond_13

    const-string/jumbo v0, "createVirtualDisplayInternal"

    const-string/jumbo v6, "android.permission.CAPTURE_VIDEO_OUTPUT"

    invoke-virtual {v1, v6, v0}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string/jumbo v6, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-virtual {v1, v6, v0}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_b

    :cond_f
    move/from16 v0, v16

    goto :goto_c

    :cond_10
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_11

    goto :goto_d

    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ADD_MIRROR_DISPLAY, CAPTURE_VIDEO_OUTPUT or CAPTURE_SECURE_VIDEO_OUTPUT permission, or an appropriate MediaProjection token in order to create a screen sharing virtual display. In order to create a virtual display that does not perform screen sharing (mirroring), please use the flag VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move/from16 v17, v6

    :cond_13
    :goto_d
    if-eq v4, v14, :cond_16

    and-int/lit8 v0, v8, 0x4

    if-eqz v0, :cond_16

    if-nez v3, :cond_14

    :goto_e
    move/from16 v0, v16

    goto :goto_f

    :cond_14
    :try_start_6
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->canProjectSecureVideo()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    const-string v6, "DisplayManagerService"

    const-string/jumbo v15, "Unable to query projection service for permissions"

    invoke-static {v6, v15, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_f
    if-nez v0, :cond_16

    const-string/jumbo v0, "createVirtualDisplayInternal"

    const-string/jumbo v6, "android.permission.CAPTURE_SECURE_VIDEO_OUTPUT"

    invoke-virtual {v1, v6, v0}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_10

    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires CAPTURE_SECURE_VIDEO_OUTPUT or an appropriate MediaProjection token to create a secure virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_10
    if-eq v4, v14, :cond_18

    and-int/lit16 v0, v8, 0x400

    if-eqz v0, :cond_18

    const-string/jumbo v0, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string/jumbo v6, "createVirtualDisplay()"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_11

    :cond_17
    const-string v0, "162627132"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempt to create a trusted display without holding permission!"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ADD_TRUSTED_DISPLAY permission to create a trusted virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_11
    if-eqz v7, :cond_19

    and-int/lit8 v0, v8, 0x10

    if-eqz v0, :cond_19

    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_19

    const-string v0, "DisplayManagerService"

    const-string/jumbo v6, "Mirror displays created by a virtual device cannot show presentations, hence ignoring flag VIRTUAL_DISPLAY_FLAG_PRESENTATION."

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v8, v8, -0x3

    :cond_19
    if-eq v4, v14, :cond_1b

    and-int/lit16 v0, v8, 0x800

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "android.permission.ADD_TRUSTED_DISPLAY"

    const-string/jumbo v6, "createVirtualDisplay()"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_12

    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ADD_TRUSTED_DISPLAY permission to create a virtual display which is not in the default DisplayGroup."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_12
    and-int/lit16 v0, v8, 0x1000

    if-eqz v0, :cond_1c

    and-int/lit16 v0, v8, 0x800

    if-nez v0, :cond_1c

    and-int v0, v8, v17

    if-nez v0, :cond_1c

    const-string v0, "DisplayManagerService"

    const-string v6, "Always unlocked displays cannot be in the default display group, hence ignoring flag VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED."

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v8, v8, -0x1001

    :cond_1c
    and-int/lit16 v0, v8, 0x1000

    if-eqz v0, :cond_1e

    if-eq v4, v14, :cond_1e

    const-string/jumbo v0, "android.permission.ADD_ALWAYS_UNLOCKED_DISPLAY"

    const-string/jumbo v6, "createVirtualDisplay()"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_13

    :cond_1d
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires ADD_ALWAYS_UNLOCKED_DISPLAY permission to create an always unlocked virtual display."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    :goto_13
    const/high16 v0, 0x100000

    and-int/2addr v0, v8

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v14, v4}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_14

    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Carlife display only create by System app"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_14
    and-int/lit16 v0, v8, 0x4000

    if-eqz v0, :cond_21

    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_21

    const-string v0, "DisplayManagerService"

    const-string/jumbo v6, "Untrusted displays cannot have own focus, hence ignoring flag VIRTUAL_DISPLAY_FLAG_OWN_FOCUS."

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v8, v8, -0x4001

    :cond_21
    const/high16 v0, 0x10000

    and-int/2addr v0, v8

    if-eqz v0, :cond_22

    and-int/lit16 v0, v8, 0x4000

    if-nez v0, :cond_22

    const-string v0, "DisplayManagerService"

    const-string/jumbo v6, "Virtual displays that cannot steal top focus must have their own  focus, hence ignoring flag VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED."

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x10001

    and-int/2addr v8, v0

    :cond_22
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_23

    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_23

    const-string v0, "DisplayManagerService"

    const-string/jumbo v6, "Untrusted displays cannot show system decorations, hence ignoring flag VIRTUAL_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS."

    invoke-static {v0, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v8, v8, -0x201

    :cond_23
    and-int/lit16 v0, v8, 0x600

    const/16 v6, 0x200

    if-ne v0, v6, :cond_25

    const-string/jumbo v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string/jumbo v6, "createVirtualDisplay()"

    invoke-virtual {v1, v0, v6}, Lcom/android/server/display/DisplayManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_15

    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    :try_start_7
    invoke-static {v5, v4, v11}, Lcom/android/server/display/VirtualDisplayAdapter;->generateDisplayUniqueId(Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->isHomeSupported()Z

    move-result v0

    if-eqz v0, :cond_28

    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_26

    const-string v0, "DisplayManagerService"

    const-string v2, "Display created with home support but lacks VIRTUAL_DISPLAY_FLAG_TRUSTED, ignoring the home support request."

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v14

    goto/16 :goto_23

    :cond_26
    and-int/lit8 v0, v8, 0x10

    if-eqz v0, :cond_27

    const-string v0, "DisplayManagerService"

    const-string v2, "Display created with home support but has VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR, ignoring the home support request."

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_27
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v0, v6, v3, v2}, Lcom/android/server/wm/WindowManagerInternal;->setHomeSupportedOnDisplay(Ljava/lang/String;IZ)V

    const/4 v2, 0x1

    goto :goto_17

    :cond_28
    :goto_16
    move/from16 v2, v16

    :goto_17
    invoke-virtual {v11}, Landroid/hardware/display/VirtualDisplayConfig;->isIgnoreActivitySizeRestrictions()Z

    move-result v0

    if-eqz v0, :cond_29

    and-int/lit16 v0, v8, 0x400

    if-nez v0, :cond_2a

    const-string v0, "DisplayManagerService"

    const-string v3, "Display created to ignore activity size restrictions, but lacks VIRTUAL_DISPLAY_FLAG_TRUSTED, ignoring the request."

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v3, 0x1

    const/16 v18, 0x5

    goto :goto_18

    :cond_2a
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v6, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setIgnoreActivitySizeRestrictionsOnDisplay(Ljava/lang/String;IZ)V

    move/from16 v18, v2

    move v0, v3

    goto :goto_19

    :goto_18
    move v0, v2

    :goto_19
    iget-object v2, v1, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v21, v14

    move/from16 v15, v18

    move-wide/from16 v18, v21

    move-object/from16 v20, v2

    move/from16 v17, v3

    move v14, v10

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v10, v8

    move-object/from16 v8, p5

    :try_start_8
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/display/DisplayManagerService;->createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I

    move-result v5

    const/4 v2, -0x1

    if-eq v5, v2, :cond_2b

    if-eqz p4, :cond_2b

    if-eqz p5, :cond_2b

    iget-object v7, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-static/range {p4 .. p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v7, "DisplayManagerService"

    const-string/jumbo v8, "Virtual Display: successfully created virtual display"

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catchall_2
    move-exception v0

    goto/16 :goto_22

    :cond_2b
    :goto_1a
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-ne v5, v2, :cond_2c

    if-eqz v0, :cond_2c

    :try_start_9
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v6, v15}, Lcom/android/server/wm/WindowManagerInternal;->clearDisplaySettings(Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1b

    :catchall_3
    move-exception v0

    goto/16 :goto_23

    :cond_2c
    :goto_1b
    const/4 v6, 0x0

    if-eqz v3, :cond_30

    :try_start_a
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    if-nez v0, :cond_2d

    move-object v0, v6

    goto :goto_1c

    :cond_2d
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    :goto_1c
    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->getTaskId()I

    move-result v7

    if-nez v0, :cond_2f

    invoke-interface {v3}, Landroid/media/projection/IMediaProjection;->isRecordingOverlay()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/ContentRecordingSession;->createOverlaySession(II)Landroid/view/ContentRecordingSession;

    move-result-object v6

    goto :goto_1e

    :catch_5
    move-exception v0

    goto :goto_1d

    :cond_2e
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/display/VirtualDisplayConfig;->getDisplayIdToMirror()I

    move-result v0

    invoke-static {v0}, Landroid/view/ContentRecordingSession;->createDisplaySession(I)Landroid/view/ContentRecordingSession;

    move-result-object v6

    goto :goto_1e

    :cond_2f
    invoke-static {v0, v7}, Landroid/view/ContentRecordingSession;->createTaskSession(Landroid/os/IBinder;I)Landroid/view/ContentRecordingSession;

    move-result-object v6
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_1e

    :goto_1d
    :try_start_b
    const-string v4, "DisplayManagerService"

    const-string/jumbo v7, "Unable to retrieve the projection\'s launch cookie"

    invoke-static {v4, v7, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_1e
    if-nez v3, :cond_31

    and-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_32

    :cond_31
    move/from16 v16, v17

    :cond_32
    if-eqz v16, :cond_35

    if-eq v5, v2, :cond_35

    if-eqz v6, :cond_35

    invoke-virtual {v6, v5}, Landroid/view/ContentRecordingSession;->setVirtualDisplayId(I)Landroid/view/ContentRecordingSession;

    invoke-virtual {v6, v14}, Landroid/view/ContentRecordingSession;->setWaitingForConsent(Z)Landroid/view/ContentRecordingSession;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getProjectionService()Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    invoke-interface {v0, v6, v3}, Landroid/media/projection/IMediaProjectionManager;->setContentRecordingSession(Landroid/view/ContentRecordingSession;Landroid/media/projection/IMediaProjection;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p2 .. p2}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService;->releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    goto :goto_21

    :catch_6
    move-exception v0

    goto :goto_1f

    :cond_33
    if-eqz v3, :cond_34

    :try_start_d
    const-string v0, "DisplayManagerService"

    const-string v1, "Content Recording: notifying MediaProjection of successful VirtualDisplay creation."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3, v5}, Landroid/media/projection/IMediaProjection;->notifyVirtualDisplayCreated(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_34
    :try_start_e
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :goto_1f
    const-string v1, "DisplayManagerService"

    const-string/jumbo v2, "Unable to tell MediaProjectionManagerService to set the content recording session"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :cond_35
    :goto_20
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_21
    return v5

    :goto_22
    :try_start_f
    monitor-exit v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :goto_23
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "virtualDisplayConfig must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "appToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "packageName must match the calling uid"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static -$$Nest$mdeliverDeviceEvent(ILandroid/os/Bundle;Lcom/android/server/display/DisplayManagerService;)V
    .locals 6

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delivering device event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v3, p1, p0}, Landroid/hardware/display/IDisplayManagerCallback;->onDeviceEvent(Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that displays changed, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdeliverDisplayEvent(Lcom/android/server/display/DisplayManagerService;ILandroid/util/ArraySet;I)V
    .locals 9

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delivering display event: displayId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", uids="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deliverDisplayEvent#event="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", uids="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_7

    if-eqz p2, :cond_5

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    iget v6, v6, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v4, p2, :cond_e

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    packed-switch p3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown display event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayManagerService"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :pswitch_0
    const-wide/16 v7, 0x200

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_1
    const-wide/16 v7, 0x80

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_2
    const-wide/16 v7, 0x40

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_3
    const-wide/16 v7, 0x20

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_4
    const-wide/16 v7, 0x10

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_5
    const-wide/16 v7, 0x8

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_6
    const-wide/16 v7, 0x4

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_7
    const-wide/16 v7, 0x2

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    goto :goto_5

    :pswitch_8
    const-wide/16 v7, 0x1

    and-long/2addr v2, v7

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    :goto_5
    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    monitor-enter v2

    :try_start_1
    invoke-virtual {p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->isReadyLocked()Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    iget-object v3, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPendingDisplayEvents:Ljava/util/ArrayList;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    :goto_6
    invoke-virtual {p2, p1, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->addDisplayEvent(II)V

    monitor-exit v2

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_7

    :cond_9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p2, p3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->shouldReceiveRefreshRateWithChangeUpdate(I)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    :try_start_2
    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v2, p1, p3}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that displays changed, assuming it died."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    goto :goto_8

    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_b
    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v3, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayManagerService;->extraLogging(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "DisplayManagerService"

    const-string/jumbo v3, "Not sending displayEvent: "

    const-string v5, " due to mask:"

    invoke-static {p3, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "notifyDisplayEventAsync#notSendingEvent="

    const-string v3, ",mInternalEventFlagsMask="

    invoke-static {p3, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p2, p2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_d
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_e
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_9
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static -$$Nest$mdeliverDisplayVolumeEvent(ILandroid/os/Bundle;Lcom/android/server/display/DisplayManagerService;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delivering display volume event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p2, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v4, p0, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayVolumeEvent(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to notify process "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v3, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " that displays changed, assuming it died."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    iput-object p0, p2, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    if-eqz p0, :cond_3

    const-string/jumbo p2, "minVol"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    const-string/jumbo p2, "maxVol"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    const-string/jumbo p2, "curVol"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    const-string/jumbo p2, "isMute"

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "notifyDisplayVolumeEvnet: max="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/display/VolumeController;->mMaxVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", min="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/VolumeController;->mMinVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", vol="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/display/VolumeController;->mVolume:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", muted="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/VolumeController;->mMuted:Z

    const-string/jumbo p2, "VolumeController"

    invoke-static {p2, p1, p0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_3
    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdeliverDisplayVolumeKeyEvent(Lcom/android/server/display/DisplayManagerService;I)V
    .locals 6

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delivering volume Key event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v3, p1}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayVolumeKeyEvent(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that displays changed, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdeliverPresentationDisplayInfoEvent(Lcom/android/server/display/DisplayManagerService;IILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    iput-object p3, v0, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->addPresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->removePresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V

    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdeliverWifiDisplayParameterEvent(Lcom/android/server/display/DisplayManagerService;ILjava/util/List;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Delivering wifidisplay parameter event="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    invoke-interface {v3, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onWifiDisplayParameterEvent(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to notify process "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " that displays changed, assuming it died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mdumpInternal(Lcom/android/server/display/DisplayManagerService;Ljava/io/PrintWriter;)V
    .locals 13

    const-string v0, "DISPLAY MANAGER (dumpsys display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_e

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSafeMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mPendingTraversal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mViewports="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDefaultDisplayDefaultColorMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mWifiDisplayScanRequestCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mStableDisplaySize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMinimumBrightnessCurve="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMaxImportanceForRRCallbacks="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mUserPreferredMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mUserDisabledHdrTypes: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v7, v6

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mHdrConversionMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display States: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "---------------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_2
    if-ge v7, v6, :cond_4

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Display Id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Display State="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Display Brightness="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Display SdrBrightness="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v10, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display State Override Locks: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_3
    if-ge v7, v6, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display State Overrides: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_4
    if-ge v7, v6, :cond_6

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Display Id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  Display State Override="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display Adapters: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "------------------------"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :goto_5
    if-ge v8, v7, :cond_7

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/server/display/DisplayAdapter;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lcom/android/server/display/DisplayAdapter;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Display Devices: size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, v7, Lcom/android/server/display/DisplayDeviceRepository;->mDisplayDevices:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "-----------------------"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v7, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;

    const/4 v8, 0x1

    invoke-direct {v7, v8, p1, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v6, p1}, Lcom/android/server/display/LogicalDisplayMapper;->dumpLocked(Ljava/io/PrintWriter;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Callbacks: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "-----------------"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_6
    if-ge v7, v6, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    invoke-static {v9}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->-$$Nest$mdump(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v6, p1}, Lcom/android/server/display/PersistentDataStore;->dump(Ljava/io/PrintWriter;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDisplayBrightnessListeners: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;

    const/4 v8, 0x0

    invoke-direct {v7, v8, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_9
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mDisplayStateListenerInfo: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;

    const/4 v8, 0x1

    invoke-direct {v7, v8, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda20;-><init>(ILjava/io/PrintWriter;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_a
    const-string/jumbo v6, "VRR request about brightness animation:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mBrightnessAnimStarted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimStarted:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mBrightnessAnimRefreshRateToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HBM brightness Listener: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-lez v6, :cond_b

    move v7, v5

    :goto_7
    if-ge v7, v6, :cond_b

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": mUid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mUid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mPid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v6, "MTK power throttling as per HBM"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v6, "  SEC_FEATURE_ENABLE_MTK_POWER_THROTTLING=false"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mIsMtkPtHintExist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mMtKPowerThrottling="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Display Window Policy Controllers: size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v7, v5

    :goto_8
    if-ge v7, v6, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/window/DisplayWindowPolicyController;

    const-string v9, "  "

    invoke-virtual {v8, v9, p1}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Display Power Controllers: size="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    if-ge v5, v4, :cond_d

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayPowerController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v3, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    :cond_e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {v0, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "Small area detection allowlist:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "-------------------------------"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Packages:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/display/SmallAreaDetectionController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, v0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " threshold = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/display/SmallAreaDetectionController;->mAllowPkgMap:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception p0

    goto :goto_b

    :cond_f
    monitor-exit v2

    goto :goto_c

    :goto_b
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_10
    :goto_c
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    iget-object v2, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_2
    iget-object v0, v0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayTopology;->dump(Ljava/io/PrintWriter;)V

    monitor-exit v2

    goto :goto_d

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_11
    :goto_d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    invoke-virtual {v0, v1}, Lcom/android/server/display/plugin/PluginManager;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {p0, p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->dump(Ljava/io/PrintWriter;)V

    return-void

    :goto_e
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mloadBrightnessConfigurations(Lcom/android/server/display/DisplayManagerService;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/display/DisplayManagerService;II)V

    const/4 p0, 0x1

    invoke-virtual {v2, v3, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mlogScreenBrightnessOverrideLocked(Lcom/android/server/display/DisplayManagerService;Landroid/util/SparseArray;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const-string/jumbo v3, "[api] setScreenBrightnessOverrideFromWindowManager: id:"

    const-string v4, "DisplayManagerService"

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    invoke-direct {v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;-><init>()V

    invoke-virtual {v5, v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)V

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static -$$Nest$mregisterAdditionalDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .locals 9

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/OverlayDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/display/OverlayDisplayAdapter$1;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lcom/android/server/display/OverlayDisplayAdapter$1;-><init>(ILjava/lang/Object;)V

    iget-object v2, v2, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->registerWifiDisplayAdapterLocked()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mregisterCallbackInternal(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 9

    iget-object v1, p5, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v0, p5, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mInternalEventFlagsMask:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;-><init>(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v7}, Landroid/hardware/display/IDisplayManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, v8, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, v8, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_1

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    iget-object p1, v8, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    invoke-virtual {p1, v4, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mregisterDefaultDisplayAdapters(Lcom/android/server/display/DisplayManagerService;)V
    .locals 10

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter;

    new-instance v9, Lcom/android/server/display/LocalDisplayAdapter$Injector;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {v2 .. v9}, Lcom/android/server/display/LocalDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/notifications/DisplayNotificationManager;Lcom/android/server/display/LocalDisplayAdapter$Injector;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->registerLocked()V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/VirtualDisplayAdapter;

    new-instance v7, Lcom/android/server/display/VirtualDisplayAdapter$1;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {v2 .. v8}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    iput-object p0, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mregisterHbmBrightnessCallbackInternal(IILandroid/hardware/display/IHbmBrightnessCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 4

    const-string/jumbo v0, "[api] registerHbmBrightnessCallbackInternal: callingPid="

    const-string/jumbo v1, "registerHbmBrightnessCallbackInternal: already registered. pid="

    iget-object v2, p3, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_0
    iget-object v3, p3, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    if-eqz v3, :cond_0

    const-string p2, "DisplayManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uid="

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string v1, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " callingUid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;-><init>(IILandroid/hardware/display/IHbmBrightnessCallback;Lcom/android/server/display/DisplayManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p2}, Landroid/hardware/display/IHbmBrightnessCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p3, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mrequestDisplayStateInternal(Lcom/android/server/display/DisplayManagerService;IIFF)V
    .locals 10

    const/4 v0, 0x2

    if-nez p2, :cond_0

    move p2, v0

    :cond_0
    const/high16 v1, 0x7fc00000    # Float.NaN

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    cmpl-float v5, p3, v2

    if-eqz v5, :cond_2

    cmpg-float v5, p3, v3

    if-gez v5, :cond_2

    move p3, v1

    goto :goto_0

    :cond_2
    sget v5, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    cmpl-float v6, p3, v5

    if-lez v6, :cond_3

    move p3, v5

    :cond_3
    :goto_0
    if-ne p2, v4, :cond_4

    move p4, v2

    goto :goto_2

    :cond_4
    cmpl-float v2, p4, v2

    if-eqz v2, :cond_5

    cmpg-float v2, p4, v3

    if-gez v2, :cond_5

    :goto_1
    move p4, v1

    goto :goto_2

    :cond_5
    sget v1, Lcom/android/server/display/brightness/BrightnessUtils;->sScreenExtendedBrightnessRangeMaximum:F

    cmpl-float v2, p4, v1

    if-lez v2, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    :goto_3
    if-ltz v2, :cond_18

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v6, p2, :cond_8

    iget v6, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    cmpl-float v6, v6, p3

    if-nez v6, :cond_8

    iget v6, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    cmpl-float v6, v6, p4

    if-nez v6, :cond_8

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_8
    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-eq v6, p2, :cond_a

    if-eq p2, v0, :cond_9

    if-ne p2, v4, :cond_a

    :cond_9
    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-eqz v6, :cond_f

    if-ne p1, v4, :cond_f

    :cond_b
    iget v6, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    cmpl-float v6, v6, p3

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c

    goto :goto_7

    :cond_c
    sget-boolean v6, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v6, :cond_e

    const/high16 v6, 0x42c80000    # 100.0f

    rem-float v7, p3, v6

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_d

    move v3, p3

    move v6, v4

    goto :goto_5

    :cond_d
    div-float v3, p3, v6

    :goto_4
    move v6, v0

    goto :goto_5

    :cond_e
    move v3, p3

    goto :goto_4

    :goto_5
    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v0

    :goto_6
    if-ge v8, v7, :cond_f

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;

    invoke-interface {v9, p1, v3}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;->onChanged(IF)V

    goto :goto_6

    :cond_f
    :goto_7
    if-nez p1, :cond_11

    iget-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mIsHbmEnabled:Z

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, p3, v6

    if-lez v6, :cond_10

    move v0, v4

    :cond_10
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mIsHbmEnabled:Z

    if-eq v3, v0, :cond_11

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayHbmBrightnessEventLocked(IZ)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-eq v0, p2, :cond_12

    const-string v0, "DisplayManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@display_state requestDisplayStateInternal: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " displayId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const-wide/32 v6, 0x20000

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", brightness="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", sdrBrightness="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requestDisplayStateInternal:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7, v3, v0, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    iput p3, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    iput p4, v5, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p3, p1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p3

    iget-boolean p4, p3, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    if-nez p4, :cond_14

    iget-boolean p4, p3, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-nez p4, :cond_15

    :cond_14
    if-eq p2, v4, :cond_15

    monitor-exit v1

    return-void

    :cond_15
    iget-object p2, p3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {v6, v7}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_16

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "requestDisplayStateInternal:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, v7, p2, p1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    :cond_16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_17

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_17
    return-void

    :cond_18
    :goto_8
    :try_start_1
    monitor-exit v1

    return-void

    :goto_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mrotateVirtualDisplayInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-string v0, "HiddenDisplay"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->freezeDisplayRotation(IILjava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msetBrightnessConfigurationForDisplayWithStatsInternal(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v2

    iget-object v4, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v4, p1, p3, p4}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    iput-boolean v3, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    invoke-static {v1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfigTag(Lcom/android/server/display/DisplayDevice;)Ljava/lang/String;

    move-result-object p3

    sget-boolean p4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz p4, :cond_2

    const-string p4, "(sub)"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfigTag(Lcom/android/server/display/DisplayDevice;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, v2, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-virtual {p4, p5, p6, p7, p3}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p0
.end method

.method public static -$$Nest$msetDisplayStateOverrideInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;II)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    move v6, v9

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v9

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    :goto_2
    if-gez v1, :cond_4

    if-nez p2, :cond_3

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "setDisplayStateOverrideInternal: sameRequest: unknown"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return-void

    :cond_3
    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJI)V

    move-object p0, v1

    invoke-virtual {p0, v6, v2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, v0, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DisplayStateOverrideLock is already dead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v2, p1

    move v3, p2

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 p2, 0x20

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-nez v3, :cond_5

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iget p1, p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    if-eq v3, p1, :cond_6

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iput v3, p1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    invoke-virtual {p0, v6, v2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V

    :goto_3
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance p2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, v7}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda13;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda14;-><init>(I)V

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :cond_6
    :try_start_3
    const-string p1, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setDisplayStateOverrideInternal: sameRequest: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, v2, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V

    monitor-exit v8

    return-void

    :goto_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msetVirtualDisplayRotationInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayDevice;

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-nez p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-string/jumbo v0, "Virtual Display"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerInternal;->setNonDefaultDisplayRotation(IILjava/lang/String;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static -$$Nest$msetVirtualDisplaySurfaceInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Update surface for VirtualDisplay "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "VirtualDisplayAdapter"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static -$$Nest$mstartWifiDisplayScanInternal(Lcom/android/server/display/DisplayManagerService;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "The calling process has not registered an IDisplayManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DisplayManagerService"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/display/DisplayManagerService;->EMPTY_ARRAY:[I

    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {v1, v0}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    sput-object v1, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/display/DisplayManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$Injector;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$UidImportanceListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    const/4 v10, 0x0

    new-array v1, v10, [I

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    const/4 v12, 0x0

    iput-object v12, v0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    iput-boolean v10, v0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    const/4 v13, -0x1

    iput v13, v0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    new-instance v6, Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mCallbackRecordByPidByUid:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayWindowPolicyControllers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    invoke-direct {v1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayGroupListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessOverrideRequests:Landroid/util/SparseArray;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FLIP_LARGE_COVER:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x145

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    :goto_0
    iput v1, v0, Lcom/android/server/display/DisplayManagerService;->mMaxImportanceForRRCallbacks:I

    new-instance v1, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v1, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayManagerService$1;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/display/PersistentDataStore;

    new-instance v3, Lcom/android/server/display/PersistentDataStore$Injector;

    invoke-direct {v3}, Lcom/android/server/display/PersistentDataStore$Injector;-><init>()V

    invoke-direct {v1, v3}, Lcom/android/server/display/PersistentDataStore;-><init>(Lcom/android/server/display/PersistentDataStore$Injector;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mTempCallbacks:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mTempViewports:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd, HH:mm:ss.SSS"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    iput-boolean v10, v0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    new-instance v3, Lcom/android/server/display/DisplayManagerService$2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Lcom/android/server/display/DisplayManagerService$2;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$2;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mResolutionRestoreReceiver:Lcom/android/server/display/DisplayManagerService$2;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$2;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/server/display/DisplayManagerService$2;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mRotationChangeReceiver:Lcom/android/server/display/DisplayManagerService$2;

    new-instance v14, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v14, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object v14, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceConfigProvider:Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    iput v13, v0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnessListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    iput v13, v0, Lcom/android/server/display/DisplayManagerService;->mConnectedExternalDisplayId:I

    iput-object v12, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessAnimRefreshRateToken:Lcom/android/server/display/mode/RefreshRateToken;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    new-instance v3, Lcom/android/server/utils/FoldSettingProvider;

    new-instance v4, Lcom/android/internal/util/SettingsWrapper;

    invoke-direct {v4}, Lcom/android/internal/util/SettingsWrapper;-><init>()V

    new-instance v5, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v3, v2, v4, v5}, Lcom/android/server/utils/FoldSettingProvider;-><init>(Landroid/content/Context;Lcom/android/internal/util/SettingsWrapper;Lcom/android/internal/foldables/FoldLockSettingAvailabilityProvider;)V

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v5, p2

    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v9}, Lcom/android/server/display/feature/DisplayManagerFlags;-><init>()V

    iput-object v9, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    new-instance v8, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-direct {v8, v0, v4}, Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V

    iput-object v8, v0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    new-instance v5, Landroid/os/HandlerExecutor;

    invoke-direct {v5, v8}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/DisplayDeviceRepository;

    invoke-direct {v5, v6, v1}, Lcom/android/server/display/DisplayDeviceRepository;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/PersistentDataStore;)V

    iput-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    new-instance v1, Lcom/android/server/display/LogicalDisplayMapper;

    move-object v7, v4

    new-instance v4, Lcom/android/internal/foldables/FoldGracePeriodProvider;

    invoke-direct {v4}, Lcom/android/internal/foldables/FoldGracePeriodProvider;-><init>()V

    move-object/from16 v17, v7

    move-object v7, v6

    new-instance v6, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v6, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move/from16 v18, v11

    move-object/from16 v11, v17

    invoke-direct/range {v1 .. v9}, Lcom/android/server/display/LogicalDisplayMapper;-><init>(Landroid/content/Context;Lcom/android/server/utils/FoldSettingProvider;Lcom/android/internal/foldables/FoldGracePeriodProvider;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/DisplayManagerService$SyncRoot;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    move-object/from16 v19, v2

    move-object v2, v1

    move-object v1, v8

    move-object/from16 v8, v19

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {v2, v8, v1, v9, v14}, Lcom/android/server/display/mode/DisplayModeDirector;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda5;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    new-instance v2, Lcom/android/internal/display/BrightnessSynchronizer;

    iget-object v3, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v3

    invoke-direct {v2, v8, v11, v3}, Lcom/android/internal/display/BrightnessSynchronizer;-><init>(Landroid/content/Context;Landroid/os/Looper;Z)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayDefaultColorMode:I

    const-string/jumbo v3, "persist.sys.displayinset.top"

    invoke-static {v3, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110177

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move/from16 v3, v18

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    iput v3, v0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    const v3, 0x1070128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    new-array v6, v4, [F

    move v11, v10

    :goto_2
    const/high16 v13, 0x7fc00000    # Float.NaN

    if-ge v11, v4, :cond_2

    invoke-virtual {v3, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    aput v13, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const v3, 0x1070129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v4, v3, [F

    move v11, v10

    :goto_3
    if-ge v11, v3, :cond_3

    invoke-virtual {v2, v11, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    aput v14, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/hardware/display/Curve;

    invoke-direct {v2, v6, v4}, Landroid/hardware/display/Curve;-><init>([F[F)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    invoke-static {v6, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    iput v10, v0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-static {}, Landroid/view/SurfaceControl;->getCompositionColorSpaces()[Landroid/graphics/ColorSpace;

    move-result-object v2

    aget-object v2, v2, v18

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mWideColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {}, Landroid/view/SurfaceControl;->getOverlaySupport()Landroid/hardware/OverlayProperties;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mOverlayProperties:Landroid/hardware/OverlayProperties;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v8, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const v3, 0x30000006

    const-string v4, "DisplayDeviceRepository.mHDMIWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, v5, Lcom/android/server/display/DisplayDeviceRepository;->mHDMIWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v10, v0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    new-instance v2, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-static {}, Landroid/sysprop/DisplayProperties;->debug_vri_package()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayLoggingPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    new-instance v2, Lcom/android/server/display/ExternalDisplayStatsService;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    new-instance v4, Lcom/android/server/display/ExternalDisplayStatsService$Injector;

    invoke-direct {v4, v8, v1, v3}, Lcom/android/server/display/ExternalDisplayStatsService$Injector;-><init>(Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;)V

    invoke-direct {v2, v4}, Lcom/android/server/display/ExternalDisplayStatsService;-><init>(Lcom/android/server/display/ExternalDisplayStatsService$Injector;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    new-instance v3, Lcom/android/server/display/notifications/DisplayNotificationManager;

    new-instance v4, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    invoke-direct {v4, v8, v9, v2}, Lcom/android/server/display/notifications/DisplayNotificationManager$1;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/ExternalDisplayStatsService;)V

    invoke-direct {v3, v9, v8, v4}, Lcom/android/server/display/notifications/DisplayNotificationManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    new-instance v2, Lcom/android/server/display/ExternalDisplayPolicy;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayManagerService$1;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-direct {v2, v3}, Lcom/android/server/display/ExternalDisplayPolicy;-><init>(Lcom/android/server/display/DisplayManagerService$1;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    iget-object v2, v9, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayTopology:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/app/backup/BackupManager;

    invoke-direct {v2, v8}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v3, 0x7

    invoke-direct {v4, v0, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    new-instance v3, Lcom/android/server/display/DisplayTopologyCoordinator;

    move-object v5, v3

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    move-object v6, v5

    new-instance v5, Landroid/os/HandlerExecutor;

    invoke-direct {v5, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v1, v6

    move-object v6, v7

    new-instance v7, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v10, 0x0

    invoke-direct {v7, v10, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;

    invoke-direct {v2}, Lcom/android/server/display/DisplayTopologyCoordinator$Injector;-><init>()V

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayTopologyCoordinator;-><init>(Lcom/android/server/display/DisplayTopologyCoordinator$Injector;Ljava/util/function/BooleanSupplier;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Lcom/android/server/display/DisplayManagerService$SyncRoot;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    goto :goto_4

    :cond_4
    iput-object v12, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    :goto_4
    new-instance v1, Lcom/android/server/display/plugin/PluginManager;

    new-instance v2, Lcom/android/server/display/plugin/PluginManager$Injector;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-direct {v1, v8, v9, v2}, Lcom/android/server/display/plugin/PluginManager;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager$Injector;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create DisplayManagerService took to complete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;
    .locals 2

    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Display "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not support input device matching."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayManagerService"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addBrightnessWeights(FFFF)V
    .locals 8

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayPowerController;FFFF)V

    iget-object p0, v3, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    iget-object p2, v3, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {p2, v2, p0, p1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addDisplayPowerControllerLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/DisplayPowerController;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v1, :cond_1

    iget v1, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/server/display/BrightnessTracker;

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v1

    new-instance v9, Lcom/android/server/display/BrightnessSetting;

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-direct {v9, v1, v2, v7, v3}, Lcom/android/server/display/BrightnessSetting;-><init>(ILcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    invoke-virtual {v1, v7}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    move-result-object v11

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService;->mPowerHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v8, v0, Lcom/android/server/display/DisplayManagerService;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v10, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    const/4 v1, 0x0

    invoke-direct {v10, v0, v7, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V

    iget-boolean v12, v0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    new-instance v14, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;

    const/4 v1, 0x1

    invoke-direct {v14, v0, v7, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/LogicalDisplay;I)V

    new-instance v15, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v15, v0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/display/DisplayPowerController;

    iget-object v13, v0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v6, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBlanker:Lcom/android/server/display/DisplayManagerService$1;

    invoke-direct/range {v1 .. v15}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayManagerService$1;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessSetting;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;Lcom/android/server/display/HighBrightnessModeMetadata;ZLcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda22;Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;)V

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    iget v2, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v1
.end method

.method public final addPresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayManagerService"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "Presentation has been added already"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to add presentation("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 5

    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerController;

    if-eqz v2, :cond_1

    iget v3, p1, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/server/display/DisplayManagerService;->updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHighBrightnessModeMetadataMapper:Lcom/android/server/display/HighBrightnessModeMetadataMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeMetadataMapper;->getHighBrightnessModeMetadataLocked(Lcom/android/server/display/LogicalDisplay;)Lcom/android/server/display/HighBrightnessModeMetadata;

    move-result-object p1

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/display/DisplayPowerController;->onDisplayChanged(Lcom/android/server/display/HighBrightnessModeMetadata;II)V

    :cond_1
    return-void
.end method

.method public final checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo p0, "Permission Denial: "

    const-string v0, " from pid="

    invoke-static {p0, p2, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requires "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final clearUserDisabledHdrTypesLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "user_disabled_hdr_formats"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final configurePreferredDisplayModeLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Point;

    iget v5, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    iget v4, v4, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    invoke-direct {v3, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    :cond_2
    :goto_0
    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget v4, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    :cond_5
    :goto_1
    if-nez v3, :cond_6

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Landroid/view/Display$Mode$Builder;

    invoke-direct {v1}, Landroid/view/Display$Mode$Builder;-><init>()V

    if-eqz v3, :cond_7

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Display$Mode$Builder;->setResolution(II)Landroid/view/Display$Mode$Builder;

    :cond_7
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/Display$Mode$Builder;->setRefreshRate(F)Landroid/view/Display$Mode$Builder;

    :cond_8
    invoke-virtual {v1}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz v0, :cond_9

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {v1}, Landroid/view/Display$Mode$Builder;->build()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/android/server/display/mode/RefreshRateController;->updateResolutionLocked(ILandroid/view/Display$Mode;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)I
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    const/16 v16, -0x1

    const-string v3, "DisplayManagerService"

    if-nez v0, :cond_0

    const-string/jumbo v0, "Rejecting request to create private virtual display because the virtual display adapter is not available."

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayManagerService;->getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const-string/jumbo v0, "Virtual Display: creating DisplayDevice with VirtualDisplayAdapter"

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    iget-object v0, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    const/16 v17, 0x0

    const-string/jumbo v9, "VirtualDisplayAdapter"

    if-eqz v0, :cond_1

    const-string v0, "Can\'t create virtual display, display with same appToken already exists"

    invoke-static {v9, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v2, v3

    move/from16 v19, v8

    :goto_1
    move-object/from16 v3, v17

    goto/16 :goto_8

    :cond_1
    iget-object v0, v5, Lcom/android/server/display/DisplayAdapter;->mFeatureFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v10, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVirtualDisplayLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v10}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v10

    const-string/jumbo v11, "Rejecting request to create private virtual display because "

    if-eqz v10, :cond_2

    iget-object v10, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    iget v12, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevices:I

    if-lt v10, v12, :cond_2

    const-string v0, " devices already exist."

    invoke-static {v12, v11, v0, v9}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v10, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v7, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    iget-object v12, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVirtualDisplayLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v12}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    iget v12, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mMaxDevicesPerPackage:I

    if-lt v10, v12, :cond_3

    const-string v0, " devices already exist for package "

    const-string v4, "."

    move-object/from16 v13, p4

    invoke-static {v12, v11, v0, v13, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v13, p4

    invoke-virtual/range {p10 .. p10}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v19

    and-int/lit8 v11, p9, 0x4

    if-eqz v11, :cond_4

    move/from16 v20, v8

    goto :goto_2

    :cond_4
    move/from16 v20, v4

    :goto_2
    and-int/lit8 v11, p9, 0x10

    if-nez v11, :cond_5

    and-int/lit8 v11, p9, 0x1

    if-nez v11, :cond_5

    move/from16 v21, v8

    goto :goto_3

    :cond_5
    move/from16 v21, v4

    :goto_3
    iget-object v11, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    invoke-virtual/range {p10 .. p10}, Landroid/hardware/display/VirtualDisplayConfig;->getRequestedRefreshRate()F

    move-result v23

    move-object/from16 v22, p5

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v23}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->createDisplay(Ljava/lang/String;ZZLjava/lang/String;F)Landroid/os/IBinder;

    move-result-object v11

    if-eqz p2, :cond_6

    new-instance v12, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    invoke-direct {v12, v5, v6}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    :goto_4
    move-object v14, v11

    goto :goto_5

    :cond_6
    move-object/from16 v12, v17

    goto :goto_4

    :goto_5
    new-instance v11, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual/range {p10 .. p10}, Landroid/hardware/display/VirtualDisplayConfig;->getBrightnessListener()Landroid/hardware/display/IBrightnessListener;

    move-result-object v15

    iget-object v4, v5, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v11, v2, v15, v4}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/hardware/display/IBrightnessListener;Landroid/os/Handler;)V

    move-object v4, v3

    new-instance v3, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-object/from16 v15, p10

    move-object v2, v4

    move-object v4, v5

    move/from16 v19, v8

    move-object v1, v9

    move/from16 v20, v10

    move-object v8, v13

    move-object v5, v14

    move-object/from16 v14, p5

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object v13, v12

    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v15}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Landroid/media/projection/IMediaProjection;Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;Ljava/lang/String;Landroid/hardware/display/VirtualDisplayConfig;)V

    iget-object v5, v4, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVirtualDisplayLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v4, Lcom/android/server/display/VirtualDisplayAdapter;->mNoOfDevicesPerPackage:Landroid/util/SparseIntArray;

    add-int/lit8 v10, v20, 0x1

    invoke-virtual {v0, v7, v10}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, v4, Lcom/android/server/display/VirtualDisplayAdapter;->mOwnerUids:Landroid/util/ArrayMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v12, :cond_8

    :try_start_0
    invoke-interface {v12, v13}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    const-string/jumbo v0, "Virtual Display: registered media projection callback for new VirtualDisplayDevice"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :goto_6
    :try_start_1
    invoke-interface {v6, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    :goto_7
    const-string/jumbo v7, "Virtual Display: error while setting up VirtualDisplayDevice"

    invoke-static {v1, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v4, v6}, Lcom/android/server/display/VirtualDisplayAdapter;->removeVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    invoke-virtual {v3, v5}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    goto/16 :goto_1

    :goto_8
    if-nez v3, :cond_9

    const-string/jumbo v0, "Virtual Display: VirtualDisplayAdapter failed to create DisplayDevice"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_9
    const v0, 0x8000

    and-int v0, p9, v0

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    if-eqz v0, :cond_b

    if-eqz p6, :cond_a

    :try_start_2
    invoke-interface/range {p6 .. p6}, Landroid/companion/virtual/IVirtualDevice;->getDeviceId()I

    move-result v0

    iget-object v5, v4, Lcom/android/server/display/LogicalDisplayMapper;->mVirtualDeviceDisplayMapping:Landroid/util/ArrayMap;

    iget-object v6, v3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_9

    :cond_a
    const-string v0, "Display created with VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP set, but no virtual device. The display will not be added to a device display group."

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_9
    iget-object v0, v1, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    move/from16 v5, v19

    invoke-virtual {v0, v3, v5}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    invoke-virtual {v4, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    if-eqz v4, :cond_d

    iget v0, v4, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-eqz p6, :cond_c

    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    move-object/from16 v4, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->onVirtualDisplayCreated(Landroid/companion/virtual/IVirtualDevice;ILandroid/hardware/display/IVirtualDisplayCallback;Landroid/window/DisplayWindowPolicyController;)V

    :cond_c
    return v0

    :cond_d
    move-object/from16 v4, p1

    const-string/jumbo v5, "Rejecting request to create virtual display because the logical display was not created."

    invoke-static {v2, v5}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-interface {v4}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    return v16
.end method

.method public final enableConnectedDisplay(IZ)V
    .locals 4

    const-string/jumbo v0, "enableConnectedDisplay: Can not find displayId="

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/android/server/display/ExternalDisplayPolicy;->isExternalDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final extraLogging(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayLoggingPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final findDisplayStateOverrideLockIndexWithDisplayId(ILandroid/os/IBinder;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iget-object v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLock:Landroid/os/IBinder;

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iget v2, v2, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getAmbientBrightnessInfo(F)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerController;->getAmbientBrightnessInfo(F)Ljava/lang/String;

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

.method public final getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;
    .locals 1

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method public getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayDeviceRepository()Lcom/android/server/display/DisplayDeviceRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    return-object p0
.end method

.method public getDisplayHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    return-object p0
.end method

.method public final getDisplayInfoForFrameRateOverride(Lcom/android/server/display/LogicalDisplay;I)Landroid/view/DisplayInfo;
    .locals 12

    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_REFRESH_RATE_MODE:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    iget-object v2, p0, Lcom/android/server/display/mode/RefreshRateModeManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mRefreshRateMode:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p0, v1, Landroid/view/DisplayInfo;->refreshRateMode:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget p0, v1, Landroid/view/DisplayInfo;->renderFrameRate:F

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    iget v6, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    if-ne v6, p2, :cond_1

    iget p0, v5, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    const/16 v0, 0x2710

    const/4 v2, 0x1

    if-lt p2, v0, :cond_5

    const-wide/32 v4, 0xa29ae4e

    invoke-static {v4, v5, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move p2, v3

    goto :goto_4

    :cond_5
    :goto_3
    move p2, v2

    :goto_4
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v4

    div-float p0, v4, p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p0, v5

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const v6, 0x3a6bedfa    # 9.0E-4f

    cmpl-float p0, p0, v6

    if-lez p0, :cond_6

    :goto_5
    return-object v1

    :cond_6
    div-float/2addr v4, v5

    new-instance p0, Landroid/view/DisplayInfo;

    invoke-direct {p0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v5, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v7, v5

    move v8, v3

    :goto_6
    if-ge v8, v7, :cond_b

    aget-object v9, v5, v8

    invoke-virtual {v9, v0}, Landroid/view/Display$Mode;->equalsExceptRefreshRate(Landroid/view/Display$Mode;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v10

    sub-float v11, v4, v6

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_a

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v10

    add-float v11, v4, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "DisplayManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "found matching modeId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    iput v0, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    if-nez p2, :cond_9

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    iput p2, p0, Landroid/view/DisplayInfo;->modeId:I

    :cond_9
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result p2

    invoke-virtual {p1, p2, p0}, Lcom/android/server/display/DisplayDevice;->updateDisplayInfoForFrameRateOverride(ILandroid/view/DisplayInfo;)V

    return-object p0

    :cond_a
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_b
    iput v4, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    if-nez p2, :cond_c

    iget-object p1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p1

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/Display$Mode;

    iput-object p1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p1

    sub-int/2addr p2, v2

    new-instance v4, Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    iget v8, p0, Landroid/view/DisplayInfo;->refreshRateOverride:F

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v9

    new-array v10, v3, [F

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v11

    const/16 v5, 0xff

    invoke-direct/range {v4 .. v11}, Landroid/view/Display$Mode;-><init>(IIIFF[F[I)V

    aput-object v4, p1, p2

    iget-object p1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length p2, p1

    sub-int/2addr p2, v2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iput p1, p0, Landroid/view/DisplayInfo;->modeId:I

    :cond_c
    return-object p0
.end method

.method public final getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    .locals 4

    const-string v0, "Default display is null for info request from uid "

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfoForFrameRateOverride(Lcom/android/server/display/LogicalDisplay;I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/DisplayManagerService;->isUidPresentOnDisplayInternal(II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "DisplayManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDisplayToken(I)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDisplayedContentSampleInternal(IJJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->getDisplayedContentSample(Landroid/os/IBinder;JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayedContentSamplingAttributesInternal(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceControl;->getDisplayedContentSamplingAttributes(Landroid/os/IBinder;)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnabledHdrOutputTypes()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getEnabledHdrOutputTypesLocked()[I

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

.method public getEnabledHdrOutputTypesLocked()[I
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSupportedHdrOutputTypesInternal()[I

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getSupportedHdrOutputTypesInternal()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget v9, v6, v8

    if-ne v5, v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/util/IntArray;->add(I)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {v1, v2}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    :goto_0
    if-nez v1, :cond_2

    iget v3, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    if-ne v3, v2, :cond_2

    new-instance p0, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p0, v2}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    monitor-exit v0

    return-object p0

    :cond_2
    const/4 v2, 0x2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-object v1

    :cond_4
    :goto_1
    new-instance v1, Landroid/hardware/display/HdrConversionMode;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    invoke-direct {v1, v2, p0}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    monitor-exit v0

    return-object v1

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getHdrConversionModeSettingInternal()Landroid/hardware/display/HdrConversionMode;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/server/display/DisplayManagerService;->HDR_CONVERSION_MODE_UNSUPPORTED:Landroid/hardware/display/HdrConversionMode;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/hardware/display/HdrConversionMode;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    invoke-direct {v0, p0}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getLogicalDisplayMapper()Lcom/android/server/display/LogicalDisplayMapper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-object p0
.end method

.method public getMinimumBrightnessCurveInternal()Landroid/hardware/display/Curve;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessCurve:Landroid/hardware/display/Curve;

    return-object p0
.end method

.method public final getProjectionService()Landroid/media/projection/IMediaProjectionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mProjectionService:Landroid/media/projection/IMediaProjectionManager;

    return-object p0
.end method

.method public getSettingsObserver()Landroid/database/ContentObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    return-object p0
.end method

.method public final getSupportedHdrOutputTypesInternal()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputTypes:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/display/DisplayControl;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputTypes:[I

    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mSupportedHdrOutputTypes:[I

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public final getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVirtualDisplaySurfaceInternal(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_RESOLUTION_POLICY:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v1, v1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display$Mode;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v2, v2, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {v2}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateResolutionLocked(ILandroid/view/Display$Mode;)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->applyDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayTopologyCoordinator;->isDisplayAllowedInTopology(Landroid/view/DisplayInfo;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mDensities:Landroid/util/SparseIntArray;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayTopologyCoordinator;->mTopology:Landroid/hardware/display/DisplayTopology;

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    iget v4, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {v3, v4}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result v3

    iget v4, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    iget p1, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-static {v4, p1}, Landroid/hardware/display/DisplayTopology;->pxToDp(FI)F

    move-result p1

    invoke-virtual {v1, v2, v3, p1}, Landroid/hardware/display/DisplayTopology;->updateDisplay(IFF)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTopologyCoordinator;->sendTopologyUpdateLocked()V

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public isMinimalPostProcessingAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isUidPresentOnDisplayInternal(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAccessUIDs:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/IntArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadStableDisplayValuesLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iget-object v0, v0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget v0, v0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x10e0178

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-lez v1, :cond_1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/DisplayManagerService;->setStableDisplaySizeLocked(II)V

    :cond_1
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 9

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    monitor-exit v0

    goto/16 :goto_c

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-lez p1, :cond_3

    sget-boolean p1, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    if-eqz p1, :cond_2

    const-string p1, "DisplayManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitForDefaultDisplay: waiting, timeout="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    invoke-virtual {p1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timeout waiting for default display to be initialized. DefaultDisplay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVirtualDisplayAdapter="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mBootCompleted:Z

    :goto_3
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_b

    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->onBootCompleted()V

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    iget-object v0, p1, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_4
    iput-boolean v2, p1, Lcom/android/server/display/LogicalDisplayMapper;->mBootCompleted:Z

    iget-object v1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    sget-object v3, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v1, v3}, Landroid/hardware/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToBeAppliedAfterBoot:Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDeviceStateLocked(Landroid/hardware/devicestate/DeviceState;)V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto/16 :goto_a

    :cond_6
    :goto_4
    iget-object v1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupAllocator:Lcom/android/server/display/DisplayGroupAllocator;

    iget-object p1, p1, Lcom/android/server/display/LogicalDisplayMapper;->mContext:Landroid/content/Context;

    iput-object p1, v1, Lcom/android/server/display/DisplayGroupAllocator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/server/display/DisplayGroupAllocator;->mCanDeviceEnterDesktopMode:Z

    iget-object p1, v1, Lcom/android/server/display/DisplayGroupAllocator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/wm/DesktopModeHelper;->canInternalDisplayHostDesktops(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/server/display/DisplayGroupAllocator;->mCanDefaultDisplayEnterDesktopMode:Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayNotificationManager:Lcom/android/server/display/notifications/DisplayNotificationManager;

    iget-object v0, p1, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    check-cast v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    iget-object v1, v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p1, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_7

    const-string p1, "DisplayNotificationManager"

    const-string/jumbo v0, "onBootCompleted: NotificationManager is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    new-instance v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;

    iget-object v3, v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    new-instance v4, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    iget-object v0, v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;)V

    iget-boolean v0, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mIsConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object v0, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mInjector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Injector;

    check-cast v0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;

    iget-object v0, v0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    const-class v3, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const-string v3, "ConnectedDisplayUsbErrorsDetector"

    if-nez v0, :cond_9

    const-string/jumbo p1, "UsbManager is null"

    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    iput-object p1, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mListener:Lcom/android/server/display/notifications/DisplayNotificationManager;

    :try_start_5
    iget-object p1, v1, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/UsbManager;->registerDisplayPortAltModeInfoListener(Ljava/util/concurrent/Executor;Landroid/hardware/usb/UsbManager$DisplayPortAltModeInfoListener;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string v0, "Failed to register listener"

    invoke-static {v3, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    iget-object v1, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_6
    iput-boolean v2, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mIsBootCompleted:Z

    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v3}, Lcom/android/server/display/ExternalDisplayPolicy;->handleExternalDisplayConnectedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_6

    :catchall_3
    move-exception p0

    goto/16 :goto_9

    :cond_b
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked$1()V

    :cond_c
    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mDisplayIdsWaitingForBootCompletion:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object v0, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    sget-boolean p1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string p1, "ExternalDisplayPolicy"

    const-string v0, "ConnectedDisplayErrorHandlingEnabled is not enabled on your device: cannot register thermal listener."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    new-instance v0, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;

    invoke-direct {v0, p1}, Lcom/android/server/display/ExternalDisplayPolicy$SkinThermalStatusObserver;-><init>(Lcom/android/server/display/ExternalDisplayPolicy;)V

    iget-object p1, p1, Lcom/android/server/display/ExternalDisplayPolicy;->mInjector:Lcom/android/server/display/DisplayManagerService$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p1, "thermalservice"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    move-result-object p1

    const-string v1, "ExternalDisplayPolicy"

    if-nez p1, :cond_e

    const-string p1, "Could not observe thermal status. Service not available"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const/4 v2, 0x3

    :try_start_7
    invoke-interface {p1, v0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    sget-boolean p1, Lcom/android/server/display/ExternalDisplayPolicy;->DEBUG:Z

    if-eqz p1, :cond_f

    const-string/jumbo p1, "registerThermalServiceListener complete."

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :catch_2
    move-exception p1

    const-string v0, "Failed to register thermal status listener"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    const-string p1, "ExternalDisplayPolicy"

    const-string v0, "Failed to register thermal listener"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_8
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPluginManager:Lcom/android/server/display/plugin/PluginManager;

    iget-object p0, p0, Lcom/android/server/display/plugin/PluginManager;->mPlugins:Ljava/util/List;

    new-instance p1, Lcom/android/server/display/plugin/PluginManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_c

    :goto_9
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    :goto_a
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :goto_b
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw p0

    :cond_10
    :goto_c
    return-void
.end method

.method public final onStart()V
    .locals 6

    const-string v0, "DisplayManagerService"

    const-string v1, "DisplayManagerService onStart"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->loadStableDisplayValuesLocked()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v1, v1, Lcom/android/server/display/PersistentDataStore;->mDisplayStates:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/PersistentDataStore$DisplayState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    iget v3, v3, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    iget v3, v4, Landroid/graphics/Point;->x:I

    if-lez v3, :cond_0

    iget v3, v4, Landroid/graphics/Point;->y:I

    if-lez v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIsLoadedUserPreferredResolution:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->invalidateLocalDisplayInfoCaches()V

    const-string/jumbo v0, "display"

    new-instance v1, Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$BinderService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, p1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v4, v4, Lcom/android/server/display/mode/DisplayModeDirector;->mHandler:Lcom/android/server/display/mode/DisplayModeDirector$DisplayModeDirectorHandler;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v5, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, v1, p2, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayManagerService;ZII)V

    invoke-virtual {v4, v5, v3}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "minimal_post_processing_allowed"

    const/4 v4, -0x2

    invoke-static {p2, v1, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_2

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v2

    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->setMinimalPostProcessingAllowed(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->updateMirrorBuiltInDisplaySettingLocked(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget p2, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    :cond_4
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->onUserSwitching()V

    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 p1, 0x1c

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public overrideSensorManager(Landroid/hardware/SensorManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public performTraversalInternal(Landroid/view/SurfaceControl$Transaction;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTransactionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    invoke-interface {p2, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_2
    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {p1}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultDisplayTopInset:I

    const-string/jumbo p0, "persist.sys.displayinset.top"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final registerWifiDisplayAdapterLocked()V
    .locals 7

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v6, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/WifiDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/PersistentDataStore;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->updateRememberedDisplaysLocked()V

    new-instance v1, Lcom/android/server/display/WifiDisplayAdapter$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->getDisplayDeviceInfoInternal(I)Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/WifiDisplayAdapter;->mDefaultDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final releaseVirtualDisplayInternal(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mVirtualDisplayAdapter:Lcom/android/server/display/VirtualDisplayAdapter;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    move-result-object p1

    const-string v1, "DisplayManagerService"

    const-string/jumbo v2, "Virtual Display: Display Device released"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayDeviceRepository;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removePresentationDisplay(Lcom/android/server/display/DisplayManagerService$PresentationDisplay;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "DisplayManagerService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "Presentation is not included in Set"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to remove presentation("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->displayId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/display/DisplayManagerService$PresentationDisplay;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mPresentationDisplays:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final requestDisplayPower(II)Z
    .locals 9

    const-string/jumbo v0, "requestDisplayPower(displayId="

    const-string/jumbo v1, "requestDisplayPower: Cannot set power state = "

    const-string/jumbo v2, "requestDisplayPower: Cannot find the display with displayId="

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v6

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, p2

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    iget v7, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    if-ne v2, v5, :cond_2

    const/high16 v7, -0x40800000    # -1.0f

    :cond_2
    iget-object v8, v4, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    iget-object v4, v4, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual {v8, v2, v7, p0, v4}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "DisplayManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for the display with displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", requestedState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": runnable is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return v6

    :cond_3
    const-string v1, "DisplayManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", requestedState="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): state set to "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v5

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final resetBrightnessConfigurations()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v2}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iget-object v3, v2, Lcom/android/server/display/PersistentDataStore;->mGlobalBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, v2, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    :cond_0
    const-string v0, "(global)"

    invoke-virtual {v3, v4, v4, v4, v0}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final scheduleTopologiesReload(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayTopologyCoordinator:Lcom/android/server/display/DisplayTopologyCoordinator;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/DisplayManagerService;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final scheduleTraversalLocked(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mPendingTraversal:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 5

    iget-boolean v0, p1, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "sendDisplayEventLocked#event="

    const-string v4, ",displayEnabled="

    invoke-static {p2, v3, v4, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    :cond_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Not Sending Display Event; display is not enabled: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerService"

    invoke-static {p1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    return-void
.end method

.method public final sendDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 2

    iget p1, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mExtraDisplayEventLogging:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Deliver Display Event on Handler: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DisplayManagerService"

    invoke-static {p2, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendDisplayHbmBrightnessEventLocked(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendDisplayHbmBrightnessEventLocked: displayId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isHbm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHbmBrightnessCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v3, v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mCallback:Landroid/hardware/display/IHbmBrightnessCallback;

    invoke-interface {v3, p1, p2}, Landroid/hardware/display/IHbmBrightnessCallback;->onChanged(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyHbmBrightnessEvent: Error calling hbm brightness callback pid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/server/display/DisplayManagerService$HbmBrightnessCallbackRecord;->binderDied()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method public setAreUserDisabledHdrTypesAllowedInternal(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "are_user_disabled_hdr_formats_allowed"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    array-length v1, p1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [I

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayManagerService;[II)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getHdrConversionModeInternal()Landroid/hardware/display/HdrConversionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {p1, v1}, Landroid/hardware/display/HdrConversionMode;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setBrightnessConfigurationForDisplayInternal(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v2, p2}, Lcom/android/server/display/DisplayDeviceRepository;->getByUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayDevice;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v3, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->type:I

    if-ne v3, v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, [F

    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [F

    const/16 v6, 0x216

    invoke-static {v6, v3, v5, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(I[F[FLjava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v2, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v5

    iget-object v6, v5, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    invoke-static {v6, p1, v0, p4}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->-$$Nest$msetBrightnessConfigurationForUser(Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)Z

    iput-boolean v4, v3, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    invoke-static {v2}, Lcom/android/server/display/PersistentDataStore;->getBrightnessConfigTag(Lcom/android/server/display/DisplayDevice;)Ljava/lang/String;

    move-result-object p4

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FOLD_COVER_DISPLAY:Z

    if-eqz v0, :cond_3

    const-string v0, "(sub)"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, v5, Lcom/android/server/display/PersistentDataStore$DisplayState;->mDisplayBrightnessConfigurations:Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, p4}, Lcom/android/server/display/PersistentDataStore$BrightnessConfigurations;->saveHistory(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_1
    :try_start_3
    iget-object p4, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p4}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    iget p4, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    if-eq p3, p4, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/server/display/DisplayManagerService;->getDpcFromUniqueIdLocked(Ljava/lang/String;)Lcom/android/server/display/DisplayPowerController;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/DisplayPowerController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;Z)V

    :cond_6
    monitor-exit v1

    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p1

    :goto_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v4, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v4, :cond_0

    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4, p2}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v4, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p2}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4, p2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p2, :cond_2

    iput-object v3, p1, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->handleLogicalDisplayChangedLocked(Lcom/android/server/display/LogicalDisplay;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDisplayState(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V
    .locals 2

    if-lez p3, :cond_0

    const/16 v0, 0x20

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final setDisplayStateOverrideWithDisplayIdInternal(IIILandroid/os/IBinder;)V
    .locals 9

    const-string/jumbo v0, "setDisplayStateOverrideWithDisplayIdInternal: sameRequest: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v8, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0, p2, p4}, Lcom/android/server/display/DisplayManagerService;->findDisplayStateOverrideLockIndexWithDisplayId(ILandroid/os/IBinder;)I

    move-result v1

    if-gez v1, :cond_1

    if-nez p1, :cond_0

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "setDisplayStateOverrideWithDisplayIdInternal: sameRequest: unknown"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    move-object v2, p0

    move v4, p1

    move v7, p2

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;-><init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJI)V

    invoke-virtual {v2, v7, v3, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :try_start_1
    invoke-interface {v3, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DisplayStateOverrideLock is already dead."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v2, p0

    move v4, p1

    move v7, p2

    move-object v3, p4

    iget-object p0, v2, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/16 p1, 0x20

    invoke-virtual {p0, p1, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    if-nez v4, :cond_2

    iget-object p0, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p0, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    if-eq v4, p0, :cond_5

    iget-object p0, v2, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iput v4, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    invoke-virtual {v2, v7, v3, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V

    :goto_0
    iget-object p0, v2, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 p1, 0x1

    invoke-virtual {p0, v7, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_3

    invoke-virtual {v2, p0}, Lcom/android/server/display/DisplayManagerService;->updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    const-string p0, "DisplayManagerService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7, v3, p3}, Lcom/android/server/display/DisplayManagerService;->setDisplayStateOverrideTimeout(ILandroid/os/IBinder;I)V

    monitor-exit v8

    return-void

    :goto_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public setDisplayedContentSamplingEnabledInternal(IZII)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDisplayToken(I)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p2, p3, p4}, Landroid/view/SurfaceControl;->setDisplayedContentSamplingEnabled(Landroid/os/IBinder;ZII)Z

    move-result p0

    return p0
.end method

.method public final setDockedAndIdleEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0xe

    iput v3, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setEnableConnectedDisplay(IZ)V
    .locals 7

    const-string/jumbo v0, "enableConnectedDisplay: Can not find displayId="

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    const/4 v3, 0x0

    const/4 v4, 0x1

    xor-int/lit8 v5, p2, 0x1

    iput-boolean v5, v2, Lcom/android/server/display/ExternalDisplayPolicy;->mBlockDisplayWhileUserSwitch:Z

    const/16 v2, 0x64

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    invoke-virtual {v5, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v2, p1, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "DisplayManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mExternalDisplayPolicy:Lcom/android/server/display/ExternalDisplayPolicy;

    invoke-virtual {p0, v2, p2}, Lcom/android/server/display/ExternalDisplayPolicy;->setExternalDisplayEnabledLocked(Lcom/android/server/display/LogicalDisplay;Z)V

    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/display/DisplayControl;->getHdrOutputConversionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "preferredHdrOutputType must not be set if the conversion mode is HDR_CONVERSION_SYSTEM"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v4

    const-string/jumbo v5, "hdr_conversion_mode"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hdr_force_conversion_type"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->getEnabledHdrOutputTypesLocked()[I

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v5

    :goto_2
    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getConversionMode()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/display/HdrConversionMode;->getPreferredHdrOutputType()I

    move-result p1

    iget-boolean v6, p0, Lcom/android/server/display/DisplayManagerService;->mShouldDisableHdrConversion:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    :goto_3
    move v2, v7

    goto :goto_4

    :cond_5
    if-ne v2, v4, :cond_6

    if-ne p1, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v2, v3, v7}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    move v3, p1

    move-object v5, v1

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v4, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v3, v4, v7}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    move v3, p1

    move-object v5, v1

    :goto_4
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInjector:Lcom/android/server/display/DisplayManagerService$Injector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v5}, Lcom/android/server/display/DisplayControl;->setHdrConversionMode(II[I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemPreferredHdrOutputType:I

    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setMinimalPostProcessingAllowed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mMinimalPostProcessingAllowed:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setOverrideRefreshRateMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/display/DisplayManagerService;II)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setStableDisplaySizeLocked(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mStableDisplaySize:Landroid/graphics/Point;

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->loadIfNeeded()V

    iget-object p0, v0, Lcom/android/server/display/PersistentDataStore;->mStableDeviceValues:Lcom/android/server/display/PersistentDataStore$StableDeviceValues;

    iget p1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget p2, v1, Landroid/graphics/Point;->x:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    if-eq p1, v2, :cond_1

    :cond_0
    iput p2, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mWidth:I

    iget p1, v1, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/android/server/display/PersistentDataStore$StableDeviceValues;->mHeight:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p0
.end method

.method public setUserDisabledHdrTypesInternal([I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "Null is not an expected argument to setUserDisabledHdrTypesInternal"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Landroid/view/Display$HdrCapabilities;->HDR_TYPES:[I

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, p1, v3

    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v4

    if-gez v4, :cond_1

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "userDisabledHdrTypes contains unexpected types"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    const-string v1, ""

    array-length v2, p1

    if-eqz v2, :cond_4

    const-string v1, ","

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_disabled_hdr_formats"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    iget-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/DisplayManagerService;[II)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    :cond_5
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width, height and refresh rate of mode should be greater than 0 when setting the global user preferred display mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_2
    :goto_1
    if-nez p2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    :goto_2
    if-nez p2, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    :goto_3
    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    :goto_4
    invoke-virtual {p0, p1, v4, v3, v1}, Lcom/android/server/display/DisplayManagerService;->storeModeInPersistentDataStoreLocked(IIIF)V

    if-eq p1, v2, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_MULTI_RESOLUTION_POLICY:Z

    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/android/server/display/mode/RefreshRateController;->updateResolutionLocked(ILandroid/view/Display$Mode;)V

    goto :goto_5

    :cond_6
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p0, v4, v3, v1, p2}, Lcom/android/server/display/DisplayManagerService;->storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V

    :cond_7
    :goto_5
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setUserPreferredModeForDisplayLocked(ILandroid/view/Display$Mode;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v1, v1, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getSupportedResolutionsLocked()[Landroid/graphics/Point;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    aget-object p1, p1, v5

    invoke-virtual {v1, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_resolution_mode"

    const/4 v1, -0x2

    invoke-static {p0, p1, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/display/DisplayDevice;->setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V

    return-void
.end method

.method public shouldMirrorBuiltInDisplay()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    return p0
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestStartScanLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p1, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    :cond_0
    return-void
.end method

.method public final startWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;II)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "requestStartScanLocked : "

    const-string v1, ", interval : "

    const-string/jumbo v2, "WifiDisplayAdapter"

    invoke-static {p2, p3, v0, v1, v2}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    iput-object v0, p1, Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;

    new-instance v0, Lcom/android/server/display/WifiDisplayAdapter$8;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/WifiDisplayAdapter$8;-><init>(Lcom/android/server/display/WifiDisplayAdapter;II)V

    iget-object p1, p1, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    iget-object p1, p1, Lcom/android/server/display/WifiDisplayAdapter;->mVolumeController:Lcom/android/server/display/VolumeController;

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mVolumeController:Lcom/android/server/display/VolumeController;

    :cond_0
    return-void
.end method

.method public final stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mWifiDisplayScanRequested:Z

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayAdapter:Lcom/android/server/display/WifiDisplayAdapter;

    if-eqz p0, :cond_1

    const-string/jumbo p1, "WifiDisplayAdapter"

    const-string/jumbo v0, "requestStopScanLocked"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/server/display/WifiDisplayAdapter$1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/WifiDisplayAdapter$1;-><init>(Lcom/android/server/display/WifiDisplayAdapter;I)V

    iget-object p0, p0, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-gez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mWifiDisplayScanRequestCount became negative: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/android/server/power/Slog;->$r8$clinit:I

    const-string v1, "DisplayManagerService"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/display/DisplayManagerService;->mWifiDisplayScanRequestCount:I

    :cond_1
    return-void
.end method

.method public final storeModeInGlobalSettingsLocked(IIFLandroid/view/Display$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    iget-object p3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo v0, "user_preferred_resolution_height"

    invoke-static {p3, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "user_preferred_resolution_width"

    invoke-static {p2, p3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final storeModeInPersistentDataStoreLocked(IIIF)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->getDeviceForDisplayLocked(I)Lcom/android/server/display/DisplayDevice;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object v1

    iget v3, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    if-ne p2, v3, :cond_2

    iget v3, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    if-ne p3, v3, :cond_2

    goto :goto_0

    :cond_2
    iput p2, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mWidth:I

    iput p3, v1, Lcom/android/server/display/PersistentDataStore$DisplayState;->mHeight:I

    iput-boolean v2, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result p0

    if-eqz p0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p0

    iget p1, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    cmpl-float p1, p4, p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    iput p4, p0, Lcom/android/server/display/PersistentDataStore$DisplayState;->mRefreshRate:F

    iput-boolean v2, v0, Lcom/android/server/display/PersistentDataStore;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    throw p0
.end method

.method public final systemReady(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSafeMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "display_manager"

    const-string/jumbo v2, "enable_hdr_output_control"

    invoke-static {v1, v2, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda36;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v4, "display_manager"

    invoke-interface {v1, v4, v2, v3}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(IZ)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->recordTopInsetLocked(Lcom/android/server/display/LogicalDisplay;)V

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "minimal_post_processing_allowed"

    const/4 v5, -0x2

    invoke-static {v2, v4, p1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->setMinimalPostProcessingAllowed(Z)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserDisabledHdrTypesFromSettingsLocked()V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->updateUserPreferredDisplayModeSettingsLocked()V

    iget-boolean v2, p0, Lcom/android/server/display/DisplayManagerService;->mIsHdrOutputControlEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "hdr_conversion_mode"

    iget v5, p0, Lcom/android/server/display/DisplayManagerService;->mDefaultHdrConversionMode:I

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hdr_force_conversion_type"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    new-instance v4, Landroid/hardware/display/HdrConversionMode;

    invoke-direct {v4, v2, p1}, Landroid/hardware/display/HdrConversionMode;-><init>(II)V

    iput-object v4, p0, Lcom/android/server/display/DisplayManagerService;->mHdrConversionMode:Landroid/hardware/display/HdrConversionMode;

    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerService;->setHdrConversionModeInternal(Landroid/hardware/display/HdrConversionMode;)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerService;->updateMirrorBuiltInDisplaySettingLocked(Z)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iget-object v2, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-object v0, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayManagerService$DesiredDisplayModeSpecsObserver;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayModeDirector:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector;->start(Landroid/hardware/SensorManager;)V

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance p1, Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayManagerService$SettingsObserver;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mSettingsObserver:Lcom/android/server/display/DisplayManagerService$SettingsObserver;

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mBrightnessSynchronizer:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-virtual {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->startSynchronizing()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mIdleModeReceiver:Lcom/android/server/display/DisplayManagerService$2;

    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.os.action.SETTING_RESTORED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mResolutionRestoreReceiver:Lcom/android/server/display/DisplayManagerService$2;

    invoke-virtual {v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p1, p1, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/display/SmallAreaDetectionController;

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/SmallAreaDetectionController;-><init>(Landroid/content/Context;Landroid/provider/DeviceConfigInterface;)V

    const-string/jumbo p1, "display_manager"

    const-string/jumbo v2, "small_area_detection_allowlist"

    invoke-interface {v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/display/SmallAreaDetectionController;->updateAllowlist(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSmallAreaDetectionController:Lcom/android/server/display/SmallAreaDetectionController;

    iget p1, p0, Lcom/android/server/display/DisplayManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, v3}, Lcom/android/server/display/DisplayManagerService;->scheduleTopologiesReload(IZ)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final updateCanHostTasksIfNeededLocked(Lcom/android/server/display/LogicalDisplay;Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->shouldOnlyMirror()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget v2, p1, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-ne v2, v1, :cond_2

    move v3, v1

    :cond_2
    iget-object v2, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v2, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 v4, 0x2

    if-ne v2, v1, :cond_5

    goto :goto_2

    :cond_5
    iput-boolean v1, p1, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    iput-boolean v1, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget v2, v0, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v4, :cond_6

    iget v2, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v5, 0x4000000

    and-int/2addr v2, v5

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    goto :goto_1

    :cond_7
    iget v1, v0, Landroid/view/DisplayInfo;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/DisplayInfo;->flags:I

    :goto_1
    iget-object v0, p1, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    if-eqz p2, :cond_8

    invoke-virtual {p0, p1, v4}, Lcom/android/server/display/DisplayManagerService;->sendDisplayEventIfEnabledLocked(Lcom/android/server/display/LogicalDisplay;I)V

    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p2

    iget p2, p2, Landroid/view/DisplayInfo;->type:I

    if-ne p2, v4, :cond_8

    new-instance p2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;

    iget v0, p1, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p0}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda28;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    if-ne p1, v4, :cond_9

    iget-boolean p1, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    new-instance p2, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda29;

    invoke-direct {p2, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/display/DisplayManagerService;Z)V

    invoke-virtual {v3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method public final updateDisplayPowerControllerLeaderLocked(Lcom/android/server/display/DisplayPowerController;I)V
    .locals 7

    iget v0, p1, Lcom/android/server/display/DisplayPowerController;->mLeadDisplayId:I

    if-ne v0, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerController;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    iget v4, p1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v4, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mClock:Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda13;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    if-eq p2, v1, :cond_2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayPowerControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    if-eqz p0, :cond_2

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBrightnessFollowers:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/display/DisplayPowerController;->mDisplayId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateDisplayStateLocked(Lcom/android/server/display/DisplayDevice;)Ljava/lang/Runnable;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_8

    :cond_1
    iget-object v5, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStates:Landroid/util/SparseIntArray;

    iget v6, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v8, 0x1

    const/4 v10, 0x2

    if-ne v7, v8, :cond_9

    iget-object v7, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrideLocks:Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateOverrides:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-ne v12, v10, :cond_2

    move v15, v10

    const/16 v16, 0x0

    const/high16 v17, 0x1000000

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_5

    aget-object v15, v12, v14

    invoke-virtual {v15}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->getDisplayState()I

    move-result v15

    const/16 v16, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    const/high16 v17, 0x1000000

    :goto_1
    if-ge v9, v3, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v11, v18

    check-cast v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;

    iget v10, v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mLastRequestedState:I

    if-ne v15, v10, :cond_3

    iget v10, v11, Lcom/android/server/display/DisplayManagerService$DisplayStateOverrideLock;->mDisplayId:I

    if-ne v10, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x2

    goto :goto_1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x2

    goto :goto_0

    :cond_5
    const/16 v16, 0x0

    const/high16 v17, 0x1000000

    const/4 v15, 0x0

    :goto_2
    iget v3, v0, Lcom/android/server/display/DisplayManagerService;->mDualScreenPolicy:I

    if-nez v3, :cond_6

    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int v7, v7, v17

    if-eqz v7, :cond_6

    :goto_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    if-ne v3, v8, :cond_7

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int v3, v3, v17

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    :goto_4
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayStateListeners:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    const-string v3, "DisplayManagerService"

    const-string/jumbo v7, "getCopyOfArrayList: error : null"

    invoke-static {v3, v7}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, v16

    goto :goto_5

    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    move-object v10, v7

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    const/high16 v17, 0x1000000

    move-object/from16 v10, v16

    const/4 v15, 0x0

    :goto_6
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-eqz v3, :cond_a

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int v3, v3, v17

    if-eqz v3, :cond_a

    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v5, 0x2

    const/4 v9, 0x0

    goto :goto_7

    :cond_a
    move v9, v15

    :goto_7
    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    invoke-static {v5}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move v5, v8

    :cond_b
    if-eqz v5, :cond_c

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService;->mDisplayBrightnesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;

    iget v6, v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->brightness:F

    iget v7, v0, Lcom/android/server/display/DisplayManagerService$BrightnessPair;->sdrBrightness:F

    iget-object v8, v2, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/display/DisplayDevice;->requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;ILjava/util/ArrayList;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_8
    return-object v16
.end method

.method public final updateMirrorBuiltInDisplaySettingLocked(Z)V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_FACTORY_BINARY:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mirror_built_in_display"

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object v0, v0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEnableDisplayContentModeManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/DisplayManagerService;Z)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/display/DisplayManagerService;->mMirrorBuiltInDisplay:Z

    return-void
.end method

.method public final updateUserDisabledHdrTypesFromSettingsLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "are_user_disabled_hdr_formats_allowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "user_disabled_hdr_formats"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v3, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mUserDisabledHdrTypes:[I

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayManagerService;->mAreUserDisabledHdrTypesAllowed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    new-instance v1, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    const-string v1, "DisplayManagerService"

    const-string v2, "Failed to parse USER_DISABLED_HDR_FORMATS. Clearing the setting."

    invoke-static {v1, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->clearUserDisabledHdrTypesLocked()V

    return-void
.end method

.method public final updateUserPreferredDisplayModeSettingsLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_preferred_refresh_rate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "user_preferred_resolution_height"

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "user_preferred_resolution_width"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Landroid/view/Display$Mode;

    invoke-direct {v4, v3, v1, v0}, Landroid/view/Display$Mode;-><init>(IIF)V

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceRepository;->forEachLocked(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    new-instance v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayManagerService;I)V

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->forEachLocked(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public final updateViewportPowerStateLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 7

    iget-object p1, p1, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/hardware/display/DisplayViewport;

    iget v5, v4, Landroid/hardware/display/DisplayViewport;->type:I

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget-object v6, v4, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v5}, Landroid/view/Display;->isActiveState(I)Z

    move-result v5

    iput-boolean v5, v4, Landroid/hardware/display/DisplayViewport;->isActive:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mHandler:Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public validateBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object p1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [F

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget v2, p1, v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService;->mMinimumBrightnessSpline:Landroid/util/Spline;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const-string p0, "DisplayManagerService"

    const-string/jumbo p1, "brightness curve is too dark"

    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final validatePackageName(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length p1, p0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final windowManagerAndInputReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-class v1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mUidImportanceListener:Lcom/android/server/display/DisplayManagerService$UidImportanceListener;

    const/16 v3, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    const-class v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    iput-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManagerInternal;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    new-instance v3, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayManagerService$DeviceStateListener;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v2, v1, Lcom/android/server/display/LogicalDisplayMapper;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
