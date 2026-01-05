.class public final Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mInputManager:Landroid/hardware/input/InputManager;

.field public mLastMotionEvent:Landroid/view/MotionEvent;


# virtual methods
.method public final click(IJJ)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v5, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mLastMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v5, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v0, v2, v4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v8, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    const/16 p3, 0x1002

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setSource(I)V

    const/high16 p3, 0x800000

    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->setFlags(I)V

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setDisplayId(I)V

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1, p3}, Landroid/hardware/input/InputManager;->semInjectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final performCornerAction(I)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->mInputManager:Landroid/hardware/input/InputManager;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v5, v3

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(IJJ)V

    const-wide/16 p0, 0x32

    add-long v9, v3, p0

    move-wide v11, v9

    move-object v7, v1

    move v8, v2

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/accessibility/autoaction/actiontype/DoubleClick;->click(IJJ)V

    :cond_0
    return-void
.end method
