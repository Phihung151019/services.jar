.class public final Lcom/android/server/job/JobSchedulerService$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget v0, p2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result p1

    iget-object p2, p2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    invoke-virtual {p2}, Landroid/app/job/JobInfo;->getId()I

    move-result p2

    if-eq p0, v0, :cond_0

    if-ge p0, v0, :cond_2

    goto :goto_0

    :cond_0
    if-ge p1, p2, :cond_1

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_1
    if-le p1, p2, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
