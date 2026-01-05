.class public final Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/input/BatteryController$BluetoothBatteryManager;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;-><init>(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)V

    iput-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final addBatteryListener(Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    iget-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Only one bluetooth battery listener can be registered at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final addMetadataListener(Ljava/lang/String;Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, p0, p2}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    return-void
.end method

.method public final getBatteryLevel(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    return p0
.end method

.method public final getMetadata(ILjava/lang/String;)[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    return-object p0
.end method

.method public final removeBatteryListener(Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    iget-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "Listener is not registered."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeMetadataListener(Ljava/lang/String;Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->getBluetoothDevice(Landroid/content/Context;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {v0, p0, p2}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    return-void
.end method
