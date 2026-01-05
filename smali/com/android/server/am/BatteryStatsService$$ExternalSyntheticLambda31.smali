.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Landroid/os/WorkSource;

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$12:J

.field public final synthetic f$13:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/os/WorkSource;

.field public final synthetic f$7:I

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$1:Landroid/os/WorkSource;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$2:I

    iput-object p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$5:I

    iput-object p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$6:Landroid/os/WorkSource;

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$7:I

    iput-object p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$9:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$10:I

    iput-boolean p12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$11:Z

    iput-wide p13, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$12:J

    move-wide p1, p15

    iput-wide p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$13:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$1:Landroid/os/WorkSource;

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$2:I

    iget-object v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$3:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$4:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$5:I

    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$6:Landroid/os/WorkSource;

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$7:I

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$8:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$9:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$10:I

    iget-boolean v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$11:Z

    iget-wide v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$12:J

    move-object/from16 v16, v3

    iget-wide v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda31;->f$13:J

    move-wide/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v2

    move-object/from16 v3, v16

    move-wide/from16 v16, v18

    move-object v2, v0

    :try_start_1
    invoke-virtual/range {v2 .. v17}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZJJ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
