.class public final Lcom/android/server/input/BatteryController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    return-void
.end method


# virtual methods
.method public final onInputDeviceAdded(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/input/BatteryController;->processInputDevice(ILjava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v1, v1, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v1, v1, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    iget-object p0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    invoke-direct {v3, p0, p1}, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;-><init>(Lcom/android/server/input/BatteryController;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final onInputDeviceChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$1;->this$0:Lcom/android/server/input/BatteryController;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onConfiguration(J)V

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onInputDeviceRemoved(I)V
    .locals 0

    return-void
.end method
