.class public final Lcom/android/server/job/controllers/ConnectivityController$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public static prioritizeExistenceOver(III)I
    .locals 0

    if-le p1, p0, :cond_0

    if-gt p2, p0, :cond_1

    :cond_0
    if-gt p1, p0, :cond_2

    if-gt p2, p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    if-le p1, p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    check-cast p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;

    iget-object p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    iget-object v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->runningJobs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numReadyWithConnectivity:I

    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numRequestedNetworkAvailable:I

    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_2

    return p0

    :cond_2
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v2, 0x27

    invoke-static {v2, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_3

    return p0

    :cond_3
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numUIJs:I

    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_4

    return p0

    :cond_4
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->numEJs:I

    invoke-static {v1, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_5

    return p0

    :cond_5
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    const/16 v2, 0x22

    invoke-static {v2, p0, v0}, Lcom/android/server/job/controllers/ConnectivityController$1;->prioritizeExistenceOver(III)I

    move-result p0

    if-eqz p0, :cond_6

    return p0

    :cond_6
    iget-wide v2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    iget-wide v4, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestUIJEnqueueTime:J

    cmp-long p0, v2, v4

    if-gez p0, :cond_7

    goto :goto_0

    :cond_7
    if-lez p0, :cond_8

    goto :goto_1

    :cond_8
    iget-wide v2, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    iget-wide v4, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEJEnqueueTime:J

    cmp-long p0, v2, v4

    if-gez p0, :cond_9

    goto :goto_0

    :cond_9
    if-lez p0, :cond_a

    goto :goto_1

    :cond_a
    iget p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    iget v0, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->baseBias:I

    if-eq p0, v0, :cond_b

    sub-int/2addr v0, p0

    return v0

    :cond_b
    iget-wide p0, p1, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    iget-wide v2, p2, Lcom/android/server/job/controllers/ConnectivityController$UidStats;->earliestEnqueueTime:J

    cmp-long p0, p0, v2

    if-gez p0, :cond_c

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_c
    if-lez p0, :cond_d

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_d
    return v1
.end method
