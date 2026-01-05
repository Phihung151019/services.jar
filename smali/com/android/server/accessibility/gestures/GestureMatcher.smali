.class public abstract Lcom/android/server/accessibility/gestures/GestureMatcher;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

.field public final mGestureId:I

.field public final mHandler:Landroid/os/Handler;

.field public mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

.field public mState:I


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Lcom/android/server/accessibility/gestures/GestureManifold;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-direct {p1, p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;-><init>(Lcom/android/server/accessibility/gestures/GestureMatcher;)V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    return-void
.end method

.method public static getStateSymbolicName(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "Unknown state: "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "STATE_GESTURE_CANCELED"

    return-object p0

    :cond_1
    const-string/jumbo p0, "STATE_GESTURE_COMPLETED"

    return-object p0

    :cond_2
    const-string/jumbo p0, "STATE_GESTURE_STARTED"

    return-object p0

    :cond_3
    const-string/jumbo p0, "STATE_CLEAR"

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    return-void
.end method

.method public abstract getGestureName()Ljava/lang/String;
.end method

.method public onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    iget v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public abstract onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public abstract onPointerDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public onPointerUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0

    return-void
.end method

.method public abstract onUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
.end method

.method public final setState(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 6

    iput p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mDelayedTransition:Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/GestureMatcher$DelayedTransition;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    iget v2, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;->onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getGestureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    invoke-static {p0}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getStateSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
