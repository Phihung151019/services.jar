.class public final Lcom/android/server/display/mode/VotesStatsReporter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIgnoredRenderRate:Z

.field public final mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mLastMinPriorityByDisplay:Landroid/util/SparseIntArray;

    iput-boolean p1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    return-void
.end method

.method public static getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I
    .locals 2

    instance-of v0, p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/server/display/mode/RefreshRateVote$PhysicalVote;

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    :goto_0
    float-to-int p0, p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    instance-of v0, p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    iget-object p0, p0, Lcom/android/server/display/mode/SupportedRefreshRatesVote;->mRefreshRates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    iget v0, v0, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_2
    return p1

    :cond_3
    instance-of v0, p0, Lcom/android/server/display/mode/CombinedVote;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_4

    check-cast p0, Lcom/android/server/display/mode/CombinedVote;

    iget-object p0, p0, Lcom/android/server/display/mode/CombinedVote;->mVotes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/mode/Vote;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_4
    return v1
.end method


# virtual methods
.method public final reportVoteChanged(IILcom/android/server/display/mode/Vote;)V
    .locals 6

    const-wide/32 v2, 0x20000

    const-string v4, ":"

    const-string/jumbo v5, "VotesStatsReporter."

    if-nez p3, :cond_0

    invoke-static {p1, v5, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-static {v2, v3, v0, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const/4 v5, -0x1

    const/16 v0, 0x318

    const/4 v3, 0x3

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/mode/VotesStatsReporter;->mIgnoredRenderRate:Z

    invoke-static {p3, v1}, Lcom/android/server/display/mode/VotesStatsReporter;->getMaxRefreshRate(Lcom/android/server/display/mode/Vote;Z)I

    move-result v0

    invoke-static {p1, v5, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    move v4, v0

    const/16 v0, 0x318

    const/4 v3, 0x1

    const/4 v5, -0x1

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    return-void
.end method
