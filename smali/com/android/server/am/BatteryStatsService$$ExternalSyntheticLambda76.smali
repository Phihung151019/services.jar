.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:J

.field public final synthetic f$7:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IZIIIJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$2:Z

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$3:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$4:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$5:I

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$6:J

    iput-wide p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$7:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$1:I

    iget-boolean v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$2:Z

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$3:I

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$4:I

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$5:I

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$6:J

    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda76;->f$7:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/power/stats/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZIIIJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
