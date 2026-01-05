.class public final Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public earliestTimeElapsed:J


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/util/LongArrayQueue;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    :cond_0
    return-void
.end method
