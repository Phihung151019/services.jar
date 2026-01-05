.class public Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final HIDL_INTERFACES_OF_INTEREST:Ljava/util/List;

.field public static final NATIVE_SERVICES_OF_INTEREST:[Ljava/lang/String;

.field public static final NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

.field public static final NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

.field public static final REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;


# instance fields
.field public final mActiveCameraUsage:Landroid/util/ArrayMap;

.field public final mCameraEventHistory:Ljava/util/List;

.field public final mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy$2;

.field public mCameraServiceRaw:Landroid/hardware/ICameraService;

.field public final mContext:Landroid/content/Context;

.field public mDeviceState:I

.field public final mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

.field public mEnabledCameraUsers:Ljava/util/Set;

.field public final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntentReceiver:Lcom/android/server/camera/CameraServiceProxy$1;

.field public mLastReportedDeviceState:I

.field public mLastUser:I

.field public final mLock:Ljava/lang/Object;

.field public final mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mNfcBlockCameraUsage:Landroid/util/ArrayMap;

.field public final mNotifyNfc:Z

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v5, "com.samsung.android.sead"

    const-string/jumbo v6, "com.samsung.sightcare"

    const-string/jumbo v1, "com.samsung.android.smartface"

    const-string/jumbo v2, "com.samsung.adaptivebrightnessgo"

    const-string/jumbo v3, "com.samsung.android.visionintelligence"

    const-string/jumbo v4, "com.samsung.android.visionarapps"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    const-string/jumbo v0, "client.pid<"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.sead"

    const-string/jumbo v2, "com.samsung.sightcare"

    const-string/jumbo v3, "com.samsung.android.smartface"

    const-string/jumbo v4, "com.samsung.adaptivebrightnessgo"

    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    const-string v0, "/system/bin/cameraserver"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->NATIVE_SERVICES_OF_INTEREST:[Ljava/lang/String;

    const-string/jumbo v0, "android.hardware.camera.provider.ICameraProvider/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    const-string/jumbo v0, "android.hardware.camera.provider@2.4::ICameraProvider"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->HIDL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Lcom/android/server/camera/CameraServiceProxy$1;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$2;

    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy$2;

    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-string v2, "CameraService_proxy"

    const/4 v3, -0x4

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    const-string/jumbo v2, "ro.camera.notify_nfc"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v4, v1

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    invoke-direct {v0, p1, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    const-string v0, "CameraService_proxy"

    const-string/jumbo v1, "Native camera service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    const-string v1, "CameraService_proxy"

    const-string/jumbo v2, "Notify nfc service : camera service has died. start polling."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

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

.method public final canNotifyToNfcService(Ljava/lang/String;)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

    array-length v3, p0

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v6, p0, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final dumpCameraEvents()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
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

.method public final getCameraServiceRawLocked()Landroid/hardware/ICameraService;
    .locals 3

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    if-nez v0, :cond_1

    const-string/jumbo v0, "media.camera"

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    goto :goto_0

    :catch_0
    const-string p0, "CameraService_proxy"

    const-string v0, "Could not link to death of native camera service"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CameraServiceProxy error, invalid message: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "CameraService_proxy"

    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return v1

    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public final notifyDeviceStateWithRetriesLocked(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Could not notify cameraserver, camera service not available."

    const-string v1, "CameraService_proxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Could not notify camera service of device state change, retrying..."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_1
    iput v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    return-void
.end method

.method public final notifyNfcService(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v0, Landroid/nfc/NfcManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/nfc/NfcManager;

    const-string v0, "Could not connect to NFC service to notify it of camera state"

    const-string v1, "CameraService_proxy"

    if-nez p0, :cond_0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->setReaderModePollingEnabled(Z)V

    return-void
.end method

.method public final notifySwitchWithRetriesLocked(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    move-result-object v1

    const-string v2, "CameraService_proxy"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    const-string v0, "Could not notify cameraserver, camera service not available."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [I

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v6, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    move v6, v8

    goto :goto_0

    :cond_2
    invoke-interface {v1, v4, v5}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Could not notify cameraserver, remote exception: "

    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_1
    if-gtz p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-string v0, "Could not notify camera service of user switch, retrying..."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    sub-int/2addr p1, v4

    const/4 v0, 0x0

    invoke-virtual {p0, v4, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final onBootPhase(I)V
    .locals 3

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    aget v2, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    const-string p1, "CameraService_proxy"

    const-string v0, "Failed to register display window listener!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 5

    const-string v0, "CameraService_proxy"

    const-string v1, "CameraServiceProxy is started."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.action.USER_ADDED"

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    const-string/jumbo v2, "android.intent.action.USER_INFO_CHANGED"

    const-string/jumbo v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    const-string/jumbo v4, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Lcom/android/server/camera/CameraServiceProxy$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy$2;

    const-string/jumbo v1, "media.camera.proxy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "UserManagerService must start before CameraServiceProxy!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

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

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final switchUserLocked(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.hardware.type.automotive"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    const/16 p1, 0x3c

    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    return-void
.end method
