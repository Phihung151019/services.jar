.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/WorkSource;

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;Landroid/os/WorkSource;IJJI)V
    .locals 0

    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$2:Landroid/os/WorkSource;

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$3:I

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$2:Landroid/os/WorkSource;

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$3:I

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$4:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$5:J

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const/16 v2, 0x400d

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartOrFinishLocked(ILjava/lang/String;Landroid/os/WorkSource;IJJ)V

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$1:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$2:Landroid/os/WorkSource;

    iget v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$3:I

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$4:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda27;->f$5:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    const v2, 0x800d

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteAlarmStartOrFinishLocked(ILjava/lang/String;Landroid/os/WorkSource;IJJ)V

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
