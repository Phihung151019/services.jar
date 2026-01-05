.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/WorkSource;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:J

.field public final synthetic f$6:J


# direct methods
.method public synthetic constructor <init>(IJJLandroid/os/WorkSource;Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$1:Ljava/lang/String;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$2:I

    iput-object p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$3:Landroid/os/WorkSource;

    iput-object p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$4:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$5:J

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$6:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$1:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$2:I

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$3:Landroid/os/WorkSource;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$4:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$5:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda87;->f$6:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;JJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
