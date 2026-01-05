.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Z

.field public final synthetic f$7:J

.field public final synthetic f$8:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$5:I

    iput-boolean p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$6:Z

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$7:J

    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$8:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$1:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$2:I

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$3:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$5:I

    iget-boolean v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$6:Z

    iget-wide v9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$7:J

    iget-wide v11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda1;->f$8:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
