.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;ILjava/lang/String;JJI)V
    .locals 0

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iput-object p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;Ljava/lang/String;IJJI)V
    .locals 0

    iput p8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iput-wide p4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iput-wide p6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda122()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/BatteryStatsImpl;->reportExcessiveCpuLocked(IJJLjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda13()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->encodingPersonalInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v10

    move-wide v7, v6

    move-wide v5, v4

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move v10, v4

    move-wide v4, v5

    move-wide v6, v7

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->startObject(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    iget-object v0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v1, 0x8004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v10, v2}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const v8, 0x8004

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda19()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->encodingPersonalInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v10

    move-wide v7, v6

    move-wide v5, v4

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move v10, v4

    move-wide v4, v5

    move-wide v6, v7

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->stopObject(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->stopRunningLocked(J)V

    :cond_0
    iget-object v0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v1, 0x4004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v10, v2}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/16 v8, 0x4004

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda33()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v6, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->encodingPersonalInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v10

    move-wide v7, v6

    move-wide v5, v4

    move v4, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    move v10, v4

    move-wide v4, v5

    move-wide v6, v7

    iget-object v0, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;

    invoke-virtual {v0, v4, v5, v9}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->startObject(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;->startRunningLocked(J)V

    iget-object v0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v1, 0x8006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v10, v2}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const v8, 0x8006

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda55()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v8, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v8, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v9

    iget-boolean v0, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-eqz v0, :cond_0

    move-wide v10, v2

    move-wide v12, v4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mStarts:I

    :cond_0
    iget-object v0, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const v1, 0x8001

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v7, v9, v6}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v8, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const v6, 0x8001

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda61()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_0
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/16 v6, 0x9

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    iget v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNumConnectivityChange:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mNumConnectivityChange:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    :try_start_0
    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    new-instance v6, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    iget-object v10, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    invoke-direct {v6, v10}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mScreenWakeStats:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Counter;->addAtomic(I)V

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/16 v6, 0x12

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

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
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda61()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda55()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda33()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda19()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda13()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->run$com$android$server$am$BatteryStatsService$$ExternalSyntheticLambda122()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    :try_start_1
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    iget-boolean p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-eqz p0, :cond_1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object p0

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumAnrs:I

    :cond_1
    monitor-exit v9

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v5, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object v9, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter v9

    :try_start_2
    iget-object v3, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v3, v2}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v4

    iget-boolean p0, v3, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBattery:Z

    if-eqz p0, :cond_2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/BatteryStatsImpl;->getUidStatsLocked(IJJ)Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;

    move-result-object p0

    iget v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Proc;->mNumCrashes:I

    :cond_2
    monitor-exit v9

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v7, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$2:I

    iget-wide v2, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$3:J

    iget-wide v4, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda8;->f$4:J

    iget-object p0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    monitor-enter p0

    :try_start_3
    iget-object v0, v0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/BatteryStatsImpl;->mapUid(I)I

    move-result v8

    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mActiveEvents:Landroid/os/BatteryStats$HistoryEventTracker;

    const/16 v6, 0x4001

    const/4 v9, 0x0

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/os/BatteryStats$HistoryEventTracker;->updateState(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mRecordAllHistory:Z

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHistory:Lcom/android/internal/os/BatteryStatsHistory;

    const/16 v6, 0x4001

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsHistory;->recordEvent(JJILjava/lang/String;I)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
