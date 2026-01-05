.class public final Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mReachables:Ljava/util/ArrayList;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/server/am/OomAdjusterModernImpl$Connection;

    check-cast p2, Lcom/android/server/am/ProcessRecord;

    iget-object p1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-boolean v0, p1, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    iget-object p0, p0, Lcom/android/server/am/OomAdjusterModernImpl$ReachableCollectingConsumer;->mReachables:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
