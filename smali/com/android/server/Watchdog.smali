.class public final Lcom/android/server/Watchdog;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/util/Dumpable;


# static fields
.field public static final AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field public static isDumped:Z

.field public static lastSyncCount:J

.field public static mAllocatedMemory:J

.field public static mContext:Landroid/content/Context;

.field public static mCurrentBlockGcCount:J

.field public static mCurrentTimeWaitingForGc:J

.field public static mFdLeakThreshold:J

.field public static mMaxHeap:J

.field public static mMinHeap:J

.field public static mPrevTotalBlockingGcCount:J

.field public static mPrevTotalTimeWaitingForGc:J

.field public static mTotalMemory:J

.field public static sWatchdog:Lcom/android/server/Watchdog;

.field public static syncCount:J


# instance fields
.field public final fdWatcher:Lcom/android/server/FileDescriptorWatcher;

.field public final hdWatcher:Lcom/android/server/HeapdumpWatcher;

.field public mActivity:Lcom/android/server/am/ActivityManagerService;

.field public mAllowRestart:Z

.field public mController:Landroid/app/IActivityController;

.field public mControllerDescription:Ljava/lang/String;

.field public final mHandlerCheckers:Ljava/util/ArrayList;

.field public final mInterestingJavaPids:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field public final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public final mThread:Ljava/lang/Thread;

.field public final mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

.field public volatile mWatchdogTimeoutMillis:J

