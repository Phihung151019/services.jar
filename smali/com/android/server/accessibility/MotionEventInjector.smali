.class public final Lcom/android/server/accessibility/MotionEventInjector;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field public static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field public mDownTime:J

.field public final mHandler:Landroid/os/Handler;

.field public mIsDestroyed:Z

.field public mLastScheduledEventTime:J

.field public mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field public mNumLastTouchPoints:I

.field public mOpenTouchGestureInProgress:Z

.field public final mSequencesInProgress:Landroid/util/IntArray;

.field public mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field public final mStrokeIdToPointerId:Landroid/util/SparseIntArray;

.field public final mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/accessibility/AccessibilityTraceManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    new-instance v1, Landroid/util/IntArray;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    return-void
.end method

.method public static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final cancelAnyPendingInjectedEvents()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelInjectedGestureInProgress()V

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelInjectedGestureInProgress()V

    :cond_1
    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final cancelInjectedGestureInProgress()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v6, 0x3

    move-wide v4, v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    const/high16 v0, 0x400a0000    # 2.15625f

    invoke-virtual {v1, p0, p0, v0}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_0
    return-void
.end method

.method public final clearEvents(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_0
    return-void
.end method

.method public final getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    new-array v1, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const-string/jumbo v4, "MotionEventInjector"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v3, :cond_27

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    iget-object v1, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v13, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v14, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v1, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-ne v1, v9, :cond_0

    move v15, v9

    goto :goto_0

    :cond_0
    move v15, v8

    :goto_0
    iget-boolean v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v12, v13, v8}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 p1, v10

    goto/16 :goto_1b

    :catch_0
    const-string/jumbo v0, "Null pointer exception in injectEventsMainThread"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error sending status with mIsDestroyed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v1, :cond_2

    invoke-virtual {v0, v12, v13, v8}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    goto :goto_1

    :cond_2
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v8

    goto :goto_3

    :cond_4
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move v2, v8

    :goto_2
    iget v3, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v2, v3, :cond_3

    iget-object v3, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v3, :cond_5

    move v1, v9

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_10

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-ne v12, v2, :cond_f

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v2, :cond_f

    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v2, :cond_6

    goto/16 :goto_8

    :cond_6
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/GestureDescription$GestureStep;

    move v3, v8

    move v5, v3

    :goto_4
    iget v6, v2, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v3, v6, :cond_c

    iget-object v6, v2, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v6, v6, v3

    iget-boolean v7, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v7, :cond_b

    iget-object v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v9, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    const/4 v8, -0x1

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v8, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t continue gesture due to unknown continued stroke id in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_7
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v9, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v9, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    invoke-static {v7, v8, v9}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v7

    if-gez v7, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t continue gesture due continued gesture id of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not matching any previous strokes in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_8
    iget-object v8, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v8, v8, v7

    iget-boolean v9, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v9, :cond_a

    iget v9, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    move/from16 p1, v1

    iget v1, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v1, v9, v1

    if-nez v1, :cond_a

    iget v1, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v9, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    iget v1, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v1, v8, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    goto :goto_6

    :cond_a
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t continue gesture due to points mismatch between "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    move/from16 p1, v1

    :goto_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p1

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_c
    move/from16 p1, v1

    const/4 v1, 0x0

    :goto_7
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge v1, v2, :cond_e

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v2, :cond_d

    add-int/lit8 v5, v5, -0x1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    :goto_8
    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    goto/16 :goto_1

    :cond_10
    move/from16 p1, v1

    :goto_9
    if-nez p1, :cond_11

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    :cond_11
    iput-object v12, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-nez v1, :cond_12

    move-wide/from16 v18, v8

    goto :goto_a

    :cond_12
    iget-wide v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    move-wide/from16 v18, v1

    :goto_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v2

    const/4 v3, 0x0

    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/GestureDescription$GestureStep;

    iget v5, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    array-length v6, v2

    if-le v5, v6, :cond_14

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_13
    move-wide/from16 v23, v8

    move-object/from16 p1, v10

    move-object v8, v1

    goto/16 :goto_18

    :cond_14
    iget-object v6, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-object/from16 p1, v1

    move-object v7, v2

    iget-wide v1, v4, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v1, v18, v1

    move-object/from16 v20, v6

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    move-wide/from16 v21, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v1, v5, :cond_18

    move/from16 v23, v1

    iget v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move/from16 v24, v2

    aget-object v2, v20, v23

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v6, v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v1

    if-ltz v1, :cond_17

    aget-object v1, v6, v1

    iget v2, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    move/from16 v25, v2

    aget-object v2, v20, v23

    move/from16 v26, v3

    iget v3, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v3, v25, v3

    if-nez v3, :cond_16

    iget v3, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    move/from16 v25, v3

    iget v3, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v3, v25, v3

    if-eqz v3, :cond_15

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    goto :goto_e

    :cond_16
    :goto_d
    const/4 v3, 0x1

    :goto_e
    or-int v3, v24, v3

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    move v2, v3

    goto :goto_f

    :cond_17
    move/from16 v26, v3

    move/from16 v2, v24

    :goto_f
    add-int/lit8 v1, v23, 0x1

    move/from16 v3, v26

    goto :goto_c

    :cond_18
    move/from16 v24, v2

    move/from16 v26, v3

    if-eqz v24, :cond_19

    iget-wide v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    move v3, v5

    const/4 v5, 0x2

    move-object/from16 v20, v7

    iget v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-wide/from16 v23, v8

    move-object/from16 v8, p1

    move-object v9, v4

    move-object/from16 p1, v10

    move v10, v3

    move-wide/from16 v3, v21

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_19
    move-object/from16 v20, v7

    move-wide/from16 v23, v8

    move-object/from16 v8, p1

    move-object v9, v4

    move-object/from16 p1, v10

    move v10, v5

    :goto_10
    iget-object v1, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v2, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v3, v18, v2

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v10, :cond_1f

    aget-object v5, v1, v2

    iget-boolean v7, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v7, :cond_1a

    iget v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-static {v6, v7, v5}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v21

    if-gez v21, :cond_1b

    :cond_1a
    move-object/from16 v22, v1

    move/from16 v25, v2

    goto :goto_14

    :cond_1b
    iget v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v5, 0x1

    if-ne v7, v5, :cond_1c

    const/4 v5, 0x1

    goto :goto_12

    :cond_1c
    const/4 v5, 0x6

    :goto_12
    shl-int/lit8 v22, v21, 0x8

    or-int v5, v5, v22

    move-object/from16 v22, v1

    move/from16 v25, v2

    iget-wide v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v1, v21

    :goto_13
    iget v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1d

    aget-object v2, v6, v1

    iget-object v5, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v1, v1, 0x1

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    goto :goto_13

    :cond_1d
    iput v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v2, :cond_1e

    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    :cond_1e
    :goto_14
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v1, v22

    goto :goto_11

    :cond_1f
    iget-object v1, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v2, v9, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long v3, v18, v2

    invoke-virtual {v0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v6

    const/4 v9, 0x0

    :goto_15
    if-ge v9, v10, :cond_23

    aget-object v2, v1, v9

    iget-boolean v5, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v5, :cond_22

    iget v5, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v7, v5, 0x1

    iput v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v5, v6, v5

    invoke-virtual {v5, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    iget v7, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v5, 0x1

    if-ne v7, v5, :cond_20

    const/4 v2, 0x0

    goto :goto_16

    :cond_20
    const/4 v2, 0x5

    :goto_16
    if-nez v2, :cond_21

    iput-wide v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    :cond_21
    shl-int/lit8 v5, v9, 0x8

    or-int/2addr v5, v2

    move-object/from16 v21, v1

    iget-wide v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_22
    move-object/from16 v21, v1

    :goto_17
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, v21

    goto :goto_15

    :cond_23
    add-int/lit8 v3, v26, 0x1

    move-object/from16 v10, p1

    move-object v1, v8

    move-object/from16 v2, v20

    move-wide/from16 v8, v23

    goto/16 :goto_b

    :goto_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v13, v1}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    goto :goto_1b

    :cond_24
    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v13}, Landroid/util/IntArray;->add(I)V

    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2, v14}, Landroid/view/MotionEvent;->setDisplayId(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-ne v1, v3, :cond_25

    move v3, v5

    goto :goto_1a

    :cond_25
    const/4 v3, 0x0

    :goto_1a
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v3, v15, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long v5, v5, v23

    const-wide/16 v9, 0x0

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_26
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v5, 0x1

    return v5

    :cond_27
    move v5, v9

    if-eq v2, v5, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown message: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-static {v0, v1, v4}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/16 v17, 0x0

    return v17

    :cond_28
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    iget v3, v1, Landroid/os/Message;->arg2:I

    if-ne v3, v5, :cond_29

    const/high16 v3, 0x400a0000    # 2.15625f

    goto :goto_1c

    :cond_29
    const/high16 v3, 0x40020000    # 2.03125f

    :goto_1c
    invoke-virtual {v0, v2, v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2a

    iget-object v1, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    iget-object v0, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v0, v6}, Landroid/util/IntArray;->remove(I)V

    :cond_2a
    return v5
.end method

.method public final notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .locals 1

    const-string/jumbo v0, "MotionEventInjector"

    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "Null pointer exception in notifyService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error sending motion event injection status to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v6, p7

    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v6, :cond_1

    :cond_0
    new-array v1, v6, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v1, v2

    :goto_0
    if-ge v1, v6, :cond_1

    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v6, :cond_3

    :cond_2
    new-array v1, v6, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_3

    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    if-ge v1, v6, :cond_7

    iget-object v3, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v4, p6, v1

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v5, :cond_6

    move v3, v2

    :cond_4
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v4

    if-ltz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    move v3, v4

    :cond_5
    iget-object v4, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v5, p6, v1

    iget v5, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    sget-object v4, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v1

    iput v3, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v2, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    sget-object v3, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v3, v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->size:F

    aget-object v4, p6, v1

    iget v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v4, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v4, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    sget-object v7, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v8, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/16 v15, 0x1002

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    const-wide/16 v1, 0x3000

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mTrace:Lcom/android/server/accessibility/AccessibilityTraceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "MotionEventInjector.onMotionEvent"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public final sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result p2

    const/16 p3, 0x1002

    if-ne p2, p3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    iput-boolean p3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-eq p2, p3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenTouchGestureInProgress:Z

    :cond_2
    return-void
.end method
