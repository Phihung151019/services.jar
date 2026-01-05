.class public final Lcom/android/server/am/AppProfiler$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    iget p0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v0, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    if-eq p0, v0, :cond_0

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-wide p0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v0, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long p0, p0, v0

    if-eqz p0, :cond_3

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
