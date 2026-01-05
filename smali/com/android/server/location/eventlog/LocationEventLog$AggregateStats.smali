.class public final Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActiveRequestCount:I

.field public mActiveTimeLastUpdateRealtimeMs:J

.field public mActiveTimeTotalMs:J

.field public mAddedRequestCount:I

.field public mAddedTimeLastUpdateRealtimeMs:J

.field public mAddedTimeTotalMs:J

.field public mDeliveredLocationCount:I

.field public mFastestIntervalMs:J

.field public mForegroundRequestCount:I

.field public mForegroundTimeLastUpdateRealtimeMs:J

.field public mForegroundTimeTotalMs:J

.field public mSlowestIntervalMs:J


# direct methods
.method public static intervalToString(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "passive"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "min/max interval = "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mFastestIntervalMs:J

    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->intervalToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mSlowestIntervalMs:J

    invoke-static {v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->intervalToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", total/active/foreground duration = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locations = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mDeliveredLocationCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized updateTotals()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedRequestCount:I

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeTotalMs:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mAddedTimeLastUpdateRealtimeMs:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveRequestCount:I

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeTotalMs:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mActiveTimeLastUpdateRealtimeMs:J

    :cond_1
    iget v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J

    sub-long v4, v0, v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeTotalMs:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundTimeLastUpdateRealtimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
