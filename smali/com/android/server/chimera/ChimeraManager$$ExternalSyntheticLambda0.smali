.class public final synthetic Lcom/android/server/chimera/ChimeraManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/server/chimera/ChimeraDataInfo;

    invoke-direct {p0}, Lcom/android/server/chimera/ChimeraDataInfo;-><init>()V

    iget-object v0, p1, Lcom/android/server/chimera/PolicyHandler;->mTriggerCntSrc:[I

    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mTriggerCntSrc:[I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/android/server/chimera/PolicyHandler;->mActionCntSrc:[I

    array-length v1, v0

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mActionCntSrc:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mKillCnt:I

    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mKillCnt:I

    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mWeightLru:F

    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mLruWeight:F

    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mWeightStandbyBucket:F

    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mStdBktWeight:F

    iget v0, p1, Lcom/android/server/chimera/PolicyHandler;->mWeightMem:F

    iput v0, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mMemWeight:F

    iget-object v0, p1, Lcom/android/server/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/chimera/ChimeraStrategy;

    iget-wide v0, v0, Lcom/android/server/chimera/ChimeraStrategy;->mMemFreeTarget:J

    invoke-virtual {p1}, Lcom/android/server/chimera/PolicyHandler;->getKillCntByAdj()[I

    move-result-object v0

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mAdjKillCnt:[I

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/android/server/chimera/PolicyHandler;->mKillCntByGrp:[I

    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/chimera/ChimeraDataInfo;->mGroupKillCnt:[I

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
