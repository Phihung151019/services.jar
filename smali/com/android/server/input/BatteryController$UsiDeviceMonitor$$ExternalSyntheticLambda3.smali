.class public final synthetic Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController$UsiDeviceMonitor;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    iput p2, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/input/BatteryController$UsiDeviceMonitor;

    iget p0, p0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor$$ExternalSyntheticLambda3;->f$1:I

    iget-object v0, v0, Lcom/android/server/input/BatteryController$UsiDeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    iget-object v1, v0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/input/BatteryController$DeviceMonitor;

    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onTimeout(J)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
