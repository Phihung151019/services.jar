.class public final Lcom/android/server/accessibility/magnification/MagnificationProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mController:Lcom/android/server/accessibility/magnification/MagnificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Magnifier on display#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V

    invoke-virtual {v3}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "    Magnification region="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v3}, Landroid/graphics/Region;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "    IdOfLastServiceToMagnify="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v5

    if-ne v5, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getIdOfLastServiceToMagnify(I)I

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    TrackingTypingFocusEnabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v3}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->isTrackingTypingFocusEnabled(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :goto_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    SupportWindowMagnification="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget-boolean v0, v0, Lcom/android/server/accessibility/magnification/MagnificationController;->mSupportWindowMagnification:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "    WindowMagnificationConnectionState="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    iget p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mConnectionState:I

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->connectionStateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final getControllingMode(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationController;->mLastMagnificationActivatedModeArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getCurrentMagnificationRegion(ILandroid/graphics/Region;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V

    return-void

    :cond_0
    const/4 p3, 0x2

    if-ne v0, p3, :cond_3

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    iget-object p3, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz p0, :cond_2

    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    :goto_1
    monitor-exit p3

    return-void

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public final getFullscreenMagnificationRegion(ILandroid/graphics/Region;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getMagnificationRegion(ILandroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->unregister(I)V

    :cond_2
    throw p2
.end method

.method public final getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v0

    new-instance v1, Landroid/accessibilityservice/MagnificationConfig$Builder;

    invoke-direct {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;-><init>()V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v3

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object p0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object p0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterX(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object p0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getCenterY(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v3

    invoke-virtual {v1, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object v0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accessibility/magnification/MagnificationController;->isActivated(II)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object p0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object p0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterX(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    move-result-object p0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getCenterY(I)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/accessibilityservice/MagnificationConfig$Builder;->setActivated(Z)Landroid/accessibilityservice/MagnificationConfig$Builder;

    :goto_0
    invoke-virtual {v1}, Landroid/accessibilityservice/MagnificationConfig$Builder;->build()Landroid/accessibilityservice/MagnificationConfig;

    move-result-object p0

    return-object p0
.end method

.method public final resetAllIfNeeded(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    iget-object v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, p1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->resetIfNeeded(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mEnabled:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mIdOfLastServiceToControl:I

    if-ne p1, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->disableWindowMagnificationInternal(Landroid/view/accessibility/MagnificationAnimationCallback;)Z

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;ZI)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget-object v3, v2, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v2, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    if-eqz v2, :cond_2

    monitor-exit v3

    :cond_1
    move/from16 v10, p3

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->getControllingMode(I)I

    move-result v2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    move-result v3

    if-ne v2, v8, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v4

    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v5}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    :cond_4
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZI)Z

    move-result v0

    return v0

    :cond_5
    move/from16 v10, p3

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v0, v1, v10}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(IZ)Z

    move-result v0

    return v0

    :cond_6
    move/from16 v10, p3

    if-ne v2, v4, :cond_9

    if-eqz v3, :cond_8

    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v4

    if-eqz v10, :cond_7

    sget-object v9, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    :cond_7
    move-object v5, v9

    const/4 v6, 0x0

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    move-result v0

    return v0

    :cond_8
    iget-object v0, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v0

    sget-object v2, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    move-result v0

    return v0

    :cond_9
    return v5

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_2
    iget-object v11, v0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget-object v12, v11, Lcom/android/server/accessibility/magnification/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getMode()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->isActivated()Z

    move-result v0

    invoke-virtual {v11, v1, v13}, Lcom/android/server/accessibility/magnification/MagnificationController;->getCurrentMagnificationCenterLocked(II)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz v2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v2, Landroid/graphics/PointF;->x:F

    goto :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterX()F

    move-result v6

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_b

    iget v2, v2, Landroid/graphics/PointF;->y:F

    goto :goto_4

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getCenterY()F

    move-result v2

    :goto_4
    invoke-virtual {v3, v6, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_c
    iget-object v2, v11, Lcom/android/server/accessibility/magnification/MagnificationController;->mMagnificationEndRunnableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;

    if-eqz v2, :cond_d

    const-string/jumbo v6, "MagnificationController"

    const-string v7, "Discard previous animation request"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mExpired:Z

    iget-object v6, v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->this$0:Lcom/android/server/accessibility/magnification/MagnificationController;

    iget v2, v2, Lcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;->mDisplayId:I

    invoke-virtual {v6, v2, v9}, Lcom/android/server/accessibility/magnification/MagnificationController;->setDisableMagnificationCallbackLocked(ILcom/android/server/accessibility/magnification/MagnificationController$DisableMagnificationCallback;)V

    :cond_d
    move v2, v0

    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_f

    if-ne v13, v4, :cond_e

    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->getScale(I)F

    move-result v7

    goto :goto_5

    :cond_e
    invoke-virtual {v11}, Lcom/android/server/accessibility/magnification/MagnificationController;->getMagnificationConnectionManager()Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->getScale(I)F

    move-result v7

    goto :goto_5

    :cond_f
    invoke-virtual/range {p2 .. p2}, Landroid/accessibilityservice/MagnificationConfig;->getScale()F

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_5
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    if-eqz v10, :cond_10

    new-instance v14, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;

    invoke-direct {v14, v11, v1, v13}, Lcom/android/server/accessibility/magnification/MagnificationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;II)V

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_8

    :cond_10
    move-object v14, v9

    :goto_6
    if-ne v13, v4, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z

    if-eqz v2, :cond_11

    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->y:F

    move v3, v0

    move-object v0, v6

    const/4 v6, 0x0

    move v2, v7

    move-object v5, v14

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->enableWindowMagnification(IFFFLandroid/view/accessibility/MagnificationAnimationCallback;II)Z

    goto :goto_7

    :cond_11
    move-object v4, v6

    invoke-virtual {v4, v1, v5}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZ)V

    goto :goto_7

    :cond_12
    move-object v4, v6

    move v6, v2

    move v2, v7

    if-ne v13, v8, :cond_15

    invoke-virtual {v4, v1, v5, v9}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->disableWindowMagnification(IZLandroid/view/accessibility/MagnificationAnimationCallback;)Z

    if-eqz v6, :cond_14

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->register(I)V

    :cond_13
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    move v6, v4

    move v4, v3

    move v3, v6

    move/from16 v7, p4

    move-object v6, v14

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->setScaleAndCenter(IFFFZLandroid/view/accessibility/MagnificationAnimationCallback;I)Z

    goto :goto_7

    :cond_14
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->isRegistered(I)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v1, v9}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->reset(ILandroid/view/accessibility/MagnificationAnimationCallback;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_15
    :goto_7
    if-nez v10, :cond_16

    :try_start_4
    iget-object v0, v11, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v1, v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    :cond_16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0, v9}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    monitor-exit v12

    return v8

    :goto_8
    if-nez v10, :cond_17

    iget-object v2, v11, Lcom/android/server/accessibility/magnification/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, v1, v13}, Lcom/android/server/accessibility/AccessibilityManagerService;->changeMagnificationMode(II)V

    :cond_17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1, v9}, Lcom/android/server/accessibility/magnification/MagnificationController;->setTransitionState(Ljava/lang/Integer;Ljava/lang/Integer;)V

    throw v0

    :goto_9
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public final unregister(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationProcessor;->mController:Lcom/android/server/accessibility/magnification/MagnificationController;

    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/MagnificationController;->getFullScreenMagnificationController()Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    move-result-object p0

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->unregisterLocked(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