.field public final softdog:Lcom/android/server/WatchdogSoftdog;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    const-class v0, Lcom/android/server/Watchdog;

    const-string/jumbo v0, "ro.product.cpu.abilist64"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "dalvik.vm.dex2oat64.enabled"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, "/apex/com.android.art/bin/dex2oat64"

    :goto_1
    move-object/from16 v26, v0

    goto :goto_2

    :cond_1
    const-string v0, "/apex/com.android.art/bin/dex2oat32"

    goto :goto_1

    :goto_2
    const-string/jumbo v29, "webview_zygote"

    const-string v30, "/vendor/bin/hw/vendor.samsung.hardware.camera.provider-service_64"

    const-string v2, "/system/bin/audioserver"

    const-string v3, "/system/bin/cameraserver"

    const-string v4, "/system/bin/drmserver"

    const-string v5, "/system/bin/keystore2"

    const-string v6, "/system/bin/mediadrmserver"

    const-string v7, "/system/bin/mediaserver"

    const-string v8, "/system/bin/mediaserver32"

    const-string v9, "/system/bin/mediaserver64"

    const-string v10, "/system/bin/netd"

    const-string v11, "/system/bin/sdcard"

    const-string v12, "/system/bin/servicemanager"

    const-string v13, "/system/bin/surfaceflinger"

    const-string v14, "/system/bin/vold"

    const-string v15, "/system/bin/installd"

    const-string v16, "/system/bin/perfmond"

    const-string/jumbo v17, "media.extractor"

    const-string/jumbo v18, "media.metrics"

    const-string/jumbo v19, "media.codec"

    const-string/jumbo v20, "media.swcodec"

    const-string/jumbo v21, "media.transcoding"

    const-string/jumbo v22, "com.android.bluetooth"

    const-string v23, "/apex/com.android.art/bin/artd"

    const-string v24, "/apex/com.android.os.statsd/bin/statsd"

    const-string v25, "/apex/com.samsung.android.spqr/bin/spqr"

    const-string/jumbo v27, "zygote64"

    const-string/jumbo v28, "zygote"

    filled-new-array/range {v2 .. v30}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    const-string/jumbo v25, "android.hardware.vr@1.0::IVr"

    const-string/jumbo v26, "android.system.suspend@1.0::ISystemSuspend"

    const-string/jumbo v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string/jumbo v3, "android.hardware.audio@5.0::IDevicesFactory"

    const-string/jumbo v4, "android.hardware.audio@6.0::IDevicesFactory"

    const-string/jumbo v5, "android.hardware.audio@7.0::IDevicesFactory"

    const-string/jumbo v6, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string/jumbo v7, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string/jumbo v8, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string/jumbo v9, "android.hardware.camera.provider@2.7::ICameraProvider"

    const-string/jumbo v10, "android.hardware.gnss@1.0::IGnss"

    const-string/jumbo v11, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string/jumbo v12, "android.hardware.graphics.allocator@4.0::IAllocator"

    const-string/jumbo v13, "android.hardware.graphics.composer@2.1::IComposer"

    const-string/jumbo v14, "android.hardware.health@2.0::IHealth"

    const-string/jumbo v15, "android.hardware.light@2.0::ILight"

    const-string/jumbo v16, "android.hardware.media.c2@1.0::IComponentStore"

    const-string/jumbo v17, "android.hardware.media.omx@1.0::IOmx"

    const-string/jumbo v18, "android.hardware.media.omx@1.0::IOmxStore"

    const-string/jumbo v19, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string/jumbo v20, "android.hardware.power@1.0::IPower"

    const-string/jumbo v21, "android.hardware.power.stats@1.0::IPowerStats"

    const-string/jumbo v22, "android.hardware.sensors@1.0::ISensors"

    const-string/jumbo v23, "android.hardware.sensors@2.0::ISensors"

    const-string/jumbo v24, "android.hardware.sensors@2.1::ISensors"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    const-string/jumbo v25, "android.system.suspend.ISystemSuspend/"

    const-string/jumbo v26, "android.hardware.thermal.IThermal/"

    const-string/jumbo v2, "android.hardware.audio.core.IModule/"

    const-string/jumbo v3, "android.hardware.audio.core.IConfig/"

    const-string/jumbo v4, "android.hardware.audio.effect.IFactory/"

    const-string/jumbo v5, "android.hardware.biometrics.face.IFace/"

    const-string/jumbo v6, "android.hardware.biometrics.fingerprint.IFingerprint/"

    const-string/jumbo v7, "android.hardware.bluetooth.IBluetoothHci/"

    const-string/jumbo v8, "android.hardware.camera.provider.ICameraProvider/"

    const-string/jumbo v9, "android.hardware.drm.IDrmFactory/"

    const-string/jumbo v10, "android.hardware.gnss.IGnss/"

    const-string/jumbo v11, "android.hardware.graphics.allocator.IAllocator/"

    const-string/jumbo v12, "android.hardware.graphics.composer3.IComposer/"

    const-string/jumbo v13, "android.hardware.health.IHealth/"

    const-string/jumbo v14, "android.hardware.input.processor.IInputProcessor/"

    const-string/jumbo v15, "android.hardware.light.ILights/"

    const-string/jumbo v16, "android.hardware.neuralnetworks.IDevice/"

    const-string/jumbo v17, "android.hardware.power.IPower/"

    const-string/jumbo v18, "android.hardware.power.stats.IPowerStats/"

    const-string/jumbo v19, "android.hardware.sensors.ISensors/"

    const-string/jumbo v20, "android.hardware.vibrator.IVibrator/"

    const-string/jumbo v21, "android.hardware.vibrator.IVibratorManager/"

    const-string/jumbo v22, "android.hardware.wifi.hostapd.IHostapd/"

    const-string/jumbo v23, "android.hardware.wifi.IWifi/"

    const-string/jumbo v24, "android.hardware.wifi.supplicant.ISupplicant/"

    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v2, 0x1388

    sput-wide v2, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    sput-wide v2, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    sput-wide v2, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    sput-wide v2, Lcom/android/server/Watchdog;->mTotalMemory:J

    const-wide v2, 0x7fffffffffffffffL

    sput-wide v2, Lcom/android/server/Watchdog;->mMinHeap:J

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/Watchdog;->mMaxHeap:J

    sput-boolean v1, Lcom/android/server/Watchdog;->isDumped:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/Watchdog;->lastSyncCount:J

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    const-wide/32 v4, 0xea60

    iput-wide v4, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    iput-object v2, p0, Lcom/android/server/Watchdog;->mSemHqmManager:Landroid/os/SemHqmManager;

    new-instance v2, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/Watchdog$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/Watchdog;)V

    const-string/jumbo v6, "watchdog"

    invoke-direct {v2, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mThread:Ljava/lang/Thread;

    const-string/jumbo v2, "watchdog.monitor"

    const/4 v5, 0x0

    invoke-static {v5, v2, v3}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    move-result-object v2

    new-instance v6, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v7, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v2, "monitor thread"

    invoke-direct {v6, v7, v2, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {v6}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string/jumbo v7, "foreground thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v7, "main thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string/jumbo v7, "ui thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string/jumbo v7, "i/o thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string/jumbo v7, "display thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string/jumbo v7, "animation thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const-string/jumbo v7, "surface animation thread"

    invoke-direct {v2, v6, v7, v0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/server/FileDescriptorWatcher;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    iput-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    new-instance v0, Lcom/android/server/am/TraceErrorLogger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    new-instance v0, Lcom/android/server/HeapdumpWatcher;

    invoke-direct {v0}, Lcom/android/server/HeapdumpWatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/WatchdogSoftdog;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogTimeout:I

    iput-boolean v3, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    sput-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    :cond_0
    sget-object v0, Lcom/android/server/WatchdogSoftdog;->sInstance:Lcom/android/server/WatchdogSoftdog;

    iput-object v0, p0, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    return-void
.end method

.method public static describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    move-object v2, p0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v3, v2, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    if-nez v3, :cond_1

    const-string v3, "Blocked in handler"

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Blocked in monitor "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    iget-object v4, v2, Lcom/android/server/Watchdog$HandlerChecker;->mClock:Ljava/time/Clock;

    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    iget-wide v6, v2, Lcom/android/server/Watchdog$HandlerChecker;->mStartTimeMillis:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-string v6, " on "

    invoke-static {v3, v6}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v2, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static doSysRq(C)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "Watchdog"

    const-string v1, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method public static getInterestingNativePids()Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Landroid/os/ServiceManager;->getServiceDebugInfo()[Landroid/os/ServiceDebugInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    sget-object v6, Lcom/android/server/Watchdog;->AIDL_INTERFACE_PREFIXES_OF_INTEREST:[Ljava/lang/String;

    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    iget-object v10, v5, Landroid/os/ServiceDebugInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v5, Landroid/os/ServiceDebugInfo;->debugPid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    iget v6, v5, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v7, v5, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    iget v5, v5, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "Watchdog"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v3, v1

    :goto_4
    if-ge v2, v3, :cond_7

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getPsInfo()V
    .locals 10

    const-string/jumbo v0, "Watchdog"

    const-string v1, "/data/log/watchdog_ps"

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string/jumbo v3, "ps -A -o PID,PPID,S,NAME"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5, v3}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v1, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v6

    goto :goto_3

    :goto_1
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v6

    :try_start_8
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v5

    :try_start_a
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v6
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_0
    :try_start_b
    const-string v5, "Failed to write watchdog_ps"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    :catch_1
    :cond_2
    return-void

    :goto_5
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :catch_2
    :cond_3
    throw v0

    :catch_3
    const-string v1, "Failed to get ps info"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addThread(Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->withDefaultTimeout(Lcom/android/server/Watchdog$HandlerChecker;)Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addThread(Landroid/os/Handler;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/Watchdog$HandlerChecker;

    iget-object p0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    invoke-direct {v3, p1, v1, p0}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;-><init>(Lcom/android/server/Watchdog$HandlerChecker;Ljava/util/Optional;)V

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo p2, "WatchdogTimeoutMillis="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/Watchdog;->mWatchdogTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public final getCheckersWithStateLocked(I)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    iget-object v2, v2, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final pauseWatchingCurrentThread(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    iget-object v3, v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    iput-boolean v5, v3, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Pausing HandlerChecker: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    const-string v6, " for reason: "

    const-string v7, ". Pause count: "

    invoke-static {v4, v5, v6, p1, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, v3, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    const-string/jumbo v5, "Watchdog"

    invoke-static {v4, v3, v5}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final pauseWatchingCurrentThreadFor(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    iget-object v3, v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1, p2}, Lcom/android/server/Watchdog$HandlerChecker;->pauseForLocked(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final printLogAndCheckStatus()V
    .locals 11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->mTotalMemory:J

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    div-long/2addr v4, v2

    sub-long/2addr v0, v4

    sput-wide v0, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    iget-object v2, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    iput-wide v0, v2, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    iget-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/self/fd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/Watchdog;->softdog:Lcom/android/server/WatchdogSoftdog;

    iget-boolean v0, v0, Lcom/android/server/WatchdogSoftdog;->mSoftdogDisabled:Z

    if-eqz v0, :cond_1

    const-string v0, " softdog disabled"

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v3, 0x14

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string/jumbo v2, "Watchdog"

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "!@Sync: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/android/server/Watchdog;->syncCount:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " heap(MB): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/Watchdog;->mTotalMemory:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " FD: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    iget v5, v5, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    invoke-static {v5, v0, v2, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v1, "art.gc.total-time-waiting-for-gc"

    invoke-static {v1}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string/jumbo v1, "art.gc.blocking-gc-count"

    invoke-static {v1}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v9, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    sub-long v9, v5, v9

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    sput-wide v9, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    sget-wide v9, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    sub-long v9, v7, v9

    sput-wide v9, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    sput-wide v5, Lcom/android/server/Watchdog;->mPrevTotalTimeWaitingForGc:J

    sput-wide v7, Lcom/android/server/Watchdog;->mPrevTotalBlockingGcCount:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Sync:\t"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v5, Lcom/android/server/Watchdog;->syncCount:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\theap(MB):\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\t/\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/Watchdog;->mTotalMemory:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\tnative(MB):\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v5}, Landroid/os/Debug$MemoryInfo;-><init>()V

    invoke-static {v5}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    iget v6, v5, Landroid/os/Debug$MemoryInfo;->nativePss:I

    iget v5, v5, Landroid/os/Debug$MemoryInfo;->nativeSwappedOutPss:I

    add-int/2addr v6, v5

    div-int/lit16 v6, v6, 0x400

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\tFD:\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    iget v5, v5, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\tWaitTime:\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/Watchdog;->mCurrentTimeWaitingForGc:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms\tGCcnt:\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/Watchdog;->mCurrentBlockGcCount:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "\tFullGC:\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "art.gc.pre-oome-gc-count"

    invoke-static {v5}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "!@"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\t"

    const-string v7, " "

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/Watchdog;->mMinHeap:J

    sget-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    sget-wide v5, Lcom/android/server/Watchdog;->mAllocatedMemory:J

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    :goto_2
    sget-wide v0, Lcom/android/server/Watchdog;->syncCount:J

    const-wide/16 v5, 0x2d0

    rem-long/2addr v0, v5

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lcom/android/server/Watchdog$1;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_3
    iget-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/FileDescriptorWatcher;

    iget v0, v0, Lcom/android/server/FileDescriptorWatcher;->mFdCount:I

    int-to-long v0, v0

    sget-wide v5, Lcom/android/server/Watchdog;->mFdLeakThreshold:J

    cmp-long v0, v0, v5

    const/4 v1, 0x1

    const-string/jumbo v2, "Watchdog:HeapdumpWatcher"

    if-ltz v0, :cond_7

    sget-boolean v0, Lcom/android/server/Watchdog;->isDumped:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    sget-wide v5, Lcom/android/server/Watchdog;->lastSyncCount:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_5

    sget-wide v3, Lcom/android/server/Watchdog;->syncCount:J

    sput-wide v3, Lcom/android/server/Watchdog;->lastSyncCount:J

    goto :goto_5

    :cond_5
    sget-wide v3, Lcom/android/server/Watchdog;->syncCount:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xa

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    goto :goto_5

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "FDs are overused. Creating heapdump."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/HeapdumpWatcher;->makeHeapDump()V

    sput-boolean v1, Lcom/android/server/Watchdog;->isDumped:Z

    goto :goto_5

    :cond_7
    :goto_4
    sput-wide v3, Lcom/android/server/Watchdog;->lastSyncCount:J

    :goto_5
    iget-object p0, p0, Lcom/android/server/Watchdog;->hdWatcher:Lcom/android/server/HeapdumpWatcher;

    iget-wide v3, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    long-to-double v3, v3

    sget-wide v5, Lcom/android/server/HeapdumpWatcher;->THRESHOLD_OF_HEAPDUMP:D

    cmpg-double v0, v3, v5

    if-gez v0, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mScreenOffCount:I

    return-void

    :cond_8
    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ The heap has been allocated excessively. OverThresholdCnt : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    invoke-static {v0, v1, v2}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/android/server/HeapdumpWatcher;->mOverThresholdCnt:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->makeHeapDump()V

    return-void

    :cond_9
    iget-wide v0, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    long-to-double v0, v0

    sget-wide v2, Lcom/android/server/HeapdumpWatcher;->THRESHOLD_OF_SLUGGISH:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkScreenOff()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkBackgroundAudio()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/HeapdumpWatcher;->checkCall()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Ljava/lang/OutOfMemoryError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeapFull, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/HeapdumpWatcher;->mAllocatedMemory:J

    const-string/jumbo p0, "MB was used"

    invoke-static {v1, v2, v3, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    return-void
.end method

.method public final processStarted(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string/jumbo v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Interesting Java process "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " started. Pid "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final resumeWatchingCurrentThread(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;

    iget-object v3, v3, Lcom/android/server/Watchdog$HandlerCheckerAndTimeout;->mHandler:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
