.class public final Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public mNowElapsed:J


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$TimedEvent;

    invoke-interface {p1}, Lcom/android/server/job/controllers/QuotaController$TimedEvent;->getEndTimeElapsed()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/android/server/job/controllers/QuotaController$TimedEventTooOldPredicate;->mNowElapsed:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
