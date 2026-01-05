.class public final Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mEventDispatcher:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

.field public mLastDelegatedDownEventTime:J

.field public final mMultiTapMaxDelay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "MotionEventDispatcherDelegate"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e015e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    return-void
.end method


# virtual methods
.method public final dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string/jumbo v1, "MotionEventDispatcherDelegate"

    sget-boolean v2, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->DBG:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "dispatchMotionEvent mLastDelegatedDownEventTime time = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dispatchMotionEvent original down time = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-wide v0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mLastDelegatedDownEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mEventDispatcher:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final sendDelayedMotionEvents(JLjava/util/List;)V
    .locals 4

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget p1, p0, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->mMultiTapMaxDelay:I

    int-to-long p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    iget v3, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mPolicyFlags:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->dispatchMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mEvent:Landroid/view/MotionEvent;

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    iput-object v1, v0, Lcom/android/server/accessibility/magnification/MotionEventInfo;->mRawEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
