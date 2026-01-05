.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mPrevSvcLedState:I

.field public static mSvcLedColor:I

.field public static mSvcLedMode:I

.field public static mSvcLedOffMS:I

.field public static mSvcLedOnMS:I

.field public static mSvcLedState:I


# instance fields
.field public isLightSensorEnabled:Z

.field public mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public mCoverBatteryLight:Lcom/android/server/lights/LightsService$LightImpl;

.field public mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field public mCoverNotiLight:Lcom/android/server/lights/LightsService$LightImpl;

.field public mCoverOpened:Z

.field public final mCoverStateListener:Lcom/android/server/lights/LightsService$3;

.field public mCoverType:I

.field public mDelayForcedSvcLEDTask:I

.field public final mH:Landroid/os/Handler;

.field public mInitCompleteForSvcLED:Z

.field public mInitializedWakeLockPath:Z

.field public mIsLEDChanged:Z

.field public mLastSvcLedId:I

.field public mLedLowPower:I

.field public final mLightListener:Lcom/android/server/lights/LightsService$4;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightsById:Landroid/util/SparseArray;

.field public final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field public final mNewWakeLockPaths:[Ljava/lang/String;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public final mService:Lcom/android/server/lights/LightsService$2;

.field public mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field public final mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

.field public final mUpdateSvcLEDDelay:I

.field public mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field public mUseLEDAutoBrightness:Z

.field public mUsePatternLED:Z

.field public mUseSoftwareAutoBrightness:Z

.field public final mVintfLights:Ljava/util/function/Supplier;

.field public final mVintfSehLights:Ljava/util/function/Supplier;

.field public mWakeLockAcquired:Z

.field public mWakeLockPath:Ljava/lang/String;

.field public mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method public static -$$Nest$macquireWakeLockForLED(Lcom/android/server/lights/LightsService;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string/jumbo v1, "LightsService"

    if-nez v0, :cond_0

    const-string/jumbo p0, "acquireWakeLockForLED : WakeLock path is not initialized"

    invoke-static {v1, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_1
    return-void
.end method

.method public static -$$Nest$smcallerInfoToString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, " (uid: "

    const-string v3, " pid: "

    const-string v4, ") "

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(I)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(I)V

    iput-object v1, v3, Lcom/android/server/lights/LightsService$VintfHalCache;->mInstance:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;",
            "Landroid/os/Looper;",
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/light/ISehLights;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    const/16 v1, 0x2bc

    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    const-string v3, "/sys/power/wake_lock"

    const-string v4, "/sys/power/wake_unlock"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v4, v3, v0

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const/16 v3, 0xa

    new-array v4, v3, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v5, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsService$2;

    new-instance v5, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v5, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/android/server/lights/LightsService$3;

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    new-instance v5, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v5, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mLightListener:Lcom/android/server/lights/LightsService$4;

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const/4 v5, 0x3

    iput v5, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    sget-boolean p3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_LIGHTS_HAL_EXTENSION:Z

    if-eqz p3, :cond_1

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, v2

    :goto_0
    iput-object p4, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    goto :goto_2

    :cond_1
    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v2

    :goto_1
    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    :goto_2
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    const-string/jumbo p3, "LightsService"

    if-eqz p2, :cond_3

    const-string/jumbo p2, "populateAvailableLightsFromAidl"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/light/ILights;

    check-cast p2, Landroid/hardware/light/ILights$Stub$Proxy;

    invoke-virtual {p2}, Landroid/hardware/light/ILights$Stub$Proxy;->getLights()[Landroid/hardware/light/HwLight;

    move-result-object p2

    array-length p4, p2

    move v2, v0

    :goto_3
    if-ge v2, p4, :cond_5

    aget-object v5, p2, v2

    iget-object v6, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v7, v5, Landroid/hardware/light/HwLight;->id:I

    new-instance v8, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v8, p0, v5}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p2

    const-string/jumbo p4, "Unable to get lights from HAL"

    invoke-static {p3, p4, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_3
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    if-eqz p2, :cond_4

    const-string/jumbo p2, "populateAvailableLightsFromAidlExtension"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lvendor/samsung/hardware/light/ISehLights;

    check-cast p2, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    invoke-virtual {p2}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p2

    array-length p4, p2

    move v2, v0

    :goto_4
    if-ge v2, p4, :cond_5

    aget-object v5, p2, v2

    new-instance v6, Landroid/hardware/light/HwLight;

    invoke-direct {v6}, Landroid/hardware/light/HwLight;-><init>()V

    iget v7, v5, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    int-to-byte v7, v7

    iput v7, v6, Landroid/hardware/light/HwLight;->id:I

    iget v8, v5, Lvendor/samsung/hardware/light/SehHwLight;->ordinal:I

    int-to-byte v8, v8

    iput v8, v6, Landroid/hardware/light/HwLight;->ordinal:I

    iget v5, v5, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    int-to-byte v5, v5

    iput-byte v5, v6, Landroid/hardware/light/HwLight;->type:B

    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v8, p0, v6}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_1
    move-exception p2

    const-string/jumbo p4, "Unable to get lights from HAL extension"

    invoke-static {p3, p4, p2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_4
    const-string/jumbo p2, "populateAvailableLightsFromHidl"

    invoke-static {p3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    :goto_5
    if-ge p2, v3, :cond_5

    new-instance p4, Landroid/hardware/light/HwLight;

    invoke-direct {p4}, Landroid/hardware/light/HwLight;-><init>()V

    int-to-byte v2, p2

    iput v2, p4, Landroid/hardware/light/HwLight;->id:I

    iput v1, p4, Landroid/hardware/light/HwLight;->ordinal:I

    iput-byte v2, p4, Landroid/hardware/light/HwLight;->type:B

    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    invoke-direct {v6, p0, p4}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/hardware/light/HwLight;)V

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_7
    if-ltz p2, :cond_7

    iget-object p4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/lights/LightsService$LightImpl;

    iget-object v1, p4, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Landroid/hardware/light/HwLight;

    iget-byte v1, v1, Landroid/hardware/light/HwLight;->type:B

    if-ltz v1, :cond_6

    if-ge v1, v3, :cond_6

    aput-object p4, v4, v1

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v1, "populateAvailableLights: "

    invoke-virtual {v1, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    :cond_7
    new-instance p2, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p2, p0}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object p2, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    new-instance p1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {p1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    monitor-enter p1

    :catch_2
    :goto_8
    :try_start_2
    iget-boolean p2, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p2, :cond_8

    :try_start_3
    iget-object p2, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_8
    :try_start_4
    monitor-exit p1

    return-void

    :goto_9
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static native setLight_native(IIIIII)V
.end method

.method public static translateID(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo p0, "translateID error"

    return-object p0

    :pswitch_1
    const-string p0, "COUNT"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "SUB_BACKLIGHT"

    return-object p0

    :pswitch_3
    const-string/jumbo p0, "WIFI"

    return-object p0

    :pswitch_4
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_5
    const-string p0, "ATTENTION"

    return-object p0

    :pswitch_6
    const-string/jumbo p0, "NOTIFICATIONS"

    return-object p0

    :pswitch_7
    const-string p0, "BATTERY"

    return-object p0

    :pswitch_8
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_9
    const-string p0, "KEYBOARD"

    return-object p0

    :pswitch_a
    const-string p0, "BACKLIGHT"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static translateLightType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo p0, "translateLightType error"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "SUB_BACKLIGHT"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "WIFI"

    return-object p0

    :pswitch_3
    const-string p0, "BLUETOOTH"

    return-object p0

    :pswitch_4
    const-string p0, "ATTENTION"

    return-object p0

    :pswitch_5
    const-string/jumbo p0, "NOTIFICATIONS"

    return-object p0

    :pswitch_6
    const-string p0, "BATTERY"

    return-object p0

    :pswitch_7
    const-string p0, "BUTTON"

    return-object p0

    :pswitch_8
    const-string p0, "KEYBOARD"

    return-object p0

    :pswitch_9
    const-string p0, "BACKLIGHT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final enableSvcLEDLightSensorLocked(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Lcom/android/server/lights/LightsService$4;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Lcom/android/server/lights/LightsService$4;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 5

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    const-string/jumbo p1, "[SvcLED] systemReady"

    const-string/jumbo v0, "LightsService"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    new-instance p1, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-direct {p1, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    new-instance p1, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Lcom/android/server/lights/LightsService$1;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    :cond_0
    new-instance p1, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo p1, "initCoverState()start"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initCoverState() coverstate : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-static {p1, v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "initCoverState() : state is null"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/android/server/lights/LightsService$3;

    invoke-virtual {p1, v1}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "initLightsService() : mCoverManager is null!!!!"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, p1, v4

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    aget-object v1, p1, v4

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v3, p1, v1

    invoke-static {v3}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    goto :goto_2

    :cond_4
    const-string/jumbo p1, "wake_unlock path does not exists "

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string/jumbo p1, "wake_lock path does not exists"

    invoke-static {v0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    invoke-static {v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;)V

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_7
    return-void
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsService$2;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-string/jumbo v0, "lights"

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setSvcLedLightLocked(I)V
    .locals 8

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    move p1, v1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    const-string v0, "/sys/class/sec/led/led_lowpower"

    sget v3, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fileWriteInt to /sys/class/sec/led/led_lowpower, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PowerManagerUtil"

    invoke-static {v4, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_2
    move p1, v1

    :goto_4
    const/4 v0, 0x6

    if-ge p1, v0, :cond_4

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v0, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    add-int/2addr p1, v2

    goto :goto_4

    :cond_4
    :goto_5
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-nez v0, :cond_5

    iget p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    move v0, v1

    goto :goto_9

    :cond_5
    const/4 v0, 0x3

    if-eqz p1, :cond_b

    const/4 v3, 0x4

    if-eq p1, v2, :cond_a

    const/4 v4, 0x2

    if-eq p1, v4, :cond_9

    if-eq p1, v0, :cond_8

    if-eq p1, v3, :cond_7

    const/4 v3, 0x5

    if-eq p1, v3, :cond_6

    move v0, v1

    :goto_6
    move p1, v3

    goto :goto_9

    :cond_6
    const/16 p1, 0xe

    :goto_7
    move v7, v0

    move v0, p1

    move p1, v7

    goto :goto_9

    :cond_7
    const/16 p1, 0xd

    goto :goto_7

    :cond_8
    const/16 p1, 0xa

    goto :goto_7

    :cond_9
    sget p1, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    :goto_8
    move v0, p1

    goto :goto_6

    :cond_a
    const/16 p1, 0xc

    goto :goto_8

    :cond_b
    const/16 p1, 0xb

    goto :goto_7

    :goto_9
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v3, p1

    sget v4, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v5, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v6, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIII)V

    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    const-string/jumbo v3, "LightsService"

    if-eq v0, p1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SvcLED] setSvcLedLightLocked : priority changed! SvcLED("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") OUT; ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") IN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SvcLED] setSvcLedLightLocked : Current SvcLED("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") maintains its priority right"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iput p1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez p1, :cond_d

    const-string/jumbo p0, "releaseWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_d
    iget-boolean p1, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    :cond_e
    :goto_b
    return-void
.end method

.method public final setSvcLedStateLocked(IIIIIZ)V
    .locals 5

    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string/jumbo v3, "LightsService"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "[SvcLED] setSvcLedStateLocked : Not Support, "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_2

    const/16 v4, 0xc

    if-ne p3, v4, :cond_1

    or-int/lit8 p2, v0, 0x2

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_1

    :cond_1
    or-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    goto :goto_1

    :cond_2
    and-int/lit8 p2, v0, -0x7

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_1

    :cond_3
    const/16 p2, -0x3a

    and-int/lit8 p4, v0, -0x3a

    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz p6, :cond_4

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p2, 0x20

    goto :goto_0

    :pswitch_2
    const/16 p2, 0x10

    goto :goto_0

    :pswitch_3
    move p2, v2

    goto :goto_0

    :pswitch_4
    const/16 p2, 0x8

    :goto_0
    or-int/2addr p2, p4

    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    :cond_4
    :goto_1
    sget p2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget p3, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq p2, p3, :cond_5

    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "[SvcLED] setSvcLedStateLocked : SvcLEDState: 0x"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p2, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    const-string p3, " -> 0x"

    invoke-static {p2, p0, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    sget p2, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | SvcLED("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") set "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_6

    const-string/jumbo p1, "On"

    goto :goto_2

    :cond_6
    const-string/jumbo p1, "Off"

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
