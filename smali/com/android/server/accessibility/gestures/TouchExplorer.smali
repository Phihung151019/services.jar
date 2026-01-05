.class public Lcom/android/server/accessibility/gestures/TouchExplorer;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mContext:Landroid/content/Context;

.field public mDetermineUserIntentTimeout:I

.field public final mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

.field public final mDisplayId:I

.field public final mDoubleTapSlop:I

.field public mDraggingPointerId:I

.field public final mEdgeSwipeHeightPixels:F

.field public final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

.field public mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

.field public final mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

.field public final mHandler:Landroid/os/Handler;

.field public final mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

.field public final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

.field public final mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

.field public final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

.field public final mState:Lcom/android/server/accessibility/gestures/TouchState;

.field public mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

.field public final mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "TouchExplorer"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/gestures/GestureManifold;Landroid/os/Handler;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Lcom/android/server/accessibility/gestures/TouchState;

    invoke-direct {v1, v0, p2}, Lcom/android/server/accessibility/gestures/TouchState;-><init>(ILcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v0, v1, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    new-instance v0, Lcom/android/server/accessibility/gestures/EventDispatcher;

    iget-object v2, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-direct {v0, p1, p2, v2, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/EventStreamTransformation;Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->ydpi:F

    const v0, 0x40228f5c    # 2.54f

    div-float/2addr p2, v0

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    iput-object p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {p2, p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    const/4 p4, 0x1

    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;I)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;I)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    iget p4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v0, 0x400

    invoke-direct {p2, p0, v0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    new-instance p2, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v0, 0x200000

    invoke-direct {p2, p0, v0, p4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/gestures/TouchExplorer;II)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    if-nez p3, :cond_0

    new-instance p2, Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-direct {p2, p1, p0, v1}, Lcom/android/server/accessibility/gestures/GestureManifold;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/TouchExplorer;Lcom/android/server/accessibility/gestures/TouchState;)V

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    :goto_0
    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    return-void
.end method

.method public static checkForMalformedEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-ltz v4, :cond_0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid coordinates: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Encountered exception getting details of pointer "

    const-string v4, " / "

    invoke-static {v0, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid pointer count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear(ILandroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x0

    move v3, v2

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_1

    invoke-virtual {p2, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v4, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    const/4 v5, 0x1

    shl-int v10, v5, v2

    iget v2, v4, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v2, v10

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v2

    iget-object v6, v4, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    not-int p1, v10

    and-int/2addr p1, v3

    move v3, p1

    goto :goto_1

    :cond_0
    move v4, p1

    move-object v5, p2

    :goto_1
    add-int/lit8 v9, v9, 0x1

    move p1, v4

    move-object p2, v5

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    iget-object p2, p1, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object p2, p2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    iput v0, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    iput v8, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    iput v8, v1, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void
.end method

.method public final clearEvents(I)V
    .locals 2

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1, v0}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    return-void
.end method

.method public final computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v3, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    iget v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v4

    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    iget-object v3, v3, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointers:[Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;

    aget-object v3, v3, v5

    iget-wide v5, v3, Lcom/android/server/accessibility/gestures/TouchState$PointerDownInfo;->mTime:J

    const/4 v3, 0x1

    new-array v12, v3, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v7, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v12, v8

    iput v2, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v4, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    new-array v11, v3, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v11, v8

    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    iput v0, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v20

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-wide v7, v5

    invoke-static/range {v5 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Landroid/view/MotionEvent;->setDownTime(J)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    iput v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    move-result v1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->getDistanceToClosestEdge(FF)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    return-void
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dispatching gesture event:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "TouchExplorer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(Landroid/accessibilityservice/AccessibilityGestureEvent;Z)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getDistanceToClosestEdge(FF)F
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-long v0, v0

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v2, p0

    long-to-float p0, v0

    sub-float/2addr p0, p1

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    move p1, p2

    :cond_1
    long-to-float p0, v2

    sub-float/2addr p0, p2

    cmpl-float p2, p1, p0

    if-lez p2, :cond_2

    return p0

    :cond_2
    return p1
.end method

.method public final handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTouchInteractionInProgress:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    shl-int v0, v2, v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-boolean v1, v1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iput p3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iput p3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    iget-object v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    int-to-long v3, v0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, -0x1

    move-object v7, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_1

    :cond_2
    move-object v7, p2

    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->run()V

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_1

    :cond_3
    move-object v7, p2

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-boolean p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move/from16 v3, p3

    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-boolean v6, v7, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    if-eqz v6, :cond_0

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8, v1, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_17

    iget v10, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    const/4 v12, 0x3

    const/4 v13, 0x2

    const-string/jumbo v15, "TouchExplorer"

    iget-object v11, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    iget-object v14, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    if-eq v6, v13, :cond_c

    iget-boolean v4, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz v4, :cond_a

    iget-boolean v4, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-eqz v4, :cond_18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v12, :cond_18

    iget-object v4, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-long v4, v4

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    sget-boolean v12, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-ge v6, v8, :cond_2

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v8

    long-to-float v13, v4

    iget v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mEdgeSwipeHeightPixels:F

    sub-float/2addr v13, v9

    cmpg-float v9, v8, v13

    if-gez v9, :cond_1

    if-eqz v12, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "The pointer is not on the bottom edge"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v12, :cond_3

    const-string/jumbo v2, "Three-finger edge swipe detected."

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v2, :cond_4

    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object v4, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v10, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    invoke-virtual {v14}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v11, v3, v1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    return-void

    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iget-object v8, v11, Lcom/android/server/accessibility/gestures/EventDispatcher;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v4, v8, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    iget v4, v4, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    if-eq v2, v4, :cond_6

    const-string v2, "EventDispatcher"

    const-string/jumbo v4, "The pointer count doesn\'t match the received count."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    :goto_1
    move-object v6, v2

    goto :goto_3

    :cond_6
    new-array v4, v2, [Landroid/view/MotionEvent$PointerCoords;

    new-array v5, v2, [Landroid/view/MotionEvent$PointerProperties;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_7

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iget-object v9, v8, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v9, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v9

    iget-object v10, v8, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v10, v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v10

    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v12, v4, v6

    iput v9, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v10, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v9, v5, v6

    iput v7, v9, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v7, 0x1

    iput v7, v9, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v18

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v20

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v26

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v27

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v28

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v29

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v30

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v31

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v32

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v33

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v34

    move/from16 v23, v2

    move-object/from16 v25, v4

    move-object/from16 v24, v5

    invoke-static/range {v18 .. v34}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v2

    goto :goto_1

    :goto_3
    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v0, :cond_18

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    const/16 v17, 0x1

    shl-int v4, v17, v4

    iget v5, v8, Lcom/android/server/accessibility/gestures/TouchState;->mInjectedPointersDown:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_9

    or-int/2addr v4, v2

    const/4 v10, 0x0

    invoke-virtual {v11, v10, v9}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeInjectionAction(II)I

    move-result v3

    iget-object v7, v8, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    move/from16 v5, p3

    move-object v2, v11

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    move v3, v5

    move-object v5, v6

    move-object v6, v2

    move v2, v4

    goto :goto_6

    :cond_9
    move-object v5, v6

    move-object v6, v11

    const/4 v10, 0x0

    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object v11, v6

    move-object v6, v5

    goto :goto_4

    :cond_a
    move-object v6, v11

    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v2, :cond_b

    new-instance v2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object v4, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v10, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_b
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    return-void

    :cond_c
    move-object v6, v11

    const/16 v16, 0x0

    iget-boolean v9, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz v9, :cond_d

    iget-boolean v9, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-nez v9, :cond_d

    goto/16 :goto_b

    :cond_d
    invoke-virtual {v8}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v8}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-boolean v8, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz v8, :cond_12

    iget-boolean v8, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-eqz v8, :cond_12

    if-gez v4, :cond_e

    goto/16 :goto_b

    :cond_e
    move/from16 v4, v16

    :goto_7
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v4, v8, :cond_12

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    const/16 v17, 0x1

    shl-int v9, v17, v8

    iget v11, v2, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v9, v11

    if-eqz v9, :cond_f

    const/4 v9, 0x1

    goto :goto_8

    :cond_f
    move/from16 v9, v16

    :goto_8
    if-nez v9, :cond_10

    const-string v9, "Invalid pointer id: "

    invoke-static {v8, v9, v15}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v2, v8}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v9

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sub-float/2addr v9, v11

    invoke-virtual {v2, v8}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v8

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sub-float/2addr v8, v11

    move v11, v13

    float-to-double v12, v9

    float-to-double v8, v8

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    iget v12, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchSlop:I

    mul-int/2addr v12, v11

    int-to-double v12, v12

    cmpg-double v8, v8, v12

    if-gez v8, :cond_11

    goto/16 :goto_b

    :cond_11
    add-int/lit8 v4, v4, 0x1

    move v13, v11

    const/4 v12, 0x3

    goto :goto_7

    :cond_12
    invoke-static {v1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-boolean v1, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v1, :cond_13

    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object v4, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/4 v6, -0x1

    invoke-direct {v1, v6, v10, v4}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_13
    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    iget v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/16 v17, 0x1

    shl-int v1, v17, v1

    iget v2, v2, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->mLastReceivedDownEdgeFlags:I

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    invoke-virtual {v0, v8}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDownEventForDrag(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    if-eqz v5, :cond_14

    move v2, v1

    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    move v3, v2

    const/4 v2, 0x0

    move-object/from16 v6, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    move v2, v3

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x2

    move-object/from16 v5, p2

    move/from16 v3, p3

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :goto_9
    const/4 v0, 0x3

    goto :goto_a

    :cond_14
    move v2, v1

    move-object v4, v8

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x0

    move-object/from16 v5, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_9

    :goto_a
    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    return-void

    :cond_15
    move-object v4, v8

    iget-boolean v1, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v1, :cond_16

    new-instance v1, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v10, v2}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_16
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    invoke-virtual {v6, v3, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    return-void

    :cond_17
    invoke-virtual {v8}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v8, v1, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->addEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_18
    :goto_b
    return-void
.end method

.method public final handleActionPointerDown(ILandroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {p1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-boolean p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method public final handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-boolean v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v0, v2, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    shl-int v0, v2, v0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget v3, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    int-to-long v3, v3

    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPrototype:Ljava/lang/Object;

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mRawEvent:Ljava/lang/Object;

    iput v0, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPointerIdBits:I

    iput p3, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->mPolicyFlags:I

    iget-object p1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget p2, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    int-to-long p2, p2

    iget-object p1, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long p2, p2

    iget-object p1, p1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public final isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v5

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v6

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v7

    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result p0

    sub-float/2addr v1, v5

    sub-float/2addr v2, v6

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-nez v6, :cond_0

    cmpl-float v6, v2, v5

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v8, v1

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v6, v8

    cmpl-float v8, v6, v5

    if-lez v8, :cond_1

    div-float/2addr v1, v6

    :cond_1
    if-lez v8, :cond_2

    div-float/2addr v2, v6

    :cond_2
    sub-float/2addr v4, v7

    sub-float/2addr p1, p0

    cmpl-float p0, v4, v5

    if-nez p0, :cond_3

    cmpl-float p0, p1, v5

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v6, v4

    float-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float p0, v6

    cmpl-float v5, p0, v5

    if-lez v5, :cond_4

    div-float/2addr v4, p0

    :cond_4
    if-lez v5, :cond_5

    div-float/2addr p1, p0

    :cond_5
    mul-float/2addr v1, v4

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    const p0, 0x3f067b80

    cmpg-float p0, v2, p0

    if-gez p0, :cond_6

    return v0

    :cond_6
    :goto_0
    return v3
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 10

    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    const-string/jumbo v1, "TouchExplorer"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received A11y Event. event="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v2, 0x200000

    const/16 v3, 0x100

    if-ne v0, v3, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/16 v4, 0x400

    invoke-virtual {v6, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    invoke-virtual {v6, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_3
    :goto_0
    const v4, 0x8000

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_4
    :goto_1
    if-ge v6, v5, :cond_5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/accessibility/gestures/GestureMatcher;

    iget v8, v7, Lcom/android/server/accessibility/gestures/GestureMatcher;->mGestureId:I

    const/16 v9, 0x11

    if-ne v8, v9, :cond_4

    const-string/jumbo v8, "clear GESTURE_DOUBLE_TAP"

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v5, 0x20

    if-eq v1, v5, :cond_8

    const/16 v5, 0x80

    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_7

    if-eq v1, v4, :cond_8

    if-eq v1, v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchState;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mLastNonProxyTopFocusedDisplayId:I

    iget v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedDisplayId:I

    if-eq v1, v2, :cond_a

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->moveDisplayToTopIfAllowed(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    goto :goto_2

    :cond_8
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    :cond_9
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastTouchedWindowId:I

    :cond_a
    :goto_2
    invoke-super {p0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    sget-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    const-string/jumbo v3, "TouchExplorer"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Double tap. event="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";rawEvent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ";policyFlags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-static {v2, v4, v3}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v4, p3

    :goto_0
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    iget-boolean v7, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v7, :cond_1

    new-instance v7, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object v6, v6, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/16 v8, 0x11

    iget v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    invoke-direct {v7, v8, v9, v6}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {v0, v7}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_1
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v7, 0x200000

    invoke-virtual {v6, v7}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusNotLocked()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v0

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v7

    :goto_2
    if-nez v0, :cond_7

    const-string v0, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    iget-object v2, v6, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v6, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    if-nez v3, :cond_5

    const-string v0, "EventDispatcher"

    const-string/jumbo v1, "Unable to compute click location."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/4 v8, 0x1

    new-array v15, v8, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v9, v15, v7

    invoke-virtual {v1, v0, v9}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    new-array v0, v8, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v9, v0, v7

    iget v10, v2, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iput v10, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iput v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v21

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v23

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v24

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v25

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v17, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v9 .. v25}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    if-ne v3, v8, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    shl-int v2, v8, v1

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v1, 0x0

    move v3, v4

    move-object v4, v0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {v4, v7}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v1, 0x1

    move-object/from16 v5, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    :cond_7
    return-void
.end method

.method public final onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Double tap and hold. event="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ";rawEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ";policyFlags="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "TouchExplorer"

    invoke-static {v0, p3, p2}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    iget-object v0, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    iput v2, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    invoke-virtual {p2, p3, p1}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    iget-boolean p2, p1, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz p2, :cond_2

    new-instance p2, Landroid/accessibilityservice/AccessibilityGestureEvent;

    iget-object p1, p1, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    const/16 p3, 0x12

    iget v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDisplayId:I

    invoke-direct {p2, p3, v0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(IILjava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    :cond_2
    const/4 p1, 0x4

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)V
    .locals 4

    const-string/jumbo v0, "TouchExplorer"

    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Gesture completed. gestureEvent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onGestureCompleted() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->getGestureId()I

    move-result v1

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    if-ne v1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->isSetupWizard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "stop talkback by GESTURE_TO_STOP_TALKBACK"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mContext:Landroid/content/Context;

    const-string p1, "A11Y9006"

    invoke-static {p0, p1}, Landroid/view/accessibility/A11yLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenReaderEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v0, 0x80000

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    const/high16 v0, 0x200000

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->dispatchGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)V

    return-void
.end method

.method public final onGestureStarted()V
    .locals 4

    const-string/jumbo v0, "TouchExplorer"

    sget-boolean v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "Gesture started."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v1, "onGestureStarted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;

    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer$ExitGestureDetectionModeDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    const-wide/16 v2, 0x7d0

    iget-object v1, v1, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v3, p3

    const-string/jumbo v1, "TouchExplorer"

    const/16 v2, 0x2002

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1002

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v7, v5

    goto/16 :goto_a

    :cond_1
    :try_start_0
    invoke-static {v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V

    invoke-static {v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->checkForMalformedEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    sget-boolean v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Received event: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", policyFlags=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v7, :cond_3

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchState;->clear()V

    :cond_3
    iget-object v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    iget-object v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    invoke-static {v4}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-static {v5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    iput v3, v6, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    iget-object v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x6

    if-eqz v8, :cond_9

    if-eq v8, v10, :cond_8

    if-eq v8, v9, :cond_7

    if-eq v8, v11, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {v7, v8, v5}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    :goto_1
    if-eqz v2, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Received pointer:\n"

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ReceivedPointerTracker"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    const/4 v8, 0x4

    const/4 v12, 0x3

    iget-object v14, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/gestures/GestureManifold;

    const/4 v15, 0x2

    if-eqz v7, :cond_b

    goto/16 :goto_3

    :cond_b
    iget v7, v6, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v7, v8, :cond_c

    goto/16 :goto_3

    :cond_c
    if-ne v7, v12, :cond_d

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v7, v13}, Landroid/graphics/Region;->contains(II)Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v7, v13}, Landroid/graphics/Region;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_3

    :cond_e
    iget-object v7, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget v7, v7, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v7, :cond_f

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v14}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    :cond_f
    iget-boolean v7, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mSendMotionEventsEnabled:Z

    if-eqz v7, :cond_10

    iget-object v7, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mEvents:Ljava/util/List;

    invoke-static {v5}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v7, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v8, :cond_14

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v16

    check-cast v11, Lcom/android/server/accessibility/gestures/GestureMatcher;

    iget v9, v11, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    if-eq v9, v12, :cond_13

    const-string v9, "GestureManifold"

    if-eqz v2, :cond_11

    invoke-virtual {v11}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v11, v4, v5, v3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    if-eqz v2, :cond_12

    invoke-virtual {v11}, Lcom/android/server/accessibility/gestures/GestureMatcher;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget v9, v11, Lcom/android/server/accessibility/gestures/GestureMatcher;->mState:I

    if-ne v9, v15, :cond_13

    goto/16 :goto_9

    :cond_13
    const/4 v9, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x6

    goto :goto_2

    :cond_14
    :goto_3
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v12, :cond_15

    invoke-virtual {v0, v3, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    return-void

    :cond_15
    iget v2, v6, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-nez v2, :cond_17

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_16

    goto/16 :goto_9

    :cond_16
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_17
    const/4 v7, 0x1

    if-ne v2, v7, :cond_18

    move/from16 v17, v7

    goto :goto_4

    :cond_18
    const/16 v17, 0x0

    :goto_4
    iget-object v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    if-eqz v17, :cond_1e

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_1d

    if-eq v1, v7, :cond_1c

    if-eq v1, v15, :cond_1b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x6

    if-eq v1, v2, :cond_19

    goto/16 :goto_9

    :cond_19
    iget-boolean v0, v6, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_40

    invoke-virtual {v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    :cond_1a
    invoke-virtual {v0, v3, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(ILandroid/view/MotionEvent;)V

    return-void

    :cond_1b
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1c
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionDown(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_1e
    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v7

    if-eqz v7, :cond_2b

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v7, 0x1

    if-eq v1, v7, :cond_29

    if-eq v1, v15, :cond_20

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1f

    goto/16 :goto_9

    :cond_1f
    invoke-virtual {v0, v3, v5}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionPointerDown(ILandroid/view/MotionEvent;)V

    return-void

    :cond_20
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v2

    shl-int v6, v7, v2

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    if-eq v9, v7, :cond_28

    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;

    if-eq v9, v15, :cond_23

    iget-boolean v1, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz v1, :cond_21

    goto/16 :goto_9

    :cond_21
    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    goto :goto_5

    :cond_22
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    :goto_5
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_23
    iget-boolean v9, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz v9, :cond_24

    iget-boolean v9, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-nez v9, :cond_24

    goto/16 :goto_9

    :cond_24
    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->isPending()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-virtual {v7}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    invoke-virtual {v6}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendHoverExitDelayed;->cancel()V

    :cond_25
    if-gez v8, :cond_26

    goto/16 :goto_9

    :cond_26
    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v6

    invoke-virtual {v5, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/TouchState$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    invoke-virtual {v5, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v6, v6

    float-to-double v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    iget v6, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    int-to-double v6, v6

    cmpl-double v1, v1, v6

    if-lez v1, :cond_27

    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionMoveStateTouchInteracting(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_27
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void

    :cond_28
    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x7

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_29
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->handleActionUp(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void

    :cond_2a
    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    invoke-virtual {v0, v3}, Lcom/android/server/accessibility/gestures/TouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    return-void

    :cond_2b
    iget v5, v6, Lcom/android/server/accessibility/gestures/TouchState;->mState:I

    if-ne v5, v12, :cond_2c

    const/4 v7, 0x1

    goto :goto_6

    :cond_2c
    const/4 v7, 0x0

    :goto_6
    const/4 v9, -0x1

    const/high16 v10, 0x200000

    if-eqz v7, :cond_3c

    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz v2, :cond_2d

    iget-boolean v2, v14, Lcom/android/server/accessibility/gestures/GestureManifold;->mTwoFingerPassthroughEnabled:Z

    if-nez v2, :cond_2d

    goto/16 :goto_9

    :cond_2d
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-virtual {v4, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v9, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Event: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_7

    :cond_2e
    iget v2, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const/4 v7, 0x1

    shl-int v13, v7, v2

    move v2, v13

    :goto_7
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    if-eq v5, v7, :cond_39

    if-eq v5, v15, :cond_33

    const/4 v7, 0x5

    if-eq v5, v7, :cond_30

    const/4 v7, 0x6

    if-eq v5, v7, :cond_2f

    goto/16 :goto_9

    :cond_2f
    iput v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    move-object v0, v1

    const/4 v1, 0x1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_30
    iget v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-eq v0, v9, :cond_31

    move-object v0, v1

    const/4 v1, 0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    move-object v7, v0

    goto :goto_8

    :cond_31
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v3, p3

    move-object v7, v1

    :goto_8
    iget-boolean v0, v6, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_32

    invoke-virtual {v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    :cond_32
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    invoke-virtual {v7, v3, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    return-void

    :cond_33
    move-object/from16 v5, p2

    move-object v7, v1

    iget v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v9, :cond_34

    goto/16 :goto_9

    :cond_34
    iget-boolean v1, v6, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v1, :cond_35

    invoke-virtual {v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_40

    if-eq v1, v15, :cond_37

    iget-boolean v1, v6, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v1, :cond_36

    invoke-virtual {v8, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    return-void

    :cond_36
    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    iput v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x1

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v3, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    return-void

    :cond_37
    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->computeDraggingPointerIdIfNeeded(Landroid/view/MotionEvent;)V

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x2

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_38
    move-object/from16 v4, p1

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/android/server/accessibility/gestures/TouchState;->setState(I)V

    iput v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    invoke-static {v4}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x1

    move-object/from16 v5, p2

    move/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {v7, v3, v4}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendDownForAllNotInjectedPointers(ILandroid/view/MotionEvent;)V

    return-void

    :cond_39
    move-object v7, v1

    invoke-static {v4}, Lcom/android/server/accessibility/gestures/GestureUtils;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v5, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    if-ne v1, v5, :cond_3a

    iput v9, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/4 v1, 0x1

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_3a
    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    invoke-virtual {v7, v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    return-void

    :cond_3b
    const-string v2, "Dragging state can be reached only if two pointers are already down"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    return-void

    :cond_3c
    const/4 v7, 0x4

    if-ne v5, v7, :cond_3f

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3d

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, -0x1

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    return-void

    :cond_3d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, -0x1

    iget-object v1, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-virtual {v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    iget-object v0, v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    iput v9, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerId:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaX:I

    iput v1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mLongPressingPointerDeltaY:I

    invoke-virtual {v0, v10}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    return-void

    :cond_3e
    const-string v2, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    return-void

    :cond_3f
    move-object/from16 v7, p2

    const/4 v9, 0x5

    if-ne v5, v9, :cond_41

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-boolean v0, v6, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGestures:Z

    if-eqz v0, :cond_40

    invoke-virtual {v8, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendMotionEventToListeningServices(Landroid/view/MotionEvent;)Z

    :cond_40
    :goto_9
    return-void

    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Illegal state: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->clear(ILandroid/view/MotionEvent;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring malformed event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :goto_a
    invoke-super/range {p0 .. p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iget-object v5, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v3

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->this$0:Lcom/android/server/accessibility/gestures/TouchExplorer;

    iget v4, v1, Lcom/android/server/accessibility/gestures/TouchExplorer$SendAccessibilityEventDelayed;->mDelay:I

    int-to-long v6, v4

    iget-object v2, v2, Lcom/android/server/accessibility/gestures/TouchExplorer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v6, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v2, 0xa

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public final sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isTouchExploring()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v7, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    iget-object v8, v0, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    const/16 v4, 0x9

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/accessibility/gestures/EventDispatcher;->sendMotionEvent(IIILandroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDispatcher:Lcom/android/server/accessibility/gestures/EventDispatcher;

    iput-object p1, v0, Lcom/android/server/accessibility/gestures/EventDispatcher;->mReceiver:Lcom/android/server/accessibility/EventStreamTransformation;

    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public final setServiceDetectsGestures(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/android/server/accessibility/gestures/TouchExplorer;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "serviceDetectsGestures: "

    const-string/jumbo v1, "TouchState"

    invoke-static {v0, v1, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/TouchState;->mServiceDetectsGesturesRequested:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "TouchExplorer { mTouchState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetermineUserIntentTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDoubleTapSlop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDoubleTapSlop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDraggingPointerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mDraggingPointerId:I

    const-string v1, " }"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
