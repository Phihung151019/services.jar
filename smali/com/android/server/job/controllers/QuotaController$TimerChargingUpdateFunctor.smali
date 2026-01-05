.class public final Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mIsCharging:Z

.field public mNowElapsed:J


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Timer;

    iget-object v0, p1, Lcom/android/server/job/controllers/QuotaController$Timer;->mPkg:Landroid/content/pm/UserPackage;

    iget-object v1, v0, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/UserPackage;->userId:I

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(ILjava/lang/String;J)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mNowElapsed:J

    iget-boolean p0, p0, Lcom/android/server/job/controllers/QuotaController$TimerChargingUpdateFunctor;->mIsCharging:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    :cond_0
    return-void
.end method
