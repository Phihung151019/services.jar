.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJI)V
    .locals 0

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;J)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$1:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$2:J

    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiState:I

    if-eq v0, v1, :cond_2

    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v5, v0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    iput v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiState:I

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    iget-boolean v1, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "wifi-state"

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    :cond_2
    :goto_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$2:J

    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    :try_start_1
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->onCleanupUserLocked(IJ)V

    monitor-exit v4

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda40;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mCpuWakeupStats:Lcom/android/server/power/stats/wakeups/CpuWakeupStats;

    monitor-enter p0

    :try_start_2
    iget-object v4, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->mUidProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v4

    :try_start_3
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl;->removeUidStatsLocked(IJ)V

    monitor-exit v4

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
