.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic f$0:Lcom/android/server/BatteryService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Lvendor/samsung/hardware/health/SehHealthInfo;)V
    .locals 7

    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/BatteryService;

    sget-object v0, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    iget-object v0, p1, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    const-string v1, "HealthInfoUpdate"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v1, "BatteryChargeCounter"

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide/32 v5, 0x20000

    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "BatteryCurrent"

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string/jumbo v1, "PlugType"

    invoke-static {p1}, Lcom/android/server/BatteryService;->plugType(Lvendor/samsung/hardware/health/SehHealthInfo;)I

    move-result v4

    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string v1, "BatteryStatus"

    iget v4, v0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-static {v5, v6, v1, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v4, :cond_0

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    iget-object p0, p0, Lcom/android/server/BatteryService;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLastSehHealthInfo:Lvendor/samsung/hardware/health/SehHealthInfo;

    invoke-static {p0, p1}, Lcom/android/server/health/Utils;->copySehV1Battery(Lvendor/samsung/hardware/health/SehHealthInfo;Lvendor/samsung/hardware/health/SehHealthInfo;)V

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
