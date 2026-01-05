.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(IIIJJLcom/android/server/am/BatteryStatsService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$1:I

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$2:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$3:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$4:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$1:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$2:I

    iget v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$3:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$4:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda66;->f$5:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteScreenBrightnessLocked(IIIJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
