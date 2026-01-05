.class public Lcom/android/server/accessibility/gestures/MultiTap;
.super Lcom/android/server/accessibility/gestures/GestureMatcher;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBaseX:F

.field public mBaseY:F

.field public mCurrentTaps:I

.field public final mDoubleTapSlop:I

.field public final mTargetTaps:I

.field public final mTouchSlop:I


# direct methods
.method public constructor <init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 1

    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/accessibility/gestures/GestureMatcher;-><init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    invoke-static {p4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapSlop:I

    invoke-static {p4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/MultiTap;->clear()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 6

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(IIILandroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    iput v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    return-void
.end method

.method public getGestureName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Taps"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "Triple Tap"

    return-object p0

    :cond_1
    const-string p0, "Double Tap"

    return-object p0
.end method

.method public final isInsideSlop(ILandroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p0, p2

    const/4 p2, 0x0

    cmpl-float v1, v0, p2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    cmpl-float p2, p0, p2

    if-nez p2, :cond_0

    return v2

    :cond_0
    float-to-double v0, v0

    float-to-double v3, p0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    int-to-double p0, p1

    cmpg-double p0, v0, p0

    if-gtz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v3, v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    const/4 v2, 0x3

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    :cond_0
    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mDoubleTapSlop:I

    invoke-virtual {p0, p1, v6}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(ILandroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    iget p1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iget p3, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    if-ne p1, p3, :cond_2

    invoke-virtual {p0, p2, v5, v6, v7}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_2
    return-void
.end method

.method public final onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public final onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTouchSlop:I

    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/gestures/MultiTap;->isInsideSlop(ILandroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_0

    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mTargetTaps:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_3
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    const/4 v1, 0x3

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->post(IJLandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Taps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mCurrentTaps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/MultiTap;->mBaseY:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
