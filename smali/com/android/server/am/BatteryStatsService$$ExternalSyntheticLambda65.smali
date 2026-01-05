.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$2:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$3:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$4:J

    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda65;->f$5:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v3, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    iget-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mForegroundTimeMs:J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
