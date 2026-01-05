.class public Lcom/android/server/input/BatteryController$DeviceMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBluetoothBatteryLevel:I

.field public mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public mBluetoothEventTime:J

.field public mBluetoothMetadataBatteryLevel:I

.field public mBluetoothMetadataBatteryStatus:I

.field public mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

.field public mHasBattery:Z

.field public final mState:Lcom/android/server/input/BatteryController$State;

.field public mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    new-instance p1, Lcom/android/server/input/BatteryController$State;

    invoke-direct {p1, p2}, Lcom/android/server/input/BatteryController$State;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->configureDeviceMonitor(J)V

    return-void
.end method


# virtual methods
.method public final configureDeviceMonitor(J)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    sget-boolean v3, Lcom/android/server/input/BatteryController;->DEBUG:Z

    iget-object v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v5, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    iget-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    xor-int/lit8 v4, v2, 0x1

    iput-boolean v4, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    if-nez v2, :cond_2

    iget v2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-object v4, v3, Lcom/android/server/input/BatteryController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {v4, v2}, Lcom/android/server/input/NativeInputManagerService;->getBatteryDevicePath(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    new-instance v4, Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    invoke-direct {v4, p0, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor$1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    iput-object v4, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "DEVPATH="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/sys"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v3, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v4, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    invoke-virtual {v2, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    if-eqz v0, :cond_3

    iget-object v2, v3, Lcom/android/server/input/BatteryController;->mUEventManager:Lcom/android/server/input/UEventManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/server/input/UEventManager$UEventListener;->mObserver:Lcom/android/server/input/UEventManager$UEventListener$1;

    invoke-virtual {v0}, Landroid/os/UEventObserver;->stopObserving()V

    iput-object v5, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBatteryStateFromNative(J)V

    :cond_4
    iget-object v0, v3, Lcom/android/server/input/BatteryController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v3, v1, v5, v2}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Bluetooth device is now "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v4, ""

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "not"

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " present for deviceId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->stopBluetoothMetadataMonitoring()V

    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Lcom/android/server/input/BatteryController;->updateBluetoothBatteryMonitoring()V

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v3, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    invoke-interface {v1, v0}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getBatteryLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v0, v3}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/BatteryController;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    invoke-interface {v1, v0, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->addMetadataListener(Ljava/lang/String;Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;)V

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    invoke-interface {v1, v2, v0}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getMetadata(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(J[BI)V

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x13

    invoke-interface {v1, v2, v0}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->getMetadata(ILjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->updateBluetoothMetadataState(J[BI)V

    :cond_7
    return-void
.end method

.method public getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    move-result-object v0

    new-instance v1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$State;

    return-object p0
.end method

.method public onConfiguration(J)V
    .locals 2

    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onPoll(J)V
    .locals 2

    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public onStylusGestureStarted(J)V
    .locals 0

    return-void
.end method

.method public onTimeout(J)V
    .locals 0

    return-void
.end method

.method public onUEvent(J)V
    .locals 2

    new-instance v0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    return-void
.end method

.method public final processChangesAndNotify(JLjava/util/function/Consumer;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->getBatteryStateForReporting()Lcom/android/server/input/BatteryController$State;

    move-result-object p1

    iget-wide p2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iget-wide v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iput-wide v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    invoke-virtual {v0, p1}, Landroid/hardware/input/IInputDeviceBatteryState;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-wide p2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    const-string/jumbo p2, "Notifying all listeners of battery state: "

    iget-object p3, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-boolean v0, Lcom/android/server/input/BatteryController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mListenerRecords:Landroid/util/ArrayMap;

    new-instance p2, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/input/BatteryController$State;)V

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;
    .locals 8

    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    const/16 v1, 0x64

    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothBatteryLevel:I

    if-ltz v0, :cond_1

    if-gt v0, v1, :cond_1

    :goto_0
    new-instance v1, Lcom/android/server/input/BatteryController$State;

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v2, v2, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    iget v6, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    int-to-float p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v7, p0, v0

    const/4 v5, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/input/BatteryController$State;-><init>(IJZIF)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final stopBluetoothMetadataMonitoring()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mBluetoothBatteryManager:Lcom/android/server/input/BatteryController$BluetoothBatteryManager;

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1, v2}, Lcom/android/server/input/BatteryController$BluetoothBatteryManager;->removeMetadataListener(Ljava/lang/String;Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataListener:Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v2, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    sget-boolean v3, Lcom/android/server/input/BatteryController;->DEBUG:Z

    iget-object v3, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v5, "<none>"

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', NativeBattery="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", UEventListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mUEventBatteryListener:Lcom/android/server/input/BatteryController$DeviceMonitor$1;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "added"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BluetoothState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/input/BatteryController$DeviceMonitor;->resolveBluetoothBatteryState()Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBatteryStateFromNative(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mState:Lcom/android/server/input/BatteryController$State;

    iget v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-boolean v2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mHasBattery:Z

    sget-boolean v3, Lcom/android/server/input/BatteryController;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/input/BatteryController;->queryBatteryStateFromNative(IJZ)Lcom/android/server/input/BatteryController$State;

    move-result-object p0

    iget-wide p1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iput-wide v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    invoke-virtual {v0, p0}, Landroid/hardware/input/IInputDeviceBatteryState;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-wide p1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    if-nez v1, :cond_0

    iget p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iget-boolean p2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v3, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    iput p1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iput-wide v1, v0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iput-boolean p2, v0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iput v3, v0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iput p0, v0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    :cond_0
    return-void
.end method

.method public final updateBluetoothMetadataState(J[BI)V
    .locals 1

    const/16 v0, 0x12

    if-eq p4, v0, :cond_3

    const/16 v0, 0x13

    if-eq p4, v0, :cond_0

    goto :goto_1

    :cond_0
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    if-eqz p3, :cond_2

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    return-void

    :cond_2
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryStatus:I

    return-void

    :cond_3
    iput-wide p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothEventTime:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I

    if-eqz p3, :cond_4

    :try_start_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothMetadataBatteryLevel:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    sget-boolean p1, Lcom/android/server/input/BatteryController;->DEBUG:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to parse bluetooth METADATA_MAIN_BATTERY with value \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' for device "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryController"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
