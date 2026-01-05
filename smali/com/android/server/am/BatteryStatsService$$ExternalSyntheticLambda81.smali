.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:I

.field public final synthetic f$12:I

.field public final synthetic f$13:I

.field public final synthetic f$14:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V
    .locals 1

    move/from16 v0, p17

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$1:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$2:I

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$3:I

    iput p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$4:I

    iput p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$5:I

    iput p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$6:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$7:I

    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$8:I

    iput-wide p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$9:J

    iput p12, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$10:I

    iput p13, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$11:I

    iput p14, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$12:I

    move/from16 p1, p15

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$13:I

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$14:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$1:I

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$2:I

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$3:I

    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$4:I

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$5:I

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$6:I

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$7:I

    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$8:I

    iget-wide v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$9:J

    iget v13, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$10:I

    iget v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$11:I

    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$12:I

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$13:I

    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$14:Z

    move/from16 v16, v2

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    move/from16 v17, v0

    :try_start_1
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

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

    :pswitch_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$1:I

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$2:I

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$3:I

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$4:I

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$5:I

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$6:I

    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$7:I

    iget v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$8:I

    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$9:J

    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$10:I

    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$11:I

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$12:I

    iget v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$13:I

    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$14:Z

    move/from16 v16, v1

    iget-object v1, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v1

    :try_start_2
    sget v17, Lcom/android/server/power/stats/BatteryStatsImpl;->MAX_WAKELOCKS_PER_UID:I

    move/from16 v19, v0

    if-nez v6, :cond_0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_0

    :goto_1
    move/from16 v17, v14

    move-wide v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    move/from16 v18, v2

    iget-boolean v2, v4, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-ne v2, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move/from16 v26, v18

    move/from16 v18, v17

    move/from16 v17, v26

    invoke-virtual/range {v4 .. v25}, Lcom/android/server/power/stats/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJIIIIIJJJ)V

    monitor-exit v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_1
    move/from16 v26, v18

    move/from16 v18, v17

    move/from16 v17, v26

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, v3, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    const-string/jumbo v1, "battery-state"

    const/16 v2, 0x7f

    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)V

    iget-object v1, v3, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move-wide v12, v13

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    const/16 v19, 0x2

    invoke-direct/range {v2 .. v19}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V

    monitor-enter v1

    :try_start_3
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v1

    :goto_3
    return-void

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :pswitch_1
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v4, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$1:I

    iget v5, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$2:I

    iget v6, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$3:I

    iget v7, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$4:I

    iget v8, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$5:I

    iget v9, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$6:I

    iget v10, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$7:I

    iget v11, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$8:I

    iget-wide v12, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$9:J

    iget v14, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$10:I

    iget v15, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$11:I

    iget v1, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$12:I

    iget v2, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$13:I

    iget-boolean v0, v0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;->f$14:Z

    move/from16 v16, v1

    iget-object v1, v3, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    move/from16 v17, v2

    new-instance v2, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;

    const/16 v19, 0x1

    move/from16 v18, v0

    invoke-direct/range {v2 .. v19}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda81;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJIIIIZI)V

    monitor-enter v1

    :try_start_6
    iget-object v0, v1, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    monitor-exit v1

    return-void

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
