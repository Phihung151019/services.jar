.class public final Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final data:Ljava/util/ArrayList;

.field public mCount:J

.field public final mLock:Ljava/lang/Object;

.field public mTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    iput-wide v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addStartTime(J)V
    .locals 5

    new-instance v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    iget-object p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0xa4cb800

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(J)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const-wide/32 v1, 0x5265c00

    sub-long v3, p1, v1

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    iget-object v7, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v7

    cmp-long v8, v3, v5

    const/4 v9, 0x0

    if-gtz v8, :cond_2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    move-wide v1, v5

    :goto_0
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v9, v3, :cond_1

    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v1, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v3, v3, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    goto/16 :goto_6

    :cond_2
    move v10, v9

    move-wide v8, v5

    :goto_2
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-wide/16 v12, 0x1

    if-ge v10, v11, :cond_6

    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v11, v14, v5

    if-eqz v11, :cond_5

    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v14, v3

    cmp-long v11, v14, v5

    if-lez v11, :cond_5

    iget-wide v14, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    add-long/2addr v14, v12

    iput-wide v14, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    cmp-long v11, v8, v5

    if-nez v11, :cond_4

    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v11, v11, v3

    if-gez v11, :cond_3

    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v11, v3

    :goto_3
    add-long/2addr v8, v11

    goto :goto_4

    :cond_3
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-object v13, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v13, v13, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long/2addr v11, v13

    goto :goto_3

    :cond_4
    iget-object v11, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v11, v11, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v8, v11

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_6
    iget-object v10, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_8

    iget-object v10, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v10, v10, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    cmp-long v5, v10, v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v1, v1, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long v1, p1, v1

    add-long/2addr v1, v8

    :goto_5
    iget-wide v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    add-long/2addr v3, v12

    iput-wide v3, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    goto :goto_6

    :cond_8
    move-wide v1, v8

    :cond_9
    :goto_6
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0x36ee80

    div-long v5, v1, v3

    mul-long/2addr v3, v5

    sub-long v3, v1, v3

    const-wide/32 v7, 0xea60

    div-long/2addr v3, v7

    div-long/2addr v1, v7

    iput-wide v1, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "h "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "m("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mCount:J

    const-string/jumbo v0, "X)"

    invoke-static {v1, v2, v3, v0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final removeLastData(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v5, v5, v0

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v5, v5, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v5, v5, p1

    if-lez v5, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    move p1, v3

    :goto_2
    if-ge p1, v4, :cond_3

    iget-object p2, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setEndTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;

    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    iget-wide v1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/alarm/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
