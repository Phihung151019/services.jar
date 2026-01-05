.class public final Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mIgnorePreferredRefreshRate:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SWITCHABLE:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    return-void

    :cond_0
    iget-object p1, p2, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    return-void
.end method


# virtual methods
.method public final findModeLocked(IFI)Landroid/view/Display$Mode;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    iget-object p0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length p1, p0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object p2, p0, v0

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p3, :cond_1

    return-object p2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_6

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    if-nez p0, :cond_6

    iget-object p0, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mAppSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/view/Display$Mode;

    iget-object p3, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/Display$Mode;

    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_5

    aget-object v1, p0, v0

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4, p2}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object v2, p0, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v2, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Couldn\'t find a mode for the requestedRefreshRate: "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " on Display: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayModeDirector"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v2
.end method

.method public final setAppRequest(IIFFF)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->findModeLocked(IFI)Landroid/view/Display$Mode;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mExternalDisplaysConnected:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    cmpl-float v2, p4, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    cmpl-float v2, p5, v0

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, v3

    goto :goto_3

    :cond_1
    :goto_1
    cmpl-float v2, p5, v0

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 p5, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_2
    new-instance v2, Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v2, p4, p5}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    iget p4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    cmpl-float p4, p4, v0

    if-nez p4, :cond_3

    iget p4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    cmpl-float p4, p4, v0

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    iget p4, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p5, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    new-instance v2, Lcom/android/server/display/mode/RefreshRateVote$RenderVote;

    invoke-direct {v2, p4, p5}, Lcom/android/server/display/mode/RefreshRateVote;-><init>(FF)V

    goto :goto_4

    :cond_4
    move-object v2, v3

    :goto_4
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Landroid/view/Display$Mode;->isSynthetic()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p3

    new-instance p4, Lcom/android/server/display/mode/RequestedRefreshRateVote;

    invoke-direct {p4, p3}, Lcom/android/server/display/mode/RequestedRefreshRateVote;-><init>(F)V

    goto :goto_5

    :cond_5
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p3

    new-instance p4, Lcom/android/server/display/mode/BaseModeRefreshRateVote;

    invoke-direct {p4, p3}, Lcom/android/server/display/mode/BaseModeRefreshRateVote;-><init>(F)V

    goto :goto_5

    :cond_6
    cmpl-float p4, p3, v0

    if-eqz p4, :cond_7

    iget-boolean p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->mIgnorePreferredRefreshRate:Z

    if-eqz p4, :cond_7

    new-instance p4, Lcom/android/server/display/mode/RequestedRefreshRateVote;

    invoke-direct {p4, p3}, Lcom/android/server/display/mode/RequestedRefreshRateVote;-><init>(F)V

    goto :goto_5

    :cond_7
    move-object p4, v3

    :goto_5
    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p3, p3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 p5, 0x7

    invoke-virtual {p3, p1, p5, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    iget-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p3, p3, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 p5, 0x8

    invoke-virtual {p3, p1, p5, p4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    if-nez v1, :cond_9

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p2

    new-instance v3, Lcom/android/server/display/mode/SizeVote;

    invoke-direct {v3, p3, p2, p3, p2}, Lcom/android/server/display/mode/SizeVote;-><init>(IIII)V

    :cond_8
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$AppRequestObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 p2, 0x9

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
