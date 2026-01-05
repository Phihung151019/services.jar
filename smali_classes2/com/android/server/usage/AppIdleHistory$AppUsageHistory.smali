.class public final Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public bucketExpiryTimesMs:Landroid/util/SparseLongArray;

.field public bucketingReason:I

.field public currentBucket:I

.field public lastInformedBucket:I

.field public lastJobRunTime:J

.field public lastPredictedBucket:I

.field public lastPredictedTime:J

.field public lastRestrictAttemptElapsedTime:J

.field public lastRestrictReason:I

.field public lastUsedByUserElapsedTime:J

.field public lastUsedElapsedTime:J

.field public lastUsedScreenTime:J

.field public nextEstimatedLaunchTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method
