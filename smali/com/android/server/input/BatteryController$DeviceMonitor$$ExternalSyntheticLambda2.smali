.class public final synthetic Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v1}, Lcom/android/server/input/BatteryController;->findIf(Landroid/util/ArrayMap;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance p1, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/input/BatteryController$DeviceMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I[B)V

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/input/BatteryController$DeviceMonitor;->processChangesAndNotify(JLjava/util/function/Consumer;)V

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
