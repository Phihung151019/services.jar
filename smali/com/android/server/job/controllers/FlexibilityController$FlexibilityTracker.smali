.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mTrackedJobs:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    if-gt p1, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    move-result p2

    iget p3, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p3, :cond_1

    aget v4, v0, v2

    if-lt p2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    if-eq v3, p2, :cond_2

    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    :cond_2
    return-void
.end method

.method public final updateFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    iput v2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object v3

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I

    move-result p2

    const/4 p3, 0x0

    move v1, p3

    move v4, v1

    :goto_0
    if-ge v1, v2, :cond_1

    aget v5, v3, v1

    if-lt p2, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result p2

    if-ne v0, p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    return-void
.end method
