.class public final Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mDeferred:I


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->whenStandbyDeferred:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$DeferredJobCounter;->mDeferred:I

    :cond_0
    return-void
.end method
