.class public final Lcom/android/server/accessibility/gestures/EventDispatcher;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mLongPressingPointerDeltaX:I

.field public mLongPressingPointerDeltaY:I

.field public mLongPressingPointerId:I

.field public mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

.field public final mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public final mTempPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    iput-object p4, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    return-void
.end method


# virtual methods
.method public final computeClickLocation(Landroid/graphics/Point;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    invoke-virtual {v2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method public final computeInjectionAction(II)I
    .locals 1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    const/4 v0, 0x5

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    return p1

    :cond_1
    shl-int/lit8 p0, p2, 0x8

    or-int/2addr p0, v0

    return p0

    :cond_2
    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0
.end method

.method public final sendAccessibilityEvent(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Sending accessibility event"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventDispatcher"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    const/16 v0, 0x200

    if-eq p1, v0, :cond_6

    const/16 v0, 0x400

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_4

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x100000

    if-eq p1, v0, :cond_2

    const/high16 v0, 0x200000

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    return-void

    :cond_4
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void

    :cond_6
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void
.end method

.method public final sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    const/4 v6, 0x1

    shl-int v4, v6, v4

    iget v6, v5, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_0

    move-object v7, p0

    move v10, p1

    move-object v11, p2

    goto :goto_1

    :cond_0
    or-int v9, v3, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v8

    iget-object v12, v5, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    move-object v7, p0

    move v10, p1

    move-object v11, p2

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    move v3, v9

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object p0, v7

    move p1, v10

    move-object p2, v11

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v3, v1}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v4, -0x1

    const-string v5, "EventDispatcher"

    if-ne v2, v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    :goto_1
    move-wide v8, v6

    goto :goto_2

    :cond_1
    iget-wide v6, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_1

    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    new-array v14, v1, [Landroid/view/MotionEvent$PointerProperties;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    new-array v15, v1, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    move v6, v1

    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v6, v7, :cond_2

    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    aput-object v7, v15, v6

    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    invoke-virtual {v2, v6, v7}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aput-object v7, v14, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v17

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v18

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v19

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v21

    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getSource()I

    move-result v22

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v23

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v24

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getClassification()I

    move-result v25

    const/16 v20, -0x1

    invoke-static/range {v8 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    iget v6, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    if-ltz v6, :cond_6

    iget v7, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    neg-int v7, v7

    iget v8, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    neg-int v8, v8

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    invoke-static {v9}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v16

    invoke-static {v9}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v17

    :goto_4
    if-ge v1, v9, :cond_5

    aget-object v10, v16, v1

    invoke-virtual {v2, v1, v10}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v10, v17, v1

    invoke-virtual {v2, v1, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-ne v1, v6, :cond_4

    aget-object v10, v17, v1

    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    int-to-float v12, v7

    add-float/2addr v11, v12

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    int-to-float v12, v8

    add-float/2addr v11, v12

    iput v11, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v10

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v18

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v22

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v23

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getSource()I

    move-result v24

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v25

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v26

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    invoke-static/range {v10 .. v26}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    :cond_6
    :goto_5
    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v1, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Injecting event: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", policyFlags=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/high16 v6, 0x40000000    # 2.0f

    or-int v6, p3, v6

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_8

    move-object/from16 v7, p5

    invoke-interface {v0, v2, v7, v6}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_6

    :cond_8
    const-string v0, "Error sending event: no receiver specified."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    const/4 v6, 0x1

    shl-int v5, v6, v5

    if-eqz v0, :cond_f

    if-eq v0, v6, :cond_e

    const/4 v6, 0x5

    if-eq v0, v6, :cond_f

    const/4 v6, 0x6

    if-eq v0, v6, :cond_e

    const/4 v5, 0x7

    if-eq v0, v5, :cond_c

    const/16 v5, 0x9

    if-eq v0, v5, :cond_c

    const/16 v5, 0xa

    if-eq v0, v5, :cond_9

    goto :goto_7

    :cond_9
    iget-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_a
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    iget-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_b
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_7

    :cond_c
    iget-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_d
    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    goto :goto_7

    :cond_e
    iget v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    not-int v5, v5

    and-int/2addr v0, v5

    iput v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    if-nez v0, :cond_10

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    goto :goto_7

    :cond_f
    iget v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    or-int/2addr v0, v5

    iput v0, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedDownEventTime:J

    :cond_10
    :goto_7
    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Injected pointer:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TouchState"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    if-eq v2, v3, :cond_12

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_12
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendMotionEvent: Failed to split motion event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "=========================\nDown pointers #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    shl-int/2addr v2, v1

    iget v3, p0, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "]\n========================="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
