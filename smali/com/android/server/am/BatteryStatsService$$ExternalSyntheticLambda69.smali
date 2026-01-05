.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;IJJI)V
    .locals 0

    iput p9, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:I

    iput-wide p5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:J

    iput-wide p7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:J

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    :goto_0
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:J

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    :try_start_1
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteDeviceIdleModeLocked(IILjava/lang/String;JJ)V

    monitor-exit v9

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$2:I

    iget v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$3:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$4:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda69;->f$5:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->noteJobFinishLocked(IILjava/lang/String;JJ)V

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
