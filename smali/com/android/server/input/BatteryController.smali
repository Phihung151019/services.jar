.class public final Lcom/android/server/input/BatteryController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z

.field static final POLLING_PERIOD_MILLIS:J = 0x2710L

.field static final USI_BATTERY_VALIDITY_DURATION_MILLIS:J = 0x36ee80L


# instance fields
.field public mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

.field public final mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceMonitors:Landroid/util/ArrayMap;

.field public final mHandlePollEventCallback:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

.field public mIsInteractive:Z

.field public mIsPolling:Z

.field public final mListenerRecords:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;Lcom/android/server/input/UEventManager;Lcom/android/server/input/BatteryController$BluetoothBatteryManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    new-instance v0, Lcom/android/server/input/BatteryController$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$1;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController;->mInputDeviceListener:Lcom/android/server/input/BatteryController$1;

    iput-object p1, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    iput-object p5, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    return-void
.end method

.method public static findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public static notifyBatteryListener(Lcom/android/server/input/BatteryController$ListenerRecord;Lcom/android/server/input/BatteryController$State;)V
    .locals 3

    const-string v0, "BatteryController"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputDeviceBatteryListener;->onBatteryStateChanged(Landroid/hardware/input/IInputDeviceBatteryState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to notify listener"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Notified battery listener from pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of state of deviceId "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-static {v1, p0, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final monitor()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p3, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;
    .locals 7

    new-instance v0, Lcom/android/server/input/BatteryController$State;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    if-eqz p4, :cond_0

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryStatus(I)I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    invoke-interface {p0, p1}, Lcom/android/server/input/NativeInputManagerService;->getBatteryCapacity(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    :goto_2
    move v6, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    goto :goto_3

    :cond_1
    const/high16 p0, 0x7fc00000    # Float.NaN

    goto :goto_2

    :goto_3
    invoke-direct/range {v0 .. v6}, Lcom/android/server/input/BatteryController$State;-><init>(IJZIF)V

    return-object v0
.end method

.method public final unregisterRecordLocked(Lcom/android/server/input/BatteryController$ListenerRecord;I)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget v1, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mPid:I

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/BatteryController$ListenerRecord;

    iget-object v3, v3, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/input/BatteryController$DeviceMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Maps are out of sync: Cannot find device state for deviceId "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v3, v2, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    if-eqz v3, :cond_2

    iget-object v6, v5, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    invoke-virtual {v3}, Landroid/os/UEventObserver;->stopObserving()V

    iput-object v4, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopBluetoothMetadataMonitoring()V

    iput-object v4, v2, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    iget-object p2, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mMonitoredDevices:Ljava/util/Set;

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mListener:Landroid/hardware/input/IInputDeviceBatteryListener;

    invoke-interface {p2}, Landroid/hardware/input/IInputDeviceBatteryListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object p1, p1, Lcom/android/server/input/BatteryController$ListenerRecord;->mDeathRecipient:Lcom/android/server/input/BatteryController$ListenerRecord$$ExternalSyntheticLambda0;

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p1, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "Battery listener removed for pid "

    const-string p2, "BatteryController"

    invoke-static {v1, p1, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/server/input/BatteryController;->updatePollingLocked(Z)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot unregister battery callback: The deviceId "

    const-string v0, " is not being monitored by pid "

    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateBluetoothBatteryMonitoring()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BatteryController"

    const-string/jumbo v2, "Registering bluetooth battery listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    invoke-interface {p0, v1}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->addBatteryListener(Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "BatteryController"

    const-string/jumbo v2, "Unregistering bluetooth battery listener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    invoke-interface {v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->removeBatteryListener(Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updatePollingLocked(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsInteractive:Z

    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v3}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    if-eqz p1, :cond_1

    const-wide/16 p0, 0x2710

    goto :goto_0

    :cond_1
    const-wide/16 p0, 0x0

    :goto_0
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
