.class public final synthetic Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    iget p0, p0, Lcom/android/server/job/PendingJobQueue$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    iget-object p1, p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue$AdjustedJobStatus;->job:Lcom/android/server/job/controllers/JobStatus;

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->overrideState:I

    if-eq p2, v0, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result p2

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isUserInitiated()Z

    move-result v0

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isRequestedExpeditedJob()Z

    move-result v0

    if-eq p2, v0, :cond_5

    if-eqz p2, :cond_4

    :goto_1
    const/4 p0, -0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-eq p2, v0, :cond_6

    invoke-static {v0, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_2

    :cond_6
    iget p2, p0, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    if-eq p2, v0, :cond_7

    invoke-static {v0, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_2

    :cond_7
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    iget-wide p0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :goto_2
    return p0

    :pswitch_0
    check-cast p1, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    check-cast p2, Lcom/android/server/job/PendingJobQueue$AppJobQueue;

    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextTimestamp()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_9

    cmp-long p0, v2, v4

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_3

    :cond_8
    const/4 p0, 0x1

    goto :goto_3

    :cond_9
    cmp-long p0, v2, v4

    if-nez p0, :cond_a

    const/4 p0, -0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/job/PendingJobQueue$AppJobQueue;->peekNextOverrideState()I

    move-result p1

    if-eq p0, p1, :cond_b

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    goto :goto_3

    :cond_b
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
