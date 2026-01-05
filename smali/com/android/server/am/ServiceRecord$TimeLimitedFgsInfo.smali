.class public final Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mFirstFgsStartRealtime:J

.field public mFirstFgsStartUptime:J

.field public mLastFgsStartTime:J

.field public mNumParallelServices:I

.field public mTimeLimitExceededAt:J

.field public mTotalRuntime:J


# virtual methods
.method public final decNumParallelServices()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    :cond_0
    iget v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    :cond_1
    return-void
.end method

.method public final getFirstFgsStartRealtime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    return-wide v0
.end method

.method public final getTimeLimitExceededAt()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-wide v0
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mNumParallelServices:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartUptime:J

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mFirstFgsStartRealtime:J

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mLastFgsStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTotalRuntime:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/ServiceRecord$TimeLimitedFgsInfo;->mTimeLimitExceededAt:J

    return-void
.end method
