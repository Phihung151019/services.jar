.class public final synthetic Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lcom/android/server/job/controllers/JobStatus;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$3:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/job/controllers/JobStatus;

    iput-object p3, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$3:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$0:I

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/job/controllers/JobStatus;

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$2:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;->f$3:Landroid/os/Handler;

    sget-boolean v3, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-lez v0, :cond_1

    iget v3, v1, Lcom/android/server/job/controllers/JobStatus;->mSatisfiedConstraintsOfInterest:I

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    new-instance v3, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda7;-><init>(ILcom/android/server/job/controllers/JobStatus;Ljava/util/concurrent/CountDownLatch;Landroid/os/Handler;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
