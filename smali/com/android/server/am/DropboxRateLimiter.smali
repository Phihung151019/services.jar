.class public final Lcom/android/server/am/DropboxRateLimiter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClock:Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

.field public final mErrorClusterRecords:Landroid/util/ArrayMap;

.field public mLastMapCleanUp:J

.field public mRateLimitAllowedEntries:I

.field public mRateLimitBufferDuration:J

.field public mRateLimitBufferExpiryFactor:J

.field public mStrictRateLimitBufferDuration:J

.field public mStrictRatelimitAllowedEntries:I


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    iput-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    const-wide/16 v0, 0x3

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    const-wide/32 v0, 0x124f80

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    return-void
.end method


# virtual methods
.method public final init()V
    .locals 4

    const-string v0, "DropboxRateLimiter__rate_limit_buffer_duration"

    const-wide/32 v1, 0x927c0

    const-string/jumbo v3, "dropbox"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    const-string v0, "DropboxRateLimiter__rate_limit_buffer_expiry_factor"

    const-wide/16 v1, 0x3

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    const-string v0, "DropboxRateLimiter__rate_limit_allowed_entries"

    const/4 v1, 0x6

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    const-string v0, "DropboxRateLimiter__strict_rate_limit_allowed_entries"

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    const-string v0, "DropboxRateLimiter__strict_rate_limit_buffer_duration"

    const-wide/32 v1, 0x124f80

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    return-void
.end method

.method public final maybeRemoveExpiredRecords(J)V
    .locals 8

    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    iget-wide v4, p0, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    iget-object v3, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    iget-wide v4, v3, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferExpiryFactor:J

    iget v6, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_2

    iget-wide v6, v3, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    goto :goto_2

    :cond_2
    iget-wide v6, v3, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    :goto_2
    mul-long/2addr v6, v4

    iget-wide v2, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    sub-long v2, p1, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    iget v2, v2, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    int-to-long v2, v2

    const-string/jumbo v4, "stability_errors.value_dropbox_buffer_expired_count"

    invoke-static {v4, v2, v3}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    return-void
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mLastMapCleanUp:J

    const-string p0, "DropboxRateLimiter"

    const-string/jumbo v0, "Rate limiter reset."

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final shouldRateLimit(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/DropboxRateLimiter;->mClock:Lcom/android/server/am/DropboxRateLimiter$DefaultClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter;->maybeRemoveExpiredRecords(J)V

    iget-object v3, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;-><init>(Lcom/android/server/am/DropboxRateLimiter;J)V

    iget-object p0, p0, Lcom/android/server/am/DropboxRateLimiter;->mErrorClusterRecords:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p0, v4, v4}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :cond_0
    iget-wide p0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    sub-long p0, v0, p0

    iget p2, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt p2, v5, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    iget-object v8, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    if-eqz v7, :cond_2

    iget-wide v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    goto :goto_1

    :cond_2
    iget-wide v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    :goto_1
    cmp-long v7, p0, v9

    if-lez v7, :cond_a

    iget v7, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    if-lt p2, v5, :cond_3

    move v9, v6

    goto :goto_2

    :cond_3
    move v9, v4

    :goto_2
    if-eqz v9, :cond_4

    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    goto :goto_3

    :cond_4
    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    :goto_3
    if-ge v7, v9, :cond_5

    move v7, v4

    goto :goto_5

    :cond_5
    if-lt p2, v5, :cond_6

    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    goto :goto_4

    :cond_6
    iget v9, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    :goto_4
    sub-int/2addr v7, v9

    :goto_5
    iput-wide v0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    iput v6, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    if-lez v7, :cond_9

    if-lt p2, v5, :cond_7

    move v0, v6

    goto :goto_6

    :cond_7
    move v0, v4

    :goto_6
    if-eqz v0, :cond_8

    iget-wide v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRateLimitBufferDuration:J

    goto :goto_7

    :cond_8
    iget-wide v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitBufferDuration:J

    :goto_7
    const-wide/16 v8, 0x2

    mul-long/2addr v0, v8

    cmp-long p0, p0, v0

    if-gez p0, :cond_9

    add-int/2addr p2, v6

    iput p2, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    goto :goto_8

    :cond_9
    iput v4, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mSuccessiveRateLimitCycles:I

    :goto_8
    new-instance p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p0, v7, v4}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    monitor-exit v2

    return-object p0

    :cond_a
    iget p0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    add-int/2addr p0, v6

    iput p0, v3, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    if-lt p2, v5, :cond_b

    move p1, v6

    goto :goto_9

    :cond_b
    move p1, v4

    :goto_9
    if-eqz p1, :cond_c

    iget p1, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    goto :goto_a

    :cond_c
    iget p1, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    :goto_a
    if-le p0, p1, :cond_11

    new-instance p1, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    if-lt p2, v5, :cond_d

    move v0, v6

    goto :goto_b

    :cond_d
    move v0, v4

    :goto_b
    if-eqz v0, :cond_e

    iget v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    goto :goto_c

    :cond_e
    iget v0, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    :goto_c
    if-ge p0, v0, :cond_f

    goto :goto_e

    :cond_f
    if-lt p2, v5, :cond_10

    iget p2, v8, Lcom/android/server/am/DropboxRateLimiter;->mStrictRatelimitAllowedEntries:I

    goto :goto_d

    :cond_10
    iget p2, v8, Lcom/android/server/am/DropboxRateLimiter;->mRateLimitAllowedEntries:I

    :goto_d
    sub-int v4, p0, p2

    :goto_e
    invoke-direct {p1, v4, v6}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    monitor-exit v2

    return-object p1

    :cond_11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;

    invoke-direct {p0, v4, v4}, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;-><init>(IZ)V

    return-object p0

    :goto_f
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
