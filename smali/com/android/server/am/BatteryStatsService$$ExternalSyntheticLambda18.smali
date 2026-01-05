.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(IIIJJJLcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->$r8$classId:I

    iput-object p10, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:J

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:I

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;IIJJJ)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:I

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    iput-wide p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$5:J

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobsDeferredLocked(IIJJJ)V

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
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:J

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:I

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$5:J

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_1
    iget p0, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    if-ne p0, v2, :cond_0

    monitor-exit v10

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iput v2, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromRadio:I

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IIJJJ)V

    monitor-exit v10

    :goto_0
    return-void

    :goto_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$1:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$2:J

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$3:I

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$4:J

    iget-wide v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda18;->f$5:J

    const-string/jumbo p0, "wifi-data: "

    iget-object v10, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v10

    :try_start_2
    iget v1, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    if-ne v1, v2, :cond_1

    monitor-exit v10

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_1
    iput v2, v0, Lcom/android/server/am/BatteryStatsService;->mLastPowerStateFromWifi:I

    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-boolean v1, v1, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    const/4 v11, 0x2

    if-eq v2, v1, :cond_3

    if-ne v2, v11, :cond_2

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "inactive"

    goto :goto_3

    :cond_3
    :goto_2
    const-string/jumbo v1, "active"

    :goto_3
    iget-object v12, v0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/power/stats/BatteryExternalStatsWorker;

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v12, v11, p0}, Lcom/android/server/power/stats/BatteryExternalStatsWorker;->scheduleSync(ILjava/lang/String;)V

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteWifiRadioPowerState(IIJJJ)V

    monitor-exit v10

    :goto_4
    return-void

    :goto_5
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
