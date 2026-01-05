.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;JJI)V
    .locals 0

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda29()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v6, 0x10000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    iget-boolean v2, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "wifi-on"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda37()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v6, 0x10000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StartEvent(JJI)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOn:Z

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiPowerStatsCollector:Lcom/android/server/power/stats/WifiPowerStatsCollector;

    iget-boolean v2, v1, Lcom/android/server/power/stats/PowerStatsCollector;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "wifi-off"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda41()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetBluetoothScanLocked(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda51()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneOnLocked(JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda63()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOn:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v6, 0x800000

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOn:Z

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    const-string/jumbo v1, "phone-off"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->scheduleSyncExternalStatsLocked(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mMobileRadioPowerStatsCollector:Lcom/android/server/power/stats/MobileRadioPowerStatsCollector;

    invoke-virtual {v0}, Lcom/android/server/power/stats/PowerStatsCollector;->schedule()Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v6, 0x8000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda63()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda51()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda41()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda37()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda29()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_1
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    if-lez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v6, 0x400000

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v7

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_2
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    if-lez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJI)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :goto_2
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mUidStats:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v7

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-wide v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$1:J

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda0;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteResetCameraLocked(JJ)V

    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
