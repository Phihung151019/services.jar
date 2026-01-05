.class public final Lcom/android/server/input/BatteryController$DeviceMonitor$1;
.super Lcom/android/server/input/BatteryController$UEventBatteryListener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

.field public final synthetic val$deviceId:I


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->val$deviceId:I

    invoke-direct {p0}, Lcom/android/server/input/BatteryController$UEventBatteryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBatteryUEvent(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iget-object v0, v0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    iget p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->val$deviceId:I

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
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/BatteryController$DeviceMonitor;->onUEvent(J)V

    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
