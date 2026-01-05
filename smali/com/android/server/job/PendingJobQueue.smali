.class public final Lcom/android/server/job/PendingJobQueue;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppJobQueuePool:Landroid/util/Pools$Pool;

.field public final mCurrentQueues:Landroid/util/SparseArray;

.field public mNeedToResetIterators:Z

.field public mOptimizeIteration:Z

.field public final mOrderedQueues:Ljava/util/PriorityQueue;

.field public mPullCount:I

.field public mSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    iput v0, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 11

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    sget-object v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    check-cast v4, Landroid/util/Pools$SimplePool;

    invoke-virtual {v4}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    :cond_0
    iget-wide v5, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iput-object p1, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    invoke-static {p1, v4, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1

    if-gez p1, :cond_1

    not-int p1, p1

    :cond_1
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, p1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge p1, v5, :cond_2

    iput p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_2
    if-lez p1, :cond_3

    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v5, v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v7, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    :cond_3
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-ge p1, v6, :cond_5

    :goto_0
    if-ge p1, v5, :cond_5

    iget-object v6, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v7, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v9, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_4

    goto :goto_1

    :cond_4
    iput-wide v7, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final addAll(Landroid/util/ArraySet;)V
    .locals 12

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    const v6, 0x7fffffff

    :goto_2
    if-ltz v5, :cond_5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    sget-object v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    check-cast v8, Landroid/util/Pools$SimplePool;

    invoke-virtual {v8}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-nez v8, :cond_2

    new-instance v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    :cond_2
    iget-wide v9, v7, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iput-wide v9, v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iput-object v7, v8, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget-object v7, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    sget-object v9, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    invoke-static {v7, v8, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v7

    if-gez v7, :cond_3

    not-int v7, v7

    :cond_3
    iget-object v9, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget v8, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    if-ge v7, v8, :cond_4

    iput v7, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    iget-object v4, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_3
    if-ge v5, v4, :cond_6

    iget-object v6, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object v7, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    add-int/lit8 v8, v5, -0x1

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v8, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    iget-wide v10, v7, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public final contains(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    check-cast p2, Landroid/util/Pools$SimplePool;

    invoke-virtual {p2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    invoke-direct {p2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;-><init>()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p2

    :cond_1
    return-object v0
.end method

.method public final next()Lcom/android/server/job/controllers/JobStatus;
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    iput v1, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4, v3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_4

    goto :goto_6

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    if-eqz v4, :cond_5

    sub-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    const/4 v4, 0x3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    iget-object v4, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    if-eqz v4, :cond_b

    iget v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v6, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget v5, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object v3, v3, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    :goto_4
    iget v5, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    const-wide/16 v6, -0x1

    if-ge v5, v0, :cond_9

    if-eqz v3, :cond_7

    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result v0

    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-ne v0, v2, :cond_9

    :cond_7
    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    return-object v3

    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v4}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_a
    iput v1, p0, Lcom/android/server/job/PendingJobQueue;->mPullCount:I

    :cond_b
    :goto_6
    return-object v3
.end method

.method public final remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 8

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/PendingJobQueue;->getAppJobQueue(IZ)Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->indexOf(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v4

    if-gez v4, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    sget-object v6, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    check-cast v6, Landroid/util/Pools$SimplePool;

    invoke-virtual {v6, v5}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    iget v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    sub-int/2addr v5, v6

    iput v5, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    :cond_2
    iget v4, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    iget-object v4, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue;->mCurrentQueues:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v1, v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mAppJobQueuePool:Landroid/util/Pools$Pool;

    check-cast p0, Landroid/util/Pools$SimplePool;

    invoke-virtual {p0, v0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return v6

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue;->mOrderedQueues:Ljava/util/PriorityQueue;

    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    :cond_4
    return v6
.end method

.method public final resetIterator()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    return-void
.end method

.method public setOptimizeIteration(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/PendingJobQueue;->mOptimizeIteration:Z

    return-void
.end method
