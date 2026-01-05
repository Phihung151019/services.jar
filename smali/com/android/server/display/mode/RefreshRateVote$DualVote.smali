.class public final Lcom/android/server/display/mode/RefreshRateVote$DualVote;
.super Lcom/android/server/display/mode/RefreshRateVote;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/display/mode/RefreshRateVote$DualVote;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/display/mode/RefreshRateVote;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DualVote{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/server/display/mode/RefreshRateVote;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateSummary(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v1, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMinRefreshRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iget p0, p0, Lcom/android/server/display/mode/RefreshRateVote;->mMaxRefreshRate:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v0, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    return-void
.end method
