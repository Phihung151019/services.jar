.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/am/ServiceRecord;

    check-cast p2, Lcom/android/server/am/ServiceRecord;

    iget-wide p0, p1, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    iget-wide v0, p2, Lcom/android/server/am/ServiceRecord;->nextRestartTime:J

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
