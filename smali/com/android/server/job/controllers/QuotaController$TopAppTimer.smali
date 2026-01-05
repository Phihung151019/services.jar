.class public final Lcom/android/server/job/controllers/QuotaController$TopAppTimer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivities:Landroid/util/SparseArray;

.field public final mPkg:Landroid/content/pm/UserPackage;

.field public mStartTimeElapsed:J

.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    return-void
.end method


# virtual methods
.method public final processEventLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 14

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageEvents$Event;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-wide v0, p1, Lcom/android/server/job/controllers/QuotaController;->mEJRewardTopAppMs:J

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long v2, v4, v2

    iget-wide v6, p1, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    div-long v8, v2, v6

    long-to-int v8, v8

    rem-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    int-to-long v2, v8

    mul-long/2addr v0, v2

    sget-boolean v2, Lcom/android/server/job/controllers/QuotaController;->DEBUG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Crediting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    sub-long v8, v4, v8

    iget-wide v10, p1, Lcom/android/server/job/controllers/QuotaController;->mEJTopAppTimeChunkSizeMs:J

    div-long v12, v8, v10

    long-to-int v3, v12

    rem-long/2addr v8, v10

    cmp-long v6, v8, v6

    if-ltz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    const-string v6, " time chunks"

    const-string v7, "JobScheduler.Quota"

    invoke-static {v3, v6, v7, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    iget v3, v2, Landroid/content/pm/UserPackage;->userId:I

    iget-object v2, v2, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Lcom/android/server/job/controllers/QuotaController;->getEJDebitsLocked(ILjava/lang/String;)Lcom/android/server/job/controllers/QuotaController$ShrinkableDebits;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    move-object v3, v2

    iget v2, v3, Landroid/content/pm/UserPackage;->userId:I

    iget-object v3, v3, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    move-wide v7, v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/job/controllers/QuotaController;->transactQuotaLocked(ILjava/lang/String;JLcom/android/server/job/controllers/QuotaController$ShrinkableDebits;J)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mPkg:Landroid/content/pm/UserPackage;

    iget v0, p0, Landroid/content/pm/UserPackage;->userId:I

    iget-object p0, p0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p0, v4, v5}, Lcom/android/server/job/controllers/QuotaController;->maybeUpdateConstraintForPkgLocked(ILjava/lang/String;J)Landroid/util/ArraySet;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, p0}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    iput-wide v4, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mStartTimeElapsed:J

    :cond_6
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$TopAppTimer;->mActivities:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
