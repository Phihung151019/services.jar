.class public final synthetic Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    iput-wide p2, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    iget-wide v1, p0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData$$ExternalSyntheticLambda0;->f$1:J

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    iget-boolean p1, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    if-eqz p1, :cond_2

    iget-wide p0, p0, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFreezeUnfreezeTime:J

    iget-wide v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    cmp-long v3, p0, v3

    if-gez v3, :cond_0

    iput-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mEarliestFrozenTimestamp:J

    :cond_0
    iget-wide v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    cmp-long v3, p0, v3

    if-lez v3, :cond_1

    iput-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mLatestFrozenTimestamp:J

    :cond_1
    sub-long/2addr v1, p0

    iget-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    add-long/2addr p0, v1

    iput-wide p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mTotalFrozenDurations:J

    iget-object p0, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mCachedAppFrozenDurations:[J

    iget p1, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    add-int/lit8 v3, p1, 0x1

    iput v3, v0, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->mNumOfFrozenApps:I

    aput-wide v1, p0, p1

    :cond_2
    return-void
.end method
