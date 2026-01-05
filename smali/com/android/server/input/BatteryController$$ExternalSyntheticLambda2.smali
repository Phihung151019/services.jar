.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/BatteryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/BatteryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/input/BatteryController;

    iget-object v0, p0, Lcom/android/server/input/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/BatteryController;->mIsPolling:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/input/BatteryController;->mDeviceMonitors:Landroid/util/ArrayMap;

    new-instance v4, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1, v2}, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda7;-><init>(J)V

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v1, p0, Lcom/android/server/input/BatteryController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/input/BatteryController;->mHandlePollEventCallback:Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda2;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
