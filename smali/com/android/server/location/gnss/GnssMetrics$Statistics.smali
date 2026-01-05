.class public final Lcom/android/server/location/gnss/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCount:I

.field public mLongSum:J

.field public mSum:D

.field public mSumSquare:D


# virtual methods
.method public final declared-synchronized addItem(D)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    mul-double v2, p1, p1

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J

    long-to-double v0, v0

    add-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getLongSum()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getMean()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-double v2, v2

    div-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getStandardDeviation()D
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iget v2, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    int-to-double v3, v2

    div-double/2addr v0, v3

    mul-double/2addr v0, v0

    iget-wide v3, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    int-to-double v5, v2

    div-double/2addr v3, v5

    cmpl-double v2, v3, v0

    if-lez v2, :cond_0

    sub-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSum:D

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mSumSquare:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/gnss/GnssMetrics$Statistics;->mLongSum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
