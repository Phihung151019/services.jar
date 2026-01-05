.class public abstract Lcom/android/server/location/eventlog/LocalEventLog;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final IS_FILLER_OFFSET:I

.field static final MAX_TIME_DELTA:I

.field public static final TIME_DELTA_OFFSET:I


# instance fields
.field public final mEntries:[I

.field public mLastLogTime:J

.field public mLogEndIndex:I

.field public final mLogEvents:[Ljava/lang/Object;

.field public mLogSize:I

.field public mModificationCount:J

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    move v2, v0

    :goto_0
    if-eqz v1, :cond_0

    and-int/lit8 v3, v1, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sput v2, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    return-void
.end method

.method public static varargs iterate(Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    new-instance v5, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v5, v4}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;)V

    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    move v3, v2

    :cond_2
    :goto_2
    if-ge v3, p1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_3

    iget-wide v5, v4, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    iget-wide v7, v1, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    :cond_3
    move-object v1, v4

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-wide v3, v1, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    iget-object p1, v1, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentLogEvent:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    iget-object v6, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    if-eqz v6, :cond_6

    instance-of v7, p1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    if-eqz v7, :cond_7

    move-object v7, p1

    check-cast v7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    iget-object v7, v7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$2:J

    add-long/2addr v3, v7

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized addLog(JLjava/lang/Object;)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-wide/16 v8, 0x0

    if-nez v4, :cond_3

    iget-wide v10, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    sub-long v10, v2, v10

    cmp-long v4, v10, v8

    const/4 v12, 0x0

    if-ltz v4, :cond_2

    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    int-to-long v13, v4

    div-long v13, v10, v13

    iget-object v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v4, v4

    sub-int/2addr v4, v0

    const-wide/16 v15, 0x1

    int-to-long v6, v4

    cmp-long v4, v13, v6

    if-ltz v4, :cond_1

    goto :goto_2

    :cond_1
    move-wide v8, v10

    :goto_1
    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    int-to-long v6, v4

    cmp-long v10, v8, v6

    if-ltz v10, :cond_4

    invoke-virtual {v1, v12, v4, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Ljava/lang/Object;IZ)V

    sub-long/2addr v8, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    const-wide/16 v15, 0x1

    :goto_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    invoke-static {v4, v12}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput v5, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iput v5, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-wide v6, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    add-long/2addr v6, v15

    iput-wide v6, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide v6, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_3
    const-wide/16 v15, 0x1

    :cond_4
    :goto_3
    iget v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    if-eqz v0, :cond_6

    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    iget-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    add-long/2addr v2, v15

    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    :cond_6
    long-to-int v0, v8

    move-object/from16 v2, p3

    invoke-virtual {v1, v2, v0, v5}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Ljava/lang/Object;IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public final addLogEventInternal(Ljava/lang/Object;IZ)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    array-length v4, v3

    sget v5, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    const v6, 0x7fffffff

    if-ne v2, v4, :cond_3

    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iget v4, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    sub-int/2addr v4, v2

    array-length v2, v3

    rem-int/2addr v4, v2

    array-length v2, v3

    add-int/2addr v4, v2

    array-length v2, v3

    rem-int/2addr v4, v2

    aget v2, v3, v4

    and-int/2addr v2, v6

    ushr-int/2addr v2, v5

    int-to-long v9, v2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    goto :goto_3

    :cond_3
    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    :goto_3
    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    if-ltz p2, :cond_4

    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    if-gt p2, v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    shl-int/2addr p3, v0

    const/high16 v0, -0x80000000

    and-int/2addr p3, v0

    shl-int v0, p2, v5

    and-int/2addr v0, v6

    or-int/2addr p3, v0

    aput p3, v3, v2

    iget p3, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    aput-object p1, v0, p3

    const/4 p1, -0x1

    if-ne p3, p1, :cond_5

    iget p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    sub-int/2addr p3, p1

    array-length p1, v3

    rem-int/2addr p3, p1

    array-length p1, v3

    add-int/2addr p3, p1

    array-length p1, v3

    rem-int/2addr p3, p1

    goto :goto_4

    :cond_5
    if-ltz p3, :cond_6

    add-int/2addr p3, v1

    array-length p1, v3

    rem-int/2addr p3, p1

    array-length p1, v3

    add-int/2addr p3, p1

    array-length p1, v3

    rem-int/2addr p3, p1

    :goto_4
    iput p3, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
