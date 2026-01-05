.class public final Lcom/android/server/display/mode/VoteSummary;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public appRequestBaseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public final mIsDisplayResolutionRangeVotingEnabled:Z

.field public final mLoggingEnabled:Z

.field public final mSupportedModesVoteEnabled:Z

.field public final mSupportsFrameRateOverride:Z

.field public maxPhysicalRefreshRate:F

.field public maxRenderFrameRate:F

.field public minHeight:I

.field public minPhysicalRefreshRate:F

.field public minRenderFrameRate:F

.field public minWidth:I

.field public final rejectedModeIds:Ljava/util/Set;

.field public final requestedRefreshRates:Ljava/util/Set;

.field public supportedModeIds:Ljava/util/List;

.field public supportedRefreshRates:Ljava/util/List;

.field public width:I


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    iput-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    iput-boolean p2, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    iput-boolean p3, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    iput-boolean p4, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    return-void
.end method

.method public static equalsWithinFloatTolerance(FF)Z
    .locals 2

    const v0, 0x3c23d70a    # 0.01f

    sub-float v1, p1, v0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    add-float/2addr p1, v0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final adjustSize(Landroid/view/Display$Mode;[Landroid/view/Display$Mode;)V
    .locals 8

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    if-ne v2, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    if-eqz p1, :cond_5

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    array-length p1, p2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v1, p1, :cond_5

    aget-object v4, p2, v1

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-gt v5, v2, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    if-gt v5, v0, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    if-lt v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    if-lt v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const v7, 0x3c23d70a    # 0.01f

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    iget v6, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    mul-int/2addr v6, v5

    if-gt v6, v3, :cond_2

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    if-ne v5, v0, :cond_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    move v3, v6

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p2

    iput p2, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    :cond_5
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "adjustSize: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public final applyVotes(IILandroid/util/SparseArray;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/mode/VoteSummary;->reset()V

    move v0, p2

    :goto_0
    if-lt v0, p1, :cond_1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/mode/Vote;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p0}, Lcom/android/server/display/mode/Vote;->updateSummary(Lcom/android/server/display/mode/VoteSummary;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-boolean p3, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "applyVotes for range ["

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "]: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final disableModeSwitching(F)V
    .locals 1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Disabled mode switching on summary: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final disableRenderRateSwitching(F)V
    .locals 4

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    div-float v0, p1, v0

    const v1, 0x3c23d70a    # 0.01f

    sub-float/2addr v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    int-to-float v0, v0

    div-float v0, p1, v0

    iget v2, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    sub-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    :goto_0
    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Disabled render rate switching on summary: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final filterModes([Landroid/view/Display$Mode;)Ljava/util/List;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v3, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    const v4, 0x3c23d70a    # 0.01f

    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    const-string v3, ", maxRenderFrameRate="

    iget-boolean v5, v0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    const-string/jumbo v6, "VoteSummary"

    if-lez v2, :cond_0

    if-eqz v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Vote summary resulted in empty set (invalid frame rate range): minRenderFrameRate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    iget-boolean v7, v0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v7, :cond_1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v5, :cond_4

    const-string/jumbo v0, "Vote summary resulted in empty set (empty supportedModes)"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    :cond_3
    if-eqz v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Requested refreshRate is outside frame rate range: requestedRefreshRates="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", requestedRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minRenderFrameRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v8, v0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    array-length v10, v1

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_19

    aget-object v12, v1, v11

    iget-object v13, v0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    const-string v14, "Discarding mode "

    if-eqz v13, :cond_7

    if-nez v7, :cond_8

    :cond_7
    move/from16 v16, v4

    goto/16 :goto_5

    :cond_8
    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v15, :cond_a

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, v17

    check-cast v9, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    move/from16 v17, v4

    iget v4, v9, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mPeakRefreshRate:F

    invoke-static {v1, v4}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v1

    iget v4, v9, Lcom/android/server/display/mode/SupportedRefreshRatesVote$RefreshRates;->mVsyncRate:F

    invoke-static {v1, v4}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move-object/from16 v1, p1

    move/from16 v4, v17

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", supportedRefreshRates not found: mode.refreshRate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", mode.vsyncRate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getVsyncRate()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", supportedRefreshRates="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_4
    move v13, v5

    goto/16 :goto_a

    :goto_5
    iget-object v1, v0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    if-eqz v1, :cond_e

    if-nez v7, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_6

    :cond_d
    if-eqz v5, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", supportedMode not found: mode.modeId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", supportedModeIds="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    :goto_6
    iget-object v1, v0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    :goto_7
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->width:I

    if-ne v1, v4, :cond_10

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->height:I

    if-eq v1, v4, :cond_11

    :cond_10
    move v13, v5

    goto/16 :goto_9

    :cond_11
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    sub-float v4, v4, v16

    cmpg-float v4, v1, v4

    const-string v9, ", modeRefreshRate="

    if-ltz v4, :cond_12

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    add-float v4, v4, v16

    cmpl-float v4, v1, v4

    if-lez v4, :cond_13

    :cond_12
    move v13, v5

    goto/16 :goto_8

    :cond_13
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget-boolean v4, v0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    if-nez v4, :cond_15

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    sub-float v4, v4, v16

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_14

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    add-float v4, v4, v16

    cmpl-float v4, v1, v4

    if-lez v4, :cond_15

    :cond_14
    if-eqz v5, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", outside render rate bounds: minRenderFrameRate="

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_15
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    div-float v4, v1, v4

    sub-float v4, v4, v16

    move v13, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v4, v4

    div-float v4, v1, v4

    iget v5, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    sub-float v5, v5, v16

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_16

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-static {v1, v4}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v8, 0x0

    goto/16 :goto_a

    :cond_16
    if-eqz v13, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", outside frame rate bounds: minRenderFrameRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", modePhysicalRefreshRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :goto_8
    if-eqz v13, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", outside refresh rate bounds: minPhysicalRefreshRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", maxPhysicalRefreshRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :goto_9
    if-eqz v13, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", wrong size: desiredWidth="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": desiredHeight="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": actualWidth="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": actualHeight="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_17
    move v13, v5

    if-eqz v13, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Discarding mode"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", is a rejectedMode: mode.modeId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rejectedModeIds="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move v5, v13

    move/from16 v4, v16

    goto/16 :goto_2

    :cond_19
    if-eqz v8, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1a
    return-object v2
.end method

.method public final limitRefreshRanges(Lcom/android/server/display/mode/VoteSummary;)V
    .locals 2

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v1, p1, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iget p1, p1, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    iget-boolean p1, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "limitRefreshRanges: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "VoteSummary"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    iput v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    iput-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    iput v0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-boolean v0, p0, Lcom/android/server/display/mode/VoteSummary;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Summary reset: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "VoteSummary"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final selectBaseMode(Ljava/util/List;Landroid/view/Display$Mode;I)Landroid/view/Display$Mode;
    .locals 3

    iget v0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :goto_0
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    if-eqz p2, :cond_1

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget p0, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/server/display/mode/VoteSummary$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p3

    invoke-static {v0, p3}, Lcom/android/server/display/mode/VoteSummary;->equalsWithinFloatTolerance(FF)Z

    move-result p3

    if-eqz p3, :cond_2

    return-object p2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/Display$Mode;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "VoteSummary{ minPhysicalRefreshRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxPhysicalRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxPhysicalRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", minRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->maxRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->minHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableRefreshRateSwitching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->disableRefreshRateSwitching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appRequestBaseModeRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/VoteSummary;->appRequestBaseModeRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", requestRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->requestedRefreshRates:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedRefreshRates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", supportedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->supportedModeIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rejectedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/VoteSummary;->rejectedModeIds:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsDisplayResolutionRangeVotingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mIsDisplayResolutionRangeVotingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedModesVoteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportedModesVoteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportsFrameRateOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/mode/VoteSummary;->mSupportsFrameRateOverride:Z

    const-string v1, " }"

    invoke-static {v1, v0, p0}, Landroid/hardware/biometrics/face/V1_0/OptionalBool$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
