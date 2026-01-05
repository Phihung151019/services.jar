.class public interface abstract Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public abstract detach()V
.end method

.method public abstract onTimeStarted(JJ)V
.end method

.method public abstract onTimeStopped(JJJ)V
.end method

.method public reset()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    check-cast p0, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$LongSamplingCounter;->reset(JZ)Z

    return-void
.end method

.method public abstract reset(JZ)Z
.end method
