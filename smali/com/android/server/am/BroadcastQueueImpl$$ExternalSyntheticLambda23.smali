.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;->f$0:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    iget-wide v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;->f$0:J

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPending:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/SomeArgs;

    iget-object v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingUrgent:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v3, p1, Lcom/android/server/am/BroadcastProcessQueue;->mPendingOffload:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v4, p1, Lcom/android/server/am/BroadcastProcessQueue;->mActive:Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-wide v7, v4, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v4, v7, v0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v5

    :goto_1
    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    iget-wide v7, p0, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long p0, v7, v0

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v6

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v5

    :goto_3
    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-wide v7, v2, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v2, v7, v0

    if-lez v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v6

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v5

    :goto_5
    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/BroadcastRecord;

    iget-wide v7, v3, Lcom/android/server/am/BroadcastRecord;->enqueueTime:J

    cmp-long v0, v7, v0

    if-lez v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v6

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v5

    :goto_7
    if-eqz v4, :cond_8

    if-eqz p0, :cond_8

    if-eqz v2, :cond_8

    if-nez v0, :cond_9

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/BroadcastProcessQueue;->isDeferredUntilActive()Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_9
    return v5

    :cond_a
    return v6
.end method
