.class public final synthetic Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/CachedAppOptimizer;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    iput-boolean p2, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-boolean p0, p0, Lcom/android/server/am/CachedAppOptimizer$$ExternalSyntheticLambda0;->f$1:Z

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->KEY_USE_COMPACTION:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mShouldNotFreeze:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v3, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeExempt:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v3, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    const/16 v4, 0x352

    if-lt v3, v4, :cond_3

    iget-wide v3, v0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerDebounceTimeout:J

    invoke-static {p1, v3, v4}, Lcom/android/server/am/CachedAppOptimizer;->updateEarliestFreezableTime(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, p1, v2}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncInternalLSP(JLcom/android/server/am/ProcessRecord;Z)V

    :cond_3
    :goto_0
    iput-boolean v2, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    :cond_4
    if-nez p0, :cond_5

    iget-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-eqz p0, :cond_5

    const/16 p0, 0x13

    invoke-virtual {v0, p1, p0, v2}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;IZ)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezerOverride:Z

    :cond_5
    :goto_1
    return-void
.end method
