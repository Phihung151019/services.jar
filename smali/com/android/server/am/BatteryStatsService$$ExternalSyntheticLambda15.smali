.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(IJJLcom/android/server/am/BatteryStatsService;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$1:Z

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$2:I

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$3:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-boolean v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$1:Z

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$2:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$3:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda15;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteActivityResumedLocked(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->noteActivityPausedLocked(J)V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
