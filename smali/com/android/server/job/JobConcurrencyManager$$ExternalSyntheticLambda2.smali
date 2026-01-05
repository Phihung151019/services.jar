.class public final synthetic Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    check-cast p2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    sget-boolean p0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    iget-object v0, p2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-nez p1, :cond_1

    if-nez v0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-ne p1, v1, :cond_3

    iget p1, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq p1, v1, :cond_5

    :goto_1
    const/4 p0, -0x1

    return p0

    :cond_3
    iget p1, v0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-ne p1, v1, :cond_5

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    iget-wide p1, p2, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method
