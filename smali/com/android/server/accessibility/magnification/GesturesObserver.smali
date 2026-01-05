.class public final Lcom/android/server/accessibility/magnification/GesturesObserver;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# instance fields
.field public mCancelledMatcherSize:I

.field public final mGestureMatchers:Ljava/util/List;

.field public final mListener:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

.field public mObserveStarted:Z

.field public mProcessMotionEvent:Z


# direct methods
.method public varargs constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;[Lcom/android/server/accessibility/gestures/GestureMatcher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    iput v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    iput-object p1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    :goto_0
    array-length p1, p2

    if-ge v0, p1, :cond_0

    aget-object p1, p2, v0

    iput-object p0, p1, Lcom/android/server/accessibility/gestures/GestureMatcher;->mListener:Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;

    iget-object v1, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear$1()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    iput-boolean v2, p0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mObserveStarted:Z

    return-void
.end method

.method public final onStateChanged(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    sget-boolean v4, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "MagnificationGesturesObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onGestureCompleted: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " event = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mDelayedEventQueue:Ljava/util/List;

    iget-object v7, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mCallback:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;

    iget-wide v8, v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->mLastDownEventTime:J

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v10, :cond_1

    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;->gestureIdToString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "onGestureDetected : gesture = "

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onGestureDetected : delayedEventQueue = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v10, 0x65

    if-ne v1, v10, :cond_5

    iget-object v10, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v11, v10, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMagnificationConnectionManager:Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;

    iget v10, v10, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mDisplayId:I

    iget-object v12, v11, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v11, v11, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager;->mWindowMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;

    const/4 v11, 0x0

    if-nez v10, :cond_2

    monitor-exit v12

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    move v14, v11

    :goto_0
    if-ge v11, v13, :cond_4

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-virtual {v3, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, v10, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$WindowMagnifier;->mBounds:Landroid/graphics/Rect;

    float-to-int v15, v15

    float-to-int v5, v5

    invoke-virtual {v6, v15, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v14, v14, 0x1

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v11, v14

    :goto_1
    if-lez v11, :cond_5

    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mObservePanningScalingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$PanningScalingGestureState;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    goto :goto_4

    :goto_2
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    const/16 v5, 0x69

    if-ne v1, v5, :cond_7

    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    sget-boolean v4, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->DEBUG_DETECTING:Z

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/server/accessibility/magnification/MagnificationGestureHandler;->mLogTag:Ljava/lang/String;

    const-string/jumbo v5, "onTripleTap()"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->toggleMagnification(FF)V

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Magnification"

    invoke-static {v3}, Landroid/view/accessibility/A11yLogger;->createDimension(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "A11Y9004"

    invoke-static {v1, v4, v3}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_7
    const/16 v5, 0x6a

    if-ne v1, v5, :cond_8

    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->onTripleTapAndHold(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_8
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mMotionEventDispatcherDelegate:Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;

    invoke-virtual {v1, v8, v9, v4}, Lcom/android/server/accessibility/magnification/MotionEventDispatcherDelegate;->sendDelayedMotionEvents(JLjava/util/List;)V

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    goto :goto_4

    :cond_9
    iget-object v1, v7, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;

    iget-object v3, v1, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$DelegatingState;

    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler;->transitionTo(Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$State;)V

    :cond_a
    :goto_4
    invoke-virtual {v2}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->clear()V

    iget-boolean v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mProcessMotionEvent:Z

    if-nez v1, :cond_d

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    return-void

    :cond_b
    const/4 v1, 0x3

    if-ne v2, v1, :cond_d

    iget v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    const/4 v4, 0x1

    add-int/2addr v1, v4

    iput v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mCancelledMatcherSize:I

    iget-object v2, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mGestureMatchers:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_d

    iget-object v1, v0, Lcom/android/server/accessibility/magnification/GesturesObserver;->mListener:Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;

    sget-boolean v2, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->DBG:Z

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onGestureCancelled:  event = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "MagnificationGesturesObserver"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v1}, Lcom/android/server/accessibility/magnification/MagnificationGesturesObserver;->notifyDetectionCancel()V

    invoke-virtual {v0}, Lcom/android/server/accessibility/magnification/GesturesObserver;->clear$1()V

    :cond_d
    return-void
.end method
