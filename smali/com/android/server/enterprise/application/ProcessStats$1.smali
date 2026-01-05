.class public final Lcom/android/server/enterprise/application/ProcessStats$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    check-cast p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    iget p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr p0, v0

    iget v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    add-int/2addr v0, v1

    if-eq p0, v0, :cond_0

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    iget-boolean v0, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean p0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    iget-boolean p1, p2, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eq p0, p1, :cond_3

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
