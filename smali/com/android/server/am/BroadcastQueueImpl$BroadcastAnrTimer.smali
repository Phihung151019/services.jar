.class public final Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final getPid(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getUid(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
