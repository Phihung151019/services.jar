.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p4

    iget-object p5, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object p5, p5, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p5

    :try_start_0
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mTempRect1:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mSpecAnimationBridge:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v4, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    neg-float v3, v3

    float-to-int v3, v3

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    iget-object v2, v2, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v4, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v1, v4, v3}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v2, v4

    const/4 v4, 0x1

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    sub-int v4, p3, p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    const/4 v6, 0x0

    if-le v4, v5, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-nez v2, :cond_2

    iget p3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p3

    int-to-float p0, p0

    goto :goto_1

    :cond_2
    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p0

    int-to-float p0, p3

    goto :goto_1

    :cond_3
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, v4, :cond_4

    sub-int/2addr p0, v4

    int-to-float p0, p0

    sub-float/2addr p0, v2

    goto :goto_1

    :cond_4
    iget p0, v0, Landroid/graphics/Rect;->right:I

    if-le p3, p0, :cond_5

    sub-int/2addr p3, p0

    int-to-float p0, p3

    add-float/2addr p0, v2

    goto :goto_1

    :cond_5
    move p0, v6

    :goto_1
    sub-int p3, p4, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le p3, v2, :cond_6

    iget p3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    int-to-float v6, p2

    goto :goto_2

    :cond_6
    iget p3, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, p3, :cond_7

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-float v6, p2, v1

    goto :goto_2

    :cond_7
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    if-le p4, p2, :cond_8

    sub-int/2addr p4, p2

    int-to-float p2, p4

    add-float v6, p2, v1

    :cond_8
    :goto_2
    iget-object p2, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p3, p2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr p0, p3

    mul-float/2addr v6, p3

    iget-boolean p3, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mRegistered:Z

    if-nez p3, :cond_9

    goto :goto_3

    :cond_9
    iget p4, p2, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr p4, p0

    iget p0, p2, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p0, v6

    if-nez p3, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p1, p4, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onMagnificationChangedLocked(Z)V

    :cond_b
    iget-object p0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, p0, v3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    :goto_3
    monitor-exit p5

    return-void

    :goto_4
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
