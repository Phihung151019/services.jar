.class public final Lcom/android/server/am/ProcessList$3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v2, v1, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iget v0, v1, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_1

    return p0

    :cond_1
    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    if-eqz p0, :cond_2

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
