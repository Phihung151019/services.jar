.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(IJJLcom/android/server/am/BatteryStatsService;Z)V
    .locals 0

    const/4 p7, 0x6

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJJI)V
    .locals 0

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda21()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v2, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3e8

    mul-long/2addr v4, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda22()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v7, 0x10000

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJI)V

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move-wide v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiMulticastDisabledLocked(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda25()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-string/jumbo v9, "video"

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJIILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move-wide v3, v4

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2
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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda39()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplState:I

    if-eq v1, v6, :cond_1

    if-ltz v1, :cond_0

    iget-object v7, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v7, v1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_0
    iput v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplState:I

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiSupplStateTimer:[Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v6

    invoke-virtual {v1, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsHistory;->recordWifiSupplicantStateChangeEvent(JJI)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda4()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v1

    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/high16 v7, 0x10000

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJI)V

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->isRunningLocked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastWakelockTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_0
    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mWifiMulticastNesting:I

    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move-wide v3, v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteWifiMulticastEnabledLocked(J)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda42()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRssiChangedLocked(IJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda48()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOffLocked(IJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda49()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-string/jumbo v9, "flashlight"

    const/high16 v7, 0x8000000

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StartEvent(JJIILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v11

    move-wide v3, v4

    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1

    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v9, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :cond_1
    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda53()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneSignalStrengthBinRaw:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->updateAllPhoneStateLocked(IIIJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda54()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnNesting:I

    if-nez v1, :cond_1

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-string/jumbo v9, "flashlight"

    const/high16 v7, 0x8000000

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StopEvent(JJIILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mFlashlightOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_1
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move-wide v3, v4

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2
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

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda57()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStoppedLocked(IJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda59()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(IJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda74()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-string/jumbo v9, "video"

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordState2StartEvent(JJIILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_0
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoOnNesting:I

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v11

    move-wide v3, v4

    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1

    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v9, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :cond_1
    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda77()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-string/jumbo v9, "audio"

    const/high16 v7, 0x400000

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStartEvent(JJIILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_0
    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, v0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v11

    move-wide v3, v4

    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_1

    new-instance v9, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v10, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v12, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v13, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Ljava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;I)V

    iput-object v9, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :cond_1
    iget-object v0, v11, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda80()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiScanStartedLocked(IJJ)V

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
    .locals 11

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteCameraOnLocked(IJJ)V

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
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda80()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda77()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda74()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda59()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda57()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda54()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda53()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda4()V

    return-void

    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda49()V

    return-void

    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda48()V

    return-void

    :pswitch_a
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda42()V

    return-void

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda39()V

    return-void

    :pswitch_c
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda25()V

    return-void

    :pswitch_d
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda22()V

    return-void

    :pswitch_e
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda21()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object v7, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v7

    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteGpsSignalQualityLocked(IJJ)V

    monitor-exit v7

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_2
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnNesting:I

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const-string/jumbo v9, "audio"

    const/high16 v7, 0x400000

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/BatteryStatsHistory;->recordStateStopEvent(JJIILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mAudioOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsCollectorEnabled:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v2, p0

    move-wide v6, v5

    move-wide v4, v3

    move v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    move-wide v3, v4

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    :cond_2
    :goto_0
    monitor-exit v10

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_11
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$1:I

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$2:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda2;->f$3:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_3
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(IJJ)V

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
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
