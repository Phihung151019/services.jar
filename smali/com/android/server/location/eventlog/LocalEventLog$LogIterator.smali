.class public final Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCount:I

.field public mCurrentLogEvent:Ljava/lang/Object;

.field public mCurrentTime:J

.field public mIndex:I

.field public mLogTime:J

.field public final mModificationCount:J

.field public final synthetic this$0:Lcom/android/server/location/eventlog/LocalEventLog;


# direct methods
.method public constructor <init>(Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    monitor-enter p1

    :try_start_0
    iget-wide v0, p1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mModificationCount:J

    iget-wide v0, p1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mModificationCount:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    iget p0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget v1, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-ge p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final increment()V
    .locals 9

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    const v2, 0x7fffffff

    const/4 v3, -0x1

    iget-object v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    if-ne v0, v3, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    aget v0, v4, v0

    and-int/2addr v0, v2

    sget v5, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    ushr-int/2addr v0, v5

    int-to-long v5, v0

    :goto_0
    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    if-ne v0, v3, :cond_1

    iget v0, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget v7, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    sub-int/2addr v0, v7

    array-length v7, v4

    rem-int/2addr v0, v7

    array-length v7, v4

    add-int/2addr v0, v7

    array-length v7, v4

    rem-int/2addr v0, v7

    goto :goto_1

    :cond_1
    if-ltz v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    array-length v7, v4

    rem-int/2addr v0, v7

    array-length v7, v4

    add-int/2addr v0, v7

    array-length v7, v4

    rem-int/2addr v0, v7

    :goto_1
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    iget v7, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    iget v8, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-ge v7, v8, :cond_2

    aget v5, v4, v0

    and-int/2addr v5, v2

    sget v6, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    ushr-int/2addr v5, v6

    int-to-long v5, v5

    :cond_2
    if-ge v7, v8, :cond_3

    aget v0, v4, v0

    const/high16 v7, -0x80000000

    and-int/2addr v0, v7

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final next()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    iget-object v4, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    iget v5, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    aget v4, v4, v5

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    sget v6, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    ushr-int/2addr v4, v6

    int-to-long v6, v4

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    iget-object v1, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentLogEvent:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
