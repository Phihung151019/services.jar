.class public final Lcom/android/server/am/BatteryStatsService$LocalService;
.super Landroid/os/BatteryStatsInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/os/BatteryStatsInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMobileIfaces()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mModemNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mModemIfaces:[Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getOwnerUid(I)I
    .locals 1

    invoke-static {p1}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/Process;->getAppUidForSdkSandboxUid(I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result p0

    return p0
.end method

.method public final getSystemServiceCpuThreadTimes()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getSystemServiceCpuThreadTimes()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiIfaces()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiNetworkLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiIfaces:[Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final noteBinderCallStats(IJLjava/util/Collection;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/BatteryStatsService$LocalService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v5, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteBinderThreadNativeIds([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteBinderThreadNativeIds([I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final noteCpuWakingBluetoothProxyPacket(IJ)V
    .locals 1

    if-gez p1, :cond_0

    const-string p0, "Invalid uid for waking bluetooth proxy packet: "

    const-string p2, "BatteryStatsService"

    invoke-static {p1, p0, p2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x6

    filled-new-array {p1}, [I

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(J[II)V

    return-void
.end method

.method public final noteCpuWakingNetworkPacket(Landroid/net/Network;JI)V
    .locals 4

    const-string v0, "BatteryStatsService"

    if-gez p4, :cond_0

    const-string p0, "Invalid uid for waking network packet: "

    invoke-static {p4, p0, v0}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-ne v1, v3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Could not map transport for network: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " while attributing wakeup by packet sent to uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    filled-new-array {p4}, [I

    move-result-object p1

    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(J[II)V

    return-void
.end method

.method public final noteJobsDeferred(IIJ)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object p0, v1, Lcom/android/server/am/BatteryStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v10, v1, Lcom/android/server/am/BatteryStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs noteWakingAlarmBatch(J[I)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(J[II)V

    return-void
.end method

.method public final noteWakingSoundTrigger(JI)V
    .locals 1

    const/4 v0, 0x3

    filled-new-array {p3}, [I

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$LocalService;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/BatteryStatsService;->noteCpuWakingActivity(J[II)V

    return-void
.end method
