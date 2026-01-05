.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$1:I

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$2:J

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$3:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$1:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$2:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$3:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda98;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v4, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v4, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v5

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    iget-object v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v5, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v5, v4}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    iget-boolean v4, v4, Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;->mRunning:Z

    iput-boolean v4, v1, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    iput-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    :cond_0
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v6, v4

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->recomputeLastDuration(JZ)V

    iput-wide v6, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedTimeUs:J

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mLastAddedDurationUs:J

    iget-boolean v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$BatchTimer;->mInDischarge:Z

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mTotalTimeUs:J

    iget v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->mCount:I

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
