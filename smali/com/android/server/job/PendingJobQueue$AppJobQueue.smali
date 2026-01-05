.class public final Lcom/android/server/job/PendingJobQueue$AppJobQueue;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

.field public static final sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;


# instance fields
.field public mCurIndex:I

.field public final mJobs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->sJobComparator:Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mAdjustedJobStatusPool:Landroid/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    return-void
.end method


# virtual methods
.method public final indexOf(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object v2, v2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final peekNextOverrideState()I
    .locals 2

    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-object p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget p0, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    return p0
.end method

.method public final peekNextTimestamp()J
    .locals 2

    iget v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    iget-object v1, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mJobs:Ljava/util/List;

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->mCurIndex:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    iget-wide v0, p0, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->adjustedEnqueueTime:J

    return-wide v0
.end method
