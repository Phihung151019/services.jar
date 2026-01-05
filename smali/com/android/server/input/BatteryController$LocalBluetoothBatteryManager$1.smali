.class public final Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string/jumbo p1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "android.bluetooth.device.extra.DEVICE"

    const-class v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.bluetooth.device.extra.BATTERY_LEVEL"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    iget-object v0, v0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mBroadcastReceiver:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    iget-object v1, v1, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager$1;->this$0:Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$LocalBluetoothBatteryManager;->mRegisteredListener:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/input/BatteryController;

    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v4}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-eqz p0, :cond_2

    new-instance p1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
