.class public final Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCachedScore:I

.field public mCachedScoreExpirationTimeElapsed:J

.field public mScoreBucketIndex:I

.field public final mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    return-void
.end method


# virtual methods
.method public final addScore(IJ)V
    .locals 7

    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    aget-object v2, v1, v0

    const-wide/32 v3, 0x5265c00

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-wide p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    aput-object v2, v1, v0

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    add-long/2addr p2, v3

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    goto :goto_0

    :cond_0
    iget-wide v5, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    sub-long v3, p2, v3

    cmp-long v1, v5, v3

    if-gez v1, :cond_1

    const/4 v0, 0x0

    iput v0, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    iput-wide p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScoreExpirationTimeElapsed:J

    goto :goto_0

    :cond_1
    const-wide/32 v3, 0x36ee80

    sub-long v3, p2, v3

    cmp-long v1, v5, v3

    if-gez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    return-void

    :cond_2
    :goto_0
    iget p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    add-int/2addr p2, p1

    iput p2, v2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mCachedScore:I

    return-void
.end method
