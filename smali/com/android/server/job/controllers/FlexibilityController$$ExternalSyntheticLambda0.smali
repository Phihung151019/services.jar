.class public final synthetic Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/util/SparseArrayMap$TriConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    iput-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$0:Landroid/util/IndentingPrintWriter;

    iget-wide v1, p0, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;->f$1:J

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string p0, "/"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p0, ": "

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "{"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    move p1, p0

    :goto_0
    iget-object p2, p3, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBuckets:[Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;

    array-length v3, p2

    if-ge p0, v3, :cond_3

    iget v3, p3, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->mScoreBucketIndex:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    add-int/2addr v3, p0

    array-length v5, p2

    rem-int/2addr v3, v5

    aget-object p2, p2, v3

    if-eqz p2, :cond_2

    iget-wide v5, p2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const-string p1, ", "

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-wide v5, p2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->startTimeElapsed:J

    invoke-static {v5, v6, v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string p1, "="

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget p1, p2, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker$JobScoreBucket;->score:I

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    move p1, v4

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method
