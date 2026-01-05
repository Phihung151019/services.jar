.class public final Lcom/android/server/accessibility/gestures/SemMultiFingerMultiTapAndHold;
.super Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mIsTargetFingerCountReached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mCompletedTapCount:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetTapCount:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    const/4 v3, 0x2

    const-wide/16 v4, 0x1388

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_0
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    :goto_0
    invoke-virtual {v6}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iget p2, p0, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;->mTargetFingerCount:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v6, v7, v8}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void
.end method
