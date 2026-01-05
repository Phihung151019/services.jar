.class public final synthetic Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/compat/CompatChange$ChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/QuotaController;

    return-void
.end method


# virtual methods
.method public final onCompatChange(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->isCompatOverridedForQuotaConstantAdjustment()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultBucketWindowSizes(Z)V

    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    invoke-virtual {v1, v0}, Lcom/android/server/job/controllers/QuotaController$QcConstants;->adjustDefaultEjLimits(Z)V

    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController;->mQcConstants:Lcom/android/server/job/controllers/QuotaController$QcConstants;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/job/controllers/QuotaController$QcConstants;->mShouldReevaluateConstraints:Z

    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController;->onConstantsUpdatedLocked()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
