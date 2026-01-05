.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-boolean p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;->f$1:Z

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda110;->f$2:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v4, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractive:Z

    if-eq v4, v1, :cond_1

    iput-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractive:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mInteractiveTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

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
